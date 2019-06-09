package andrzej.appdemo.user;

import andrzej.appdemo.utilities.UserUtilities;
import andrzej.appdemo.validators.ChangePasswordValidator;
import andrzej.appdemo.validators.EditUserProfileValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.util.Locale;

@Controller
public class ProfilController {

    @Autowired
    private UserService userService;


    @Autowired
    private MessageSource messageSource;

    /**
     * Retrieves the logged-in user's data from the database and displays it on the page profil.jsp.
     * @param model the model supply attributes used for rendering views.
     * @return the profil.jsp page with current logged-in user's data.
     */
    @GET
    @RequestMapping(value = "/profil")
    public String showUserProfilePage(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        int nrRoli = user.getRoles().iterator().next().getId();
        user.setNrRoli(nrRoli);
   ;
        model.addAttribute("user_id", user.getId());
        model.addAttribute("user", user);
        return "profil";
    }

    /**
     * Allows the user to change the password in the database.
     * @param model the model supply attributes used for rendering views.
     * @return the editpassword.jsp page which allows the user to change the password in the database.
     */

    @GET
    @RequestMapping(value = "/editpassword")
    public String editUserPassword(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        model.addAttribute("user", user);
        return "editpassword";
    }

    /**
     *
     * Checks the correctness of the new password and replaces it with the old password
     * @param user the user who changes his password
     * @param result  is Spring’s object that holds the result of the validation and binding and contains errors that may have occurred
     * @param model the model supply attributes used for rendering views.
     * @param locale a Locale object represents a specific geographical, political, or cultural region.
     * @return the editpassword.jsp page with information about updated password
     */

    @POST
    @RequestMapping(value = "/updatepass")
    public String changeUSerPassword(User user, BindingResult result, Model model, Locale locale) {
        String returnPage = null;
        new ChangePasswordValidator().validate(user, result);
        new ChangePasswordValidator().checkPasswords(user.getNewPassword(), result);
        if (result.hasErrors()) {
            returnPage = "editpassword";
        } else {
            userService.updateUserPassword(user.getNewPassword(), user.getEmail());
            returnPage = "editpassword";
            model.addAttribute("message", messageSource.getMessage("passwordChange.success", null, locale));
        }
        return returnPage;
    }

    /**
     * Allows the user to change his data in the database.
     * @param model the model supply attributes used for rendering views.
     * @return the editprofil.jsp page which allows the user to change his data in the database.
     */
    @GET
    @RequestMapping(value = "/editprofil")
    public String changeUserData(Model model) {
        String username = UserUtilities.getLoggedUser();
        User user = userService.findUserByEmail(username);
        model.addAttribute("user", user);
        return "editprofil";
    }

    /**
     * Updates user data in the database if there are no validation errors
     * @param user the user who changes his data
     * @param result  is Spring’s object that holds the result of the validation and binding and contains errors that may have occurred
     * @param model the model supply attributes used for rendering views.
     * @param locale a Locale object represents a specific geographical, political, or cultural region.
     * @return the editprofil.jsp page if there was errors in BindingResult object or afteredit.jsp if user data update was successful
     */
    @POST
    @RequestMapping(value = "/updateprofil")
    public String changeUserDataAction(User user, BindingResult result, Model model, Locale locale) {
        String returnPage = null;
        new EditUserProfileValidator().validate(user, result);
        if (result.hasErrors()) {
            returnPage = "editprofil";
        } else {
            userService.updateUserProfile(user.getName(), user.getLastName(), user.getEmail(), user.getId());
            model.addAttribute("message", messageSource.getMessage("profilEdit.success", null, locale));
            returnPage = "afteredit";
        }
        return returnPage;
    }



}