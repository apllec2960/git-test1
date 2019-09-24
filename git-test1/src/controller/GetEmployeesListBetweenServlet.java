package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.EmployeesDao;
import vo.Employees;

/**
 * Servlet implementation class GetEmployeesListBetweenServlet
 */
@WebServlet("/employees/getEmployeesListBetween")
public class GetEmployeesListBetweenServlet extends HttpServlet {
	private EmployeesDao employeesDao;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int begin = Integer.parseInt(request.getParameter("begin"));
		System.out.println("GetEmployeesBetweenServlet param begin : "+ begin);
		
		int end = Integer.parseInt(request.getParameter("end"));
		System.out.println("GetEmployeesBetweenServlet param end : "+ end);
		
		employeesDao = new EmployeesDao();
		List<Employees> list = employeesDao.selectEmployeesListBetween(begin, end);
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("/WEB-INF/views/employees/employeesListBetween.jsp").forward(request, response);
		
	}

}
