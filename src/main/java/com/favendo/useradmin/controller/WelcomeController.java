package com.favendo.useradmin.controller;

import com.favendo.useradmin.domain.UserEntity;
import com.favendo.useradmin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {


    @Autowired
    IUserService iUserService;

    @RequestMapping(value="/" , method = RequestMethod.GET)
    public ModelAndView  welcome_login(){

        //retrieve the currently authenticated principal
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String currentUserName = authentication.getName();

        UserEntity userEntity= iUserService.findUserByCurrentUserName(currentUserName);
        ModelAndView welcome = new ModelAndView("welcome");
        welcome.getModel().put("currentUserName", currentUserName);
        welcome.getModel().put("userEntity", userEntity);

        return welcome;
    }
}
