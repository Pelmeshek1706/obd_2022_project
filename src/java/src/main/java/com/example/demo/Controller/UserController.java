package com.example.demo.Controller;

import com.example.demo.SimpleServise.UserService;
import com.example.demo.model.UserTables.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<User> getUserByID(@PathVariable("id") int id, Model model){
        User user = userService.findByID(id);
        return new ResponseEntity<>(user, HttpStatus.OK);

    }

    @GetMapping("/all")
    public ResponseEntity<List<User>> getAll(){
        List<User> userList= userService.findAll();
        return new ResponseEntity<>(userList, HttpStatus.OK);
    }

    @PostMapping("/add")
    public String addUser(@RequestBody User user){
        userService.addUser(user);
        return "redirect:/all";
    }

    /*  @DeleteMapping("/delete/{id}")
    public ResponseEntity<Integer> dell(@PathVariable("id") int id){
        userService.deleteByID(id);
        return new ResponseEntity<>(id, HttpStatus.OK);
    }*/

    @GetMapping("/delete")
    public ResponseEntity<Integer> dell(@RequestParam("id") int id){
        userService.deleteByID(id);
        return new ResponseEntity<>(id, HttpStatus.OK);
    }

}
