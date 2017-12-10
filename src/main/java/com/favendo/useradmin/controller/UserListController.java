package com.favendo.useradmin.controller;

import com.favendo.useradmin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserListController {
    @Autowired
    IUserService userService;

    @RequestMapping(value = "/admin/user/list", method = RequestMethod.GET)
    public ModelAndView welcome(){
        //2 System.out.println(userService.count());
        //3 ModelAndView index = new ModelAndView("index","userCount",userService.count());
        ModelAndView index = new ModelAndView("userList");
        index.getModel().put("userCount", userService.count());
        index.getModel().put("users", userService.getUsers());
        //1 return new ModelAndView("index");
        return index;
    }

}
