package com.example.demo.model.CountriesTables;



import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.*;

import javax.persistence.*;

@Entity
@Data
@EqualsAndHashCode()
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Neighbours {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "neighbour_name")
    private String neighboursName;

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonBackReference
    @JoinColumn(name = "ID",insertable = false, updatable = false)
    private Countries countries;


}
