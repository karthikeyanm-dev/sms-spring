package com.karthi.smspring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StudentController {

    @Autowired
    StudentService studentService;

    @RequestMapping({"/home",   "/"})
    public String homePage(){
        return "index";
    }

    @RequestMapping("add-student")
    public String addStudentPage(){
        return "add-student";
    }

    @RequestMapping("all-students")
    public String allStudentsPage(Model model){
        model.addAttribute("students",studentService.findAllStudent());
        return "all-students";
    }

    @RequestMapping(value = "/submit")
    public String handleSubmit(@ModelAttribute StudentModel student, Model model) {
        if (student.getId() == 0) {
            studentService.addStudent(student);   // no id = new student
        } else {
            studentService.updateStudent(student); // has id = edit
        }
        model.addAttribute("students", studentService.findAllStudent());
        return "all-students";
    }

    @RequestMapping("delete/{id}")
    public String deleteStudent(@RequestParam Integer id, Model model) {
        StudentModel student = studentService.findById(id);
        studentService.delete(student);
        model.addAttribute("students", studentService.findAllStudent());
        return "redirect:/all-students";
    }

    @RequestMapping("/edit")
    public String handleEdit(@RequestParam int id,  Model model) {
        StudentModel student = studentService.findById(id);
        model.addAttribute("student", student);
        return  "edit-student";
    }
}
