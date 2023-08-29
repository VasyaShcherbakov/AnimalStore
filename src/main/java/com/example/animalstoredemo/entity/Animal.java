package com.example.animalstoredemo.entity;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;


@Entity
@Getter
@Setter
@ToString

public class Animal {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank(message = "Animal Name can not be Blank")
    private String name;

    private long animalFamily;

    private Boolean sale;
    @OneToOne
    private User user;
    public Animal() {
    }



}
