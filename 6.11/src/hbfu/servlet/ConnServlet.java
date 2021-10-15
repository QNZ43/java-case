package hbfu.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.*;

public class ConnServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		  try{
		    Class.forName("com.mysql.cj.jdbc.Driver");
		  	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/finicial?&useSSL=false&serverTimezone=UTC&serverTimezone=GMT%2B8" 
		    +"=UTC&characterEncoding=utf-8&useSSL=false","root","123");
		  	request.setAttribute("x","数据库连接成功！�" );
		  }catch(Exception e){
		  	System.out.println("数据库连接失败！"+e.getLocalizedMessage());
		  	request.setAttribute("x","数据库连接失败"+e.getLocalizedMessage() );
		  }finally{
			  request.getRequestDispatcher("login.jsp").forward(request, response);
		  }
		  
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}


}
