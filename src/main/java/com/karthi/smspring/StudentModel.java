package com.karthi.smspring;


import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
public class StudentModel {
    int id;
    String name;
    int age;
    String gender;
    String course;
}
