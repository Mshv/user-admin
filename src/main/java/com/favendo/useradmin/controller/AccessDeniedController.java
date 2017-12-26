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
public class AccessDeniedController {

    @RequestMapping(value="/accessDenied" , method = RequestMethod.GET)
    public ModelAndView accessDenied(){
        ModelAndView accessDenied = new ModelAndView("accessDenied");
        return accessDenied;

    }
}
