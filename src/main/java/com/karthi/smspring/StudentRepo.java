package com.karthi.smspring;

import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class StudentRepo {
    List<StudentModel> students = new ArrayList<>(Arrays.asList(
            new StudentModel(1, "Arun Kumar", 20, "Male", "Java Spring"),
            new StudentModel(2, "Priya Sharma", 22, "Female", "React"),
            new StudentModel(3, "Ravi Verma", 21, "Male", "Python"),
            new StudentModel(4, "Sneha Nair", 31, "Female", "Machine Learning"),
            new StudentModel(5, "Kiran Patel", 30, "Male", "C++"),
            new StudentModel(6, "Divya Menon", 20, "Female", "Flutter")
    ));

    public List<StudentModel> addStudent(StudentModel student) {
        students.add(student);
        return students;
    }

    public List<StudentModel> findAll() {
        return students;
    }

    public StudentModel findById(Integer id) {
        StudentModel student = new StudentModel();
        for (StudentModel studentModel : students) {
            if (studentModel.getId() == id) {
                student = studentModel;
            }
        }
        return student;
    }

    public void deleteStudent(StudentModel student) {
        students.remove(student);
    }

    public void updateStudents(StudentModel student) {
        for (int i = 0; i < students.size(); i++) {
            if (students.get(i).getId() == student.getId()) {
                students.set(i, student);
                break;
            }
        }
    }
}
