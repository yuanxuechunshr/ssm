package com.baizhi.controller;

import com.alibaba.fastjson.JSON;
import com.baizhi.entity.User;
import com.baizhi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;


    @RequestMapping("/findAll")
    public String findAll(HttpServletResponse response){
        List<User> users = userService.queryAll();
        response.setCharacterEncoding("UTF-8");
      //  PrintWriter out = response.getWriter();
        String rows = JSON.toJSONString(users);


        System.out.println(rows);
        return "showAll";
    }

}
