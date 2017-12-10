package com.favendo.useradmin.service.impl;

import com.favendo.useradmin.domain.UserEntity;
import com.favendo.useradmin.repository.IUserRepository;
import com.favendo.useradmin.service.IUserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Component
public class UserServiceImpl implements IUserService {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    IUserRepository userRepository;

    @Override
    public Long count() {
        return userRepository.count();
    }

    @Override
    @Transactional
    public List<UserEntity> getUsers() {
        Iterable<UserEntity> all = userRepository.findAll();
        //list COllwection Iterable
        List<UserEntity> users = new ArrayList<>();
        for (UserEntity user : all) {
            users.add(user);
        }
        return users;
    }

    @Override
    @Transactional
    public void save(UserEntity user) {
        LOGGER.debug("Creating {}", user);
        userRepository.save(user);
    }

    @Override
    @Transactional(readOnly = true)
    public UserEntity getById(Long userId) {
        return userRepository.findOne(userId);
    }

    @Override
    @Transactional
    public void update(UserEntity user) {
        userRepository.save(user);
    }

    @Override
    @Transactional
    public void deleteUser(Long userId) {
        userRepository.delete(userId);
    }

    @Override
    @Transactional
    public UserEntity findUserByCurrentUserName(String currentUserName) {
        return userRepository.findFirstByUsername(currentUserName);
    }
}
