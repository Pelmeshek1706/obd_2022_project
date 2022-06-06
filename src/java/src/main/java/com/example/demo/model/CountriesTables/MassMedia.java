package com.example.demo.model.CountriesTables;

import lombok.*;

import javax.persistence.*;

@Entity
@Data
@EqualsAndHashCode()
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MassMedia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "name_media")
    private String nameMedia;
}
