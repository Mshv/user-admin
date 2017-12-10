package com.favendo.useradmin.validation.jsr;

import com.favendo.useradmin.domain.UserEntity;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class PasswordMatchValidator implements ConstraintValidator<PasswordMatch, UserEntity> {
    @Override
    public void initialize(PasswordMatch constraintAnnotation) {

    }

    @Override
    public boolean isValid(UserEntity user, ConstraintValidatorContext context) {
        if (!user.getPassword().equals(user.getConfirmPassword())) {
            return false;
        }
        return true;
    }
}
