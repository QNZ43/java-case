package hbfu.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hbfu.bean.Department;
import hbfu.sql.SqlHelper;

/**
 * Servlet implementation class dirresetServlet
 */
@WebServlet("/dirresetServlet")
public class dirresetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dirresetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String company_name=request.getParameter("company_name");
		String loan=request.getParameter("loan");
		String income=request.getParameter("income");
		String entry_name=request.getParameter("entry_name");
	    String notice_number=request.getParameter("notice_number");
		String customer_number=request.getParameter("customer_number");
		String document_number=request.getParameter("document_number");
		String contract_number=request.getParameter("contract_number");
		String loan_number=request.getParameter("loan_number");
		String bank_account=request.getParameter("bank_account");
		String purpose=request.getParameter("purpose");
		String rate=request.getParameter("rate");
		String term=request.getParameter("term");
		String drawing_time=request.getParameter("drawing_time");
		String amount_paid=request.getParameter("amount_paid");
		String balance=request.getParameter("balance");
		String guarantee_method=request.getParameter("guarantee_method");
		String this_use_balance=request.getParameter("this_use_balance");
		String consistent=request.getParameter("consistent");
		String developer_opinion=request.getParameter("developer_opinion");
		String enterprise_opinion=request.getParameter("enterprise_opinion");
		String contact_number=request.getParameter("contact_number");
		Department department=new Department();
		department.setAmount_paid(amount_paid);
		department.setBalance(balance);
		department.setBank_account(bank_account);
		department.setCompany_name(company_name);
		department.setConsistent(consistent);
		department.setContract_number(contract_number);
		department.setCustomer_number(customer_number);
		department.setDocument_number(document_number);
		department.setDrawing_time(drawing_time);
		department.setEntry_name(entry_name);
		department.setGuarantee_method(guarantee_method);
		department.setLoan_number(loan_number);
		department.setRate(rate);
		department.setTerm(term);
		department.setThis_use_balance(this_use_balance);
		department.setLoan(loan);
		department.setIncome(income);
		department.setNotice_number(notice_number);
		department.setPurpose(purpose);
		department.setDeveloper_opinion(developer_opinion);
		department.setEnterprise_opinion(enterprise_opinion);
		department.setContact_number(contact_number);
		
		int rs = SqlHelper.dirreste(department);
		if(rs!=0){
			
			response.sendRedirect("sussess.jsp");
		}else{
			response.sendRedirect("failure.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
