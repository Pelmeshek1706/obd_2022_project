package com.example.demo.model.CountriesTables;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Entity
//@Data
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Currency {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "currency_name")
    private String currencyName;

    @OneToMany(mappedBy = "currency",cascade = CascadeType.ALL)
    @JsonManagedReference
    private Set<Countries> countriesList;
}
