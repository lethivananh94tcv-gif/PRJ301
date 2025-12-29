
package service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import model.Employee;

public class EmployeeServiceImpl implements EmployeeService {

    private static final Map<Integer, Employee> employees = new HashMap<>();
    static {
//        employees.put(1, new Employee(1,"","",""));
        employees.put(1, new Employee(1, "An", "an@gmail.com", "Ha Noi"));
        employees.put(2, new Employee(2, "Binh", "binh@gmail.com", "Da Nang"));
        employees.put(3, new Employee(3, "Chi", "chi@gmail.com", "HCM"));
    }
    @Override
    public List<Employee> findAllEmp() {
        return new ArrayList<>(employees.values());
    }

    @Override
     public void add(Employee employee) {
        employees.put(employee.getId(), employee);
    }
   

    public Employee findbyId(int id) {
        return employees.get(id);
    }

    @Override
    public void update(int id, Employee employee) {
        employees.put(id, employee);
    }

    @Override
    public void remove(int id) {
        employees.remove(id);
    }

   
}