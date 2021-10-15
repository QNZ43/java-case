package hbfu.servlet;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import hbfu.bean.Company;
import hbfu.sql.SqlHelper;

/**
 * Servlet implementation class addServlet
 */
@MultipartConfig
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
				request.setCharacterEncoding("UTF-8");
				response.setCharacterEncoding("UTF-8");
				Part part = request.getPart("myfile");
		        String disposition = part.getHeader("Content-Disposition");
		        String suffix = disposition.substring(disposition.lastIndexOf("."),disposition.length()-1);
		          //随机生成32符字串
		        String filename = UUID.randomUUID()+suffix;
		          //获取上传文件名
		        InputStream is = part.getInputStream();
		        //动态服务器路径
		        String serverpath = "D:/java";
		        FileOutputStream fos = new FileOutputStream(serverpath+"/"+filename);
		        String path="D:/java"+"/"+filename;
		        String file=filename;
		        System.out.println(fos);
		        byte[] bty = new byte[1024];
		        int length =0;
		        while((length=is.read(bty))!=-1){
		            fos.write(bty,0,length);
		        }
		        fos.close();
		        is.close();

				String company_name=request.getParameter("company_name");
				String start_date=request.getParameter("start_date");
				String  inc=request.getParameter("income");
				Integer income=Integer.valueOf(inc);
				String customer_number=request.getParameter("customer_number");
				String trade_kind=request.getParameter("income");
				String trade_policy=request.getParameter("trade_policy");
				String classfication=request.getParameter("classfication");
				String deb=request.getParameter("debt");
				Integer debt=Integer.valueOf(deb);
				String cv=request.getParameter("credit_varieties");
				Integer credit_varieties=Integer.valueOf(cv);
				String lo=request.getParameter("loan");
				Integer loan=Integer.valueOf(lo);
				String lloan=request.getParameter("last_loan");
				Integer last_loan=Integer.valueOf(lloan);
				String credit_balance=request.getParameter("credit_balance");
				String credit_rating=request.getParameter("credit_rating");
				String note=request.getParameter("note");		
				String collateral=request.getParameter("collateral");
				String  eva=request.getParameter("evaluation_value");
				Integer evaluation_value=Integer.valueOf(eva);
				String mortgage_rate=request.getParameter("mortgage_rate");
				String  mor=request.getParameter("mortgage_value");
				Integer mortgage_value=Integer.valueOf(mor);
				String rationality_analysis=request.getParameter("rationality_analysis");
				String guaranteen_liability=request.getParameter("guaranteen_liability");
				System.out.println(path);
				Company company =new Company();
				company.setCompany_name(company_name);
				company.setClassfication(classfication);
				company.setCollateral(collateral);
				company.setCredit_balance(credit_balance);
				company.setCredit_varieties(credit_varieties);
				company.setCustomer_number(customer_number);
				company.setDebt(debt);
				company.setEvaluation_value(evaluation_value);
				company.setIncome(income);
				company.setGuaranteen_liability(guaranteen_liability);
				company.setLast_loan(last_loan);
				company.setLoan(loan);
				company.setMortgage_rate(mortgage_rate);
				company.setMortgage_value(mortgage_value);
				company.setNote(note);
				company.setRationality_analysis(rationality_analysis);
				company.setStart_date(start_date);
				company.setTrade_kind(trade_kind);
				company.setTrade_policy(trade_policy);
				company.setCredit_rating(credit_rating);
				company.setFile(file);
				company.setPath(path);
				int rs = SqlHelper.inputinformation(company);
				if(rs!=0){
					
					response.sendRedirect("sussess.jsp");
				}else{
					response.sendRedirect("failure.jsp");
				}
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

}
