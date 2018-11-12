package com.baizhi.dao;

import com.baizhi.entity.User;

import java.util.List;

public interface UserDao {
   void save(User user);
    List<User> queryAll();
}
