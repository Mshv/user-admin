package com.favendo.useradmin.controller;

import com.favendo.useradmin.domain.UserEntity;
import com.favendo.useradmin.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserCreateController {

    @Autowired
    IUserService userService;

    private static final Logger LOGGER = LoggerFactory.getLogger(UserCreateController.class);

    @RequestMapping(value = "/admin/user/edit", method = RequestMethod.GET)
    public ModelAndView loadpage(@RequestParam(required = false) Long userId)
    {

        UserEntity modelObject = userId == null ?  new UserEntity() : userService.getById(userId);
        return new ModelAndView("createUser", "createUserForm", modelObject);
    }

    // To trigger the validation process, we’ll simply annotate the object in the controller layer with the @Valid annotation:

    @RequestMapping(value = "/admin/user/edit", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("createUserForm") @Validated UserEntity createUserForm , BindingResult result){
       // return new ModelAndView("createUser", "createUserForm", new UserEntity());


        LOGGER.debug("Received request to create {}, with result={}", createUserForm, result);

        //not good
/*        if (!createUserForm.getPassword().equals(createUserForm.getConfirmPassword())) {
            LOGGER.debug("Password Mismatch");
            result.reject("user.error.password.no_match");
            return "createUser";
        }*/

        if (result.hasErrors()) {
            return "createUser";
        }
        try {
            if(createUserForm.getId() == null) {
                userService.save(createUserForm);
            }else {
                userService.update(createUserForm);
            }

        } catch (RuntimeException e) {
            LOGGER.debug("Tried to create user", e);
            result.reject("user.error.exists");
            return "addUser";
        }
        return "redirect:/index";
    }
}
