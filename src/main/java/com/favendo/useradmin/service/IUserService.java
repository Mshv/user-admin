package com.favendo.useradmin.service;

import com.favendo.useradmin.domain.UserEntity;

import java.util.List;

public interface IUserService {
    Long count();

    List<UserEntity> getUsers();

    void save(UserEntity createUserForm);

    UserEntity getById(Long userId);

    void update(UserEntity createUserForm);

    void deleteUser(Long userId);
}
