package com.example.demo.Controller;

import com.example.demo.SimpleServise.CountryService;
import com.example.demo.model.CountriesTables.Countries;
import com.example.demo.model.UserTables.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/country")
public class CountryController {

    private final CountryService countryService;

    @Autowired
    public CountryController(CountryService countryService) {
        this.countryService = countryService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Countries> getCountryByID(@PathVariable("id") int id){
        Countries countries = countryService.findByID(id);
        return new ResponseEntity<>(countries, HttpStatus.OK);
    }

    @GetMapping("/all")
    public ResponseEntity<List<Countries>> getAllCountry(){
        List<Countries> countriesList= countryService.findAll();
        return new ResponseEntity<>(countriesList,HttpStatus.OK);
    }

    @PostMapping("/add")
    public String addCountry(@RequestBody Countries countries){
        countryService.addCountry(countries);
        return "redirect:/all";
    }

    @GetMapping("/delete")
    public ResponseEntity<Integer> deleteCountry(@RequestParam("id") int id){
        countryService.deleteByID(id);
        return new ResponseEntity<>(id,HttpStatus.OK);
    }




}
