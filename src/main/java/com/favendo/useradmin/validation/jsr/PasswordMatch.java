package com.favendo.useradmin.validation.jsr;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = PasswordMatchValidator.class)
@Documented
public @interface PasswordMatch {
    String message() default "user.error.password.no_match";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
