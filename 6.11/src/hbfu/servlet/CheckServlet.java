package hbfu.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import hbfu.bean.User;
import hbfu.sql.SqlHelper;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String username = request.getParameter("account");
			String password = request.getParameter("password");
			String roleString =request.getParameter("role");
			Integer role=Integer.valueOf(roleString);
			System.out.print(role);
		
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			
			
			if(role==0) {
				ResultSet rs = SqlHelper.querymanager(user);
				try{
					if(rs !=null && rs.next()!=false){
						
						response.sendRedirect("manager.jsp");
					}else{
						response.sendRedirect("failure.jsp");
					}
				}catch(SQLException e){
					System.out.println(e.getMessage());
				}
			}else if (role==1){
				ResultSet rs = SqlHelper.queryindependent(user);
				try{
					if(rs !=null && rs.next()!=false){
						
						response.sendRedirect("riskmanger.jsp");
					}else{
						response.sendRedirect("failure.jsp");
					}
				}catch(SQLException e){
					System.out.println(e.getMessage());
				}
			}else if(role==2){
				ResultSet rs = SqlHelper.querydirector(user);
				try{
					if(rs !=null && rs.next()!=false){
						
						response.sendRedirect("director.jsp");
					}else{
						response.sendRedirect("failure.jsp");
					}
				}catch(SQLException e){
					System.out.println(e.getMessage());
				}
			}
			

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}


}
