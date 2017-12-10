package com.favendo.useradmin.validation.jsr;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.*;

@Target({ElementType.TYPE, ElementType.FIELD, ElementType.ANNOTATION_TYPE})
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = EmailValidator.class)
@Documented
public @interface ValidEmail {
    String message() default "Please provide a valid email address";
    Class<?>[] groups() default {};
    Class<? extends Payload>[] payload() default {};
}
