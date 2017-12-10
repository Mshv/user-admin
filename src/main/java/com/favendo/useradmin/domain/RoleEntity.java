package com.favendo.useradmin.domain;

import netscape.security.Privilege;

import javax.persistence.*;
import java.util.Collection;
import java.util.List;
@Entity
@Table(name = "sec_role")
public class RoleEntity {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "role_name", nullable = false)
    private String name;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
