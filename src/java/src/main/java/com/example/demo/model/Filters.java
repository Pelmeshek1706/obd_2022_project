package com.example.demo.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Data
@EqualsAndHashCode()
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Filters {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "filter_name")
    private String filterName;
    @Column(name = "filter_count")
    private int filterCount;
}
