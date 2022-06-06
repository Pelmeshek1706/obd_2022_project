package com.example.demo.Repo;

import com.example.demo.model.CountriesTables.Countries;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountriesRepository extends JpaRepository<Countries,Integer> {
}
