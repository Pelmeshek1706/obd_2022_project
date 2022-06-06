package com.example.demo.SimpleServise;

import com.example.demo.Repo.CountriesRepository;
import com.example.demo.model.CountriesTables.Countries;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryService {

    private final CountriesRepository countriesRepository;

    @Autowired
    public CountryService(CountriesRepository countriesRepository) {
        this.countriesRepository = countriesRepository;
    }

    public Countries findByID(int id){
        return countriesRepository.findById(id).get();
    }

    public List<Countries> findAll(){
        return countriesRepository.findAll();
    }

    public void deleteByID(int id){
        countriesRepository.deleteById(id);
    }

    public void addCountry(Countries countries){
        countriesRepository.save(countries);
    }
}
