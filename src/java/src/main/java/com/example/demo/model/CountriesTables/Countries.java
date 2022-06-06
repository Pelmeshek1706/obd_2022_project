package com.example.demo.model.CountriesTables;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString()
public class Countries {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "country_name")
    public String countryName;
    @Column(name = "country_pres")
    public String countryPresident;
    @Column(name = "country_description")
    public String countryDescription;
    @Column(name = "last_update")
    public Date countryLastUpdate;
    @Column(name = "population")
    public int countryPopulation;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "currency_ID")
    @JsonBackReference
    private Currency currency;

}
