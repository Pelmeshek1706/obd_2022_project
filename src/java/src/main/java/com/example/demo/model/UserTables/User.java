package com.example.demo.model.UserTables;

import lombok.*;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@EqualsAndHashCode()
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "user_login")
    private String userLogin;
    @Column(name = "user_first_name")
    private String userFirstName;
    @Column(name = "user_last_name")
    private String userLastName;
    @Column(name = "user_password")
    private String userPassword;
    @Column(name = "user_age")
    private int userAge;
    @Column(name = "user_email")
    private String userEmail;
    @Column(name = "user_last_update")
    private Date userLastUpdate;
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "user_role_id")
    private UserRole userRole;
    @Enumerated(EnumType.ORDINAL)
    @Column(name = "user_sex_id")
    private UserSex userSex;
}
