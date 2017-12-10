package com.favendo.useradmin.controller;

import com.favendo.useradmin.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserDeleteController {
    @Autowired
    IUserService userService;

    @RequestMapping(value = "/admin/user/delete" , method = RequestMethod.GET)
    public String deleteUser(@RequestParam(required = true) Long userId){
        userService.deleteUser(userId);
        return "redirect:/";
    }
}
