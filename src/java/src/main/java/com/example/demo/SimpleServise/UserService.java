package com.example.demo.SimpleServise;

import com.example.demo.Repo.UserRepository;
import com.example.demo.model.UserTables.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User findByID(int id){
        return userRepository.findById(id).get();
    }

    public List<User> findAll(){
        return userRepository.findAll();
    }

    public void deleteByID(int id){
        userRepository.deleteById(id);
    }

    public void addUser(User user){
        userRepository.save(user);
    }

}
