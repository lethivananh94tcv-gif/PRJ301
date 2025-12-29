
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Employee;
import service.EmployeeService;
import service.EmployeeServiceImpl;


public class EmployeeServlet extends HttpServlet {
   
//    private EmployeeService  employeeService = new EmployeeServiceImpl();
    private EmployeeService  employeeService;
    
    @Override
    public void init() {
        employeeService = new EmployeeServiceImpl();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getParameter("action");
         if (action == null) action = "";
         switch (action){
              case "create":
                  showCreateForm(request, response);
                  break;
               case "edit":
                   showEditForm(request, response);
                  break;
               case "delete":
                   deleteEmployee(request, response);
                  break;
               case "view":
                   viewEmployee(request, response);
                  break;
               default:
                   listEmployees(request, response);
                   
         }
    } 
//https://nahnvien.com/employees?action=delete
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         String action = request.getParameter("action");
         if (action == null) action = "";
         switch (action){
              case "create":
                  createEmployeee(request, response);
                  break;
               case "edit":
                   editEmployeee(request, response);
                  break;             
               default:
                    response.sendRedirect(request.getContextPath()+ "/EmployeeServlet");      
        } 
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/create.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.findbyId(id);
        request.setAttribute("employee", employee);
        request.getRequestDispatcher("/WEB-INF/view/edit.jsp") 
               .forward(request, response);
    }

    private void deleteEmployee(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        employeeService.remove(id);
        response.sendRedirect(request.getContextPath()+ "/EmployeeServlet");
    }

    private void viewEmployee(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Employee employee = employeeService.findbyId(id);
        request.setAttribute("employee", employee);
        request.getRequestDispatcher("/WEB-INF/view/view.jsp").forward(request, response);
    }

    private void listEmployees(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        List<Employee> employees = employeeService.findAllEmp();
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/view/listEmp.jsp").forward(request, response);
        
    }

    private void createEmployeee(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Employee employee = new Employee(id, name, email, address);
        employeeService.add(employee);
        response.sendRedirect(request.getContextPath()+ "/EmployeeServlet");
    }

    private void editEmployeee(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Employee employee = new Employee(id, name, email, address);
        employeeService.update(id, employee);
        response.sendRedirect(request.getContextPath()+ "/EmployeeServlet");
    }

}