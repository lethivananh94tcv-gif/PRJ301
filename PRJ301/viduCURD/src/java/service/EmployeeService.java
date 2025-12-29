/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package service;

import java.util.List;
import model.Employee;

/**
 *
 * @author Lenovo LEGION 5
 */
public interface EmployeeService {
    List <Employee> findAllEmp();
    void add(Employee emp);
    Employee findbyId(int id);
    void update (int id ,Employee emp);
    void remove (int id);
    
}
