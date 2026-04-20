package com.karthi.smspring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    @Autowired
    StudentRepo repo;

    public List<StudentModel> addStudent(StudentModel student) {
        return repo.addStudent(student);
    }

    public List<StudentModel> findAllStudent() {
        return repo.findAll();
    }

    public StudentModel findById(Integer id) {
        return repo.findById(id);
    }

    public void delete(StudentModel student) {
        repo.deleteStudent(student);
    }

    public void updateStudent(StudentModel student) {
        repo.updateStudents(student);
    }
}
