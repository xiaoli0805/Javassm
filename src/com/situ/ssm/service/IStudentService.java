package com.situ.ssm.service;

import java.util.List;

import com.situ.ssm.entity.Student;

public interface IStudentService {
	/**
	 * 查询所有学生信息
	 * @return
	 */
	public List<Student> findAll();
	
	/**
	 * 根据id查询学生信息
	 * @param id
	 * @return
	 */
	public Student findById(Integer id);
	
	/**
	 * 添加学生
	 * @param student
	 * @return
	 */
	public boolean add(Student student);
	
	/**
	 * 删除学生
	 * @param id
	 * @return
	 */
	public boolean delete(Integer id);
	
	/**
	 * 修改学生信息
	 * @param student
	 * @return
	 */
	public boolean update(Student student);
	
}
