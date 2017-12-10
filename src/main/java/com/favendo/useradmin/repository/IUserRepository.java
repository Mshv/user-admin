package com.favendo.useradmin.repository;

import com.favendo.useradmin.domain.UserEntity;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface IUserRepository extends CrudRepository<UserEntity,Long> {

    UserEntity findFirstByUsername(String username);
}
