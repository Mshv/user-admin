package com.favendo.useradmin.domain;

import com.favendo.useradmin.validation.jsr.PasswordMatch;
import com.favendo.useradmin.validation.jsr.ValidEmail;
import org.hibernate.validator.constraints.Email;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "sec_user")
@PasswordMatch
public class UserEntity {

    @Id
    @GeneratedValue
    private Long id;

    @ManyToMany
    @JoinTable(name = "sec_user_role" , joinColumns = @JoinColumn(name = "user_id") , inverseJoinColumns = @JoinColumn(name="role_id"))
    private Set<RoleEntity> roles;

    @NotNull
    @Size(min=1,max = 20)
    @Column(name = "password", nullable = false)
    private String password;

    @Transient
    @Size(min=1,max = 20)
    private String confirmPassword;

    @NotNull
    @Size(min=1,max = 20)
    @Column(name = "login", nullable = false)
    private String username;

    @NotNull
    @Size(min=1,max = 20)
    @Column(name = "first_name", nullable = false)
    private String firstName;


    @NotNull
    @Size(min=1,max = 20, message ="{user.error.lastname.size}")
    @Column(name = "last_name", nullable = false)
    private String lastName;


    @NotNull(message = "{email.notnull}")
    //@Email -  Hibernate considers the old intranet addresses format: myaddress@myserver as valid which is no good.    @Email(message = "{user.email.email}")
    @ValidEmail(message = "{user.email.valid}")
    //@Pattern(regexp="^([a-zA-Z0-9\\-\\.\\_]+)'+'(\\@)([a-zA-Z0-9\\-\\.]+)'+'(\\.)([a-zA-Z]{2,4})$", message = "{user.email.pattern}")
    @Column(name = "email", nullable = false)
    private String email;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Set<RoleEntity> getRoles() {
        return roles;
    }

    public void setRoles(Set<RoleEntity> roles) {
        this.roles = roles;
    }

    @Override
    public String toString() {
        return "UserEntity{" +
                "id=" + id +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserEntity user = (UserEntity) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(password, user.password) &&
                Objects.equals(username, user.username) &&
                Objects.equals(firstName, user.firstName) &&
                Objects.equals(lastName, user.lastName) &&
                Objects.equals(email, user.email);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, password, username, firstName, lastName, email);
    }
}
