package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.pojo.Employee;
                                                    //POJO,ID type
public interface EmployeeRepo extends JpaRepository<Employee,Integer> {

}
