package andrzej.appdemo.shipwar;

import andrzej.appdemo.user.User;
import andrzej.appdemo.user.UserService;

/**
 * @author Paweł Guzik
 */
public class ShipwarGame {
    /**
     * Returns true if the ship can be set on the position
     * shipPos in the String table in the User object.
     *
     * @param user the user for which we check ship position
     * @return true if the ship can be set on the position
     *      * shipPos or false otherwise.
     */
    public static boolean checkIfShipsPossitionIsAvalible(User user) {
        if (countUsedSquares(user) < 19) {
            return true;
        }
        return false;
    }

    /**
     * Calculates the number of ships placed on the board.
     * @param user the user for which we check ships number on his board.
     * @return number of ships placed on the board.
     */

    public static int countUsedSquares(User user) {
        String[] warTable = user.getWarTable();
        user.saveStringToWarTable(user.getDataBaseWarTable());
        int ships = 0;
        for (int i = 0; i < warTable.length; i++) {
            if (!warTable[i].equalsIgnoreCase("0")) {
                ships++;
            }
        }
        return ships;
    }

    /**
     * Checks whether the placement of ships on the board is consistent with the rules.
     * List of rules:
     *  - ships can only be placed horizontally
     *  - there can be only 1 four-masted, 2 three-masted, 3 two-masted, 3 one-masted ships
     * @param user the user for which we check ships positions on his board.
     * @return true if the placement of ships is right.
     */

    public static boolean checkShipsPossitionsBeforeGame(User user) {
        String[] warTable = user.getWarTable();
        user.saveStringToWarTable(user.getDataBaseWarTable());
        int ship1 = 0;
        int ship2 = 0;
        int ship3 = 0;
        int ship4 = 0;
        for (int i = 0; i < warTable.length; i++) {
            boolean isShip = warTable[i].equalsIgnoreCase("1");
            if (isShip) {
                ship1++;
                //check right side
                if (!(i == 7 || i == 15 || i == 23 || i == 31 || i == 39 || i == 47 || i == 55 || i == 63)) {
                    if (checkRightSide(warTable, i)) {
                        ship1--;
                        ship2++;
                        i++;
                        if (!(i == 7 || i == 15 || i == 23 || i == 31 || i == 39 || i == 47 || i == 55 || i == 63)) {
                            if (checkRightSide(warTable, i)) {
                                ship2--;
                                ship3++;
                                i++;
                                if (!(i == 7 || i == 15 || i == 23 || i == 31 || i == 39 || i == 47 || i == 55 || i == 63)) {
                                    if (checkRightSide(warTable, i)) {
                                        ship3--;
                                        ship4++;
                                        i++;
                                        if (!(i == 7 || i == 15 || i == 23 || i == 31 || i == 39 || i == 47 || i == 55 || i == 63)) {
                                            if (checkRightSide(warTable, i)) {
                                                ship4--;
                                                return false;
                                            }

                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if(ship1==3 && ship2 ==3 && ship3 ==2 && ship4==1){
            return true;
        }
        return false;
    }

    /**
     * Checks if the ship is on the right side for current position.
     * @param warTable the table representing the location of ships.
     * @param currentPos position for which we check presence of other ships.
     * @return true if there is a ship on the right.
     */
    private static boolean checkRightSide(String[] warTable, int currentPos){
        if(warTable[currentPos+1].equalsIgnoreCase("1")){
            return true;
        }
        return false;
    }

    /**
     * If the user is an active player then enemy  is fired
     * and if after this the enemy has ships, activePlayer's flag goes to the enemy.
     * @param user the user who shoots the enemy's ship in position ship pos
     * @param enemy the user to whom the user shoots.
     * @param shipPos place where user shoots.
     */

    public static void setRoundAndShot(User user,User enemy, String shipPos){
        user.saveStringToWarTable(user.getDataBaseWarTable());
        enemy.saveStringToWarTable(enemy.getDataBaseWarTable());
        if(user.getActivePlayer()==1) {
            enemy.getShot(shipPos);
            if(ShipwarGame.countShipsLeft(enemy) != 0) {
                user.setActivePlayer(0);
                enemy.setActivePlayer(1);
            }
        }
    }

    /**
     * Counts how many ships left after firing.
     * @param user the user for whom we check the number of ships we check
     * @return the number of ships remaining on the board.
     */

    public static int countShipsLeft(User user){
        String str = user.getDataBaseWarTable();
        int count = 0;

        for(int i=0; i < str.length(); i++)
        {    if(str.charAt(i) == '1')
            count++;
        }
        return count;

    }

    public static void endGameMain(User user, UserService userService) {
        user.setGameId(0);
        userService.updateGameId(0, user.getId());
        userService.updateWarTable(null, user.getId());
        user.setActivePlayer(0);
        userService.updateActivePlayer(0, user.getId());
        user.setEnemyId(0);
        userService.updateEnemyPlayer(0, user.getId());
    }
}


