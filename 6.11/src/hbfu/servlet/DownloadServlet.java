package hbfu.servlet;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hbfu.bean.Company;
import hbfu.sql.SqlHelper;
import hbfu.sql.SqlHelper;
public class DownloadServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String company_name=request.getParameter("company_name");
		System.out.println(company_name);
		ResultSet rs = SqlHelper.pandf(company_name);
		try {
			if(rs.next()==true) {
				String path = rs.getString(23);
				String file=rs.getString(24);
				System.out.println(path);
				System.out.println(file);
			    FileInputStream fis = new FileInputStream(path);
			    response.setCharacterEncoding("utf-8");
			    response.setHeader("Content-Disposition", "attachment; filename="+file);
			    ServletOutputStream out = response.getOutputStream();
			    byte[] bt = new byte[1024];
			    int length = 0;
			    while((length=fis.read(bt))!=-1){
			        out.write(bt,0,length);
			    }
			    out.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
    }

	
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request,response);
	}
 
}
