package andrzej.appdemo.shipwar;

import andrzej.appdemo.constants.AppDemoConstants;
import andrzej.appdemo.user.User;
import andrzej.appdemo.user.UserService;
import andrzej.appdemo.utilities.UserUtilities;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.ws.rs.GET;

/**
 * @author Paweł Guzik
 */
@Controller
public class ShipwarController {


    @Autowired
    private UserService userService;

    /**
     * Takes the logged in user sets his gameId to 1 and reset variable
     * warTable which represents ships on the board then adds user to the model attributes
     * and send it to the shipwarAJAX page.
     *
     * @param model the model supply attributes used for rendering views.
     * @return JSP page with the board on which user place his ships.
     */

    @GET
    @RequestMapping(value = "/shipwar")
    public String showShipwarPage(Model model) {
        String username = UserUtilities.getLoggedUser();

        User user = userService.findUserByEmail(username);
        user.setGameId(1);
        userService.updateGameId(1, user.getId());
        userService.updateWarTable(null, user.getId());

        int nrRoli = user.getRoles().iterator().next().getId();
        user.setNrRoli(nrRoli);

        model.addAttribute("user_id", user.getId());
        model.addAttribute("user", user);
        return "shipwarAJAX";
    }

    /**
     * Takes the logged in user and
     * sets ship position in MySQL database as '1' character in 64-character String
     * which represents the board of user ships.
     *
     * @param shipPos position that the ship should take on the board.
     * @param model   the model supply attributes used for rendering views.
     */

    @GET
    @RequestMapping(value = "/updateShip")
    public synchronized void updateShip(@RequestParam(value = "id") String shipPos, Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        if (user.getGameId() != 2 && ShipwarGame.checkIfShipsPossitionIsAvalible(user)) {
            user.saveStringToWarTable(user.getDataBaseWarTable());
            saveShipPos(shipPos, user);
        }
    }

    /**
     * Checks whether the user has correctly set up the ships and tries to find enemy for current user
     * If there is an enemy ready to play, his id is assigned to logged in user and variable gameId
     * is set to 3 that means users currently playing game.
     *
     * @param model the model supply attributes used for rendering views.
     * @return the play.jsp page if users are ready to play or shipwarAJAX.jsp if ships placed on board by
     * currently logged in user are not right or waiting.jsp if there is no ready to play enemy for current user
     */
    @GET
    @RequestMapping(value = "/play")
    public String showPlayPage(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        user.saveStringToWarTable(user.getDataBaseWarTable());
        if (user.getEnemyId() != 0) {
            User enemy = userService.findUserByEnemyId(user.getId());
            findEnemy(model, user, enemy);
            return "play";
        }
        user.setGameId(2);
        userService.updateGameId(2, user.getId());
        boolean checkPositions = ShipwarGame.checkShipsPossitionsBeforeGame(user);
        if (checkPositions) {
            User enemy = userService.findEnemyByGameId(2, username);
            if (enemy != null) {
                user.setEnemyId(enemy.getId());
                userService.updateEnemyPlayer(enemy.getId(), user.getId());
                enemy.saveStringToWarTable(enemy.getDataBaseWarTable());
                if (enemy.getGameId() == 2) {
                    findEnemy(model, user, enemy);
                    userService.updateEnemyPlayer(user.getId(), enemy.getId());
                    userService.updateGameId(3, user.getId());
                    userService.updateGameId(3, enemy.getId());
                    return "play";
                }
            }
            return "waiting";
        } else {
            userService.updateWarTable(null, user.getId());
            userService.updateGameId(1, user.getId());
            return "shipwarAJAX";
        }
    }

    private void findEnemy(Model model, User user, User enemy) {
        mapWarTable(user, model, "");
        mapWarTable(enemy, model, "enemy");
        model.addAttribute("user", user.getName() + " " + user.getLastName());
        model.addAttribute("enemy", enemy.getName() + " " + enemy.getLastName());
        if (enemy.getActivePlayer() != 1) {
            user.setActivePlayer(1);
            userService.updateActivePlayer(1, user.getId());
        }
    }

    /**
     * Is responsible for the exchange of fire and setting,
     * which the opponent can actually do his round.
     * Checks if any of the opponents have destroyed all ships and if yes then
     * ends the game.
     *
     * @param shipPos position that the player is firing at
     * @param model   the model supply attributes used for rendering views.
     * @return the endGame.jsp if there are no ships left or play.jsp if the players still have ships
     */

    @GET
    @RequestMapping(value = "/shot")
    public String updateAfterEnemyshot(@RequestParam(value = "id") String shipPos, Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        User enemy = userService.getUserByIdEquals(user.getEnemyId());
        if (ShipwarGame.countShipsLeft(user) != 0) {
            ShipwarGame.setRoundAndShot(user, enemy, shipPos);
            userService.updateWarTable(enemy.getDataBaseWarTable(), enemy.getId());
        } else {
            endGameForJsp(model, user, "Twoja flota została zatopiona, przegrałeś bitwę !");
            return "endGame";
        }
        if (ShipwarGame.countShipsLeft(enemy) == 0) {
            endGameForJsp(model, user, "Zatopiłeś foltę przeciwnika, bitwa wygrana !");
            return "endGame";
        }
        mapWarTable(user, model, "");
        mapWarTable(enemy, model, "enemy");
        model.addAttribute("user", user.getName() + " " + user.getLastName());
        model.addAttribute("enemy", enemy.getName() + " " + enemy.getLastName());
        return "play";
    }

    private void endGameForJsp(Model model, User user, String s) {
        model.addAttribute("userLose", s);
        ShipwarGame.endGameMain(user, userService);
    }

    /**
     * Informs that the user has been logged out.
     *
     * @param model the model supply attributes used for rendering views.
     * @return the logout_success.jesp page with user name
     */

    @GET
    @RequestMapping(value = "/logout_success")
    public String resetPlayerDataWhenLogout(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        model.addAttribute("username", username);
        return "logout_success";
    }

    /**
     * Checks which player can make the move
     * and generates a response with this information
     * for the script on the play.jsp page
     *
     * @param model the model supply attributes used for rendering views.
     * @return the contentRefresh.jsp page with information about currently playing user
     */

    @GET
    @RequestMapping(value = "/reload")
    public String reloadActiveUser(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        User enemy = userService.getUserByIdEquals(user.getEnemyId());

        if (user.getActivePlayer() == 1) {
            model.addAttribute("activePlayer", user.getName() + " " + user.getLastName());
        } else {
            model.addAttribute("activePlayer", enemy.getName() + " " + enemy.getLastName());
        }
        return "contentRefresh";
    }

    /**
     * Saves the ship's position in the database
     * as the number 1 in the 64-character string variable.
     *
     * @param shipPos the position of the ship that will be saved to the base
     * @param user    the player for whom we save the position of the ship
     */

    private synchronized void saveShipPos(String shipPos, User user) {
        String[] warTable = user.getWarTable();
        warTable[AppDemoConstants.warTableMap.get(shipPos)] = "1";
        user.setWarTable(warTable);
        userService.updateWarTable(user.getDataBaseWarTable(), user.getId());
    }

    /**
     * Maps the table representing the location of the player's ships to the model passed
     * on the page displaying user boards
     *
     * @param user   the user whose table will be mapped
     * @param model  the model to which the user's table will be mapped
     * @param prefix variable intended to change the name of the mapped attribute in the model
     */

    private void mapWarTable(User user, Model model, String prefix) {
        String[] warTable = user.getWarTable();

        for (int i = 0; i < warTable.length; i++) {
            String attributeName = prefix + "shipPos" + i;
            model.addAttribute(attributeName, warTable[i]);
        }
    }
}

