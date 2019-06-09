package andrzej.appdemo.user;

import andrzej.appdemo.validators.UserRegisterValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.ws.rs.GET;
import javax.ws.rs.POST;
import java.util.Locale;

@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    @Autowired
    MessageSource messageSource;

    /**
     * Creates registration form for user.
     * @param model the model to which we add the User type attribute
     * @return the register.jsp page
     */

    @GET
    @RequestMapping(value = "/register")
    public String registerForm(Model model) {
        User u = new User();
        model.addAttribute("user", u);
        return "register";
    }

    /**
     * Checks whether the user is saved in the database by comparing email addresses
     * @param user the user we are trying to save to the database
     * @param result  is Spring’s object that holds the result of the validation and binding and contains errors that may have occurred
     * @param model the model to which we add the attributes to display on JSP page
     * @param locale a Locale object represents a specific geographical, political, or cultural region.
     * @return the register.jsp page if there were errors validation errors or the index.jsp page if the new user has been registered correctly
     */

    @POST
    @RequestMapping(value = "/adduser")
    public String registerAction(User user, BindingResult result, Model model, Locale locale) {
        String returnPage = null;
        User userExist = userService.findUserByEmail(user.getEmail());
        new UserRegisterValidator().validateEmailExist(userExist, result);
        new UserRegisterValidator().validate(user, result);
        if (result.hasErrors()) {
            returnPage = "register";
        } else {
            userService.saveUser(user);
            model.addAttribute("message", messageSource.getMessage("user.register.success", null, locale));
            model.addAttribute("user", new User());
            returnPage = "index";
        }
        return returnPage;
    }
}
