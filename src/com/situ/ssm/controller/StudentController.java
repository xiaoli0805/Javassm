package com.situ.ssm.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.situ.ssm.entity.Student;
import com.situ.ssm.service.IStudentService;


@Controller
@RequestMapping(value="/student")
public class StudentController {
	
	@InitBinder 
	public void initBinder(WebDataBinder binder) { 
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
	    dateFormat.setLenient(false); 
	    binder.registerCustomEditor(Date.class,
	           new CustomDateEditor(dateFormat, true));
	}
	
	@Resource(name="studentService")
	private IStudentService studentService;
	
	@RequestMapping(value="/list")
	public String list(Model model) {
		List<Student> list = studentService.findAll();
		model.addAttribute("list", list);
		return "student_list";
	}
	
	@RequestMapping(value="/add")
	public String add(Student student) {
		studentService.add(student);
		return "redirect:/student/list.action";
	}
	
	@RequestMapping(value="/delete")
	public String delete(Integer id) {
		studentService.delete(id);
		return "redirect:/student/list.action";
	}
	
	@RequestMapping(value="/toUpdate")
	public String toUpdate(Integer id,Model model) {
		Student student = studentService.findById(id);
		model.addAttribute("student",student);
		return "edit_student";
	}
	
	@RequestMapping(value="/update")
	public String update(Student student) {
		studentService.update(student);
		return "redirect:/student/list.action";
	}
}
