package com.baizhi.service;

import com.baizhi.dao.UserDao;
import com.baizhi.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class UserServiceImpl implements  UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public void save(User user) {
        user.setId(UUID.randomUUID().toString());
        userDao.save(user);
    }

    @Override
    public List<User> queryAll() {
        return userDao.queryAll();
    }
}

