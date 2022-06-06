package com.example.demo.model.UserTables;

import lombok.*;

import javax.persistence.*;

@Entity
@Data
@EqualsAndHashCode()
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private int ID;
    @Column(name = "comment_text")
    private String commentText;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID",insertable = false, updatable = false)
    private User user;
}
