package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.pojo.Employee;
import com.example.demo.repo.EmployeeRepo;

@Service
public class EmployeeService {
	//it creates an object with some reference to the dummy obj
	@Autowired
	EmployeeRepo repo;
	//insert
	public Employee insert(Employee e) {
		return repo.save(e);
	}
	public Employee updateByID(Employee e) {
		System.out.println("empno inside updatebyid"+e.getEmpno());
		Employee ee=repo.findById(e.getEmpno()).orElse(null);
		ee.setEmpname(e.getEmpname());
		ee.setPhono(e.getPhono());
		return repo.save(ee);
	}
	//retrive
	public List<Employee> getall(){
	return repo.findAll();
	}
	public void deleteByID(int empno) {
		 repo.deleteById(empno);
	}
}
