package hbfu.sql;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import hbfu.bean.User;
import hbfu.bean.Company;
import hbfu.bean.Department;

public class SqlHelper {
	private static String drivername = "com.mysql.cj.jdbc.Driver";
	private static String url = "jdbc:mysql://localhost:3306/credit?&useSSL=false&serverTimezone=UTC&serverTimezone=GMT%2B8";
	private static String name = "root";
	private static String password = "123";
	
	
	public static Connection connSql(){
		Connection connSql=null;
		try{
				Class.forName(drivername);
				connSql = DriverManager.getConnection(url,name,password);
				System.out.println("数据库连接成功");
				
		}catch(Exception e){
			System.out.println("数据库连接失败："+e.getMessage());
			
		}
			return connSql;	
	}
	
	public static ResultSet querymanager(User user){
		ResultSet rs = null ;
		
		String sql = "select * from user where username = ? and password = ?and role=0";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());//ֵ
		
			
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet queryindependent(User user){
		ResultSet rs = null ;
		
		String sql = "select * from user where username = ? and password = ?and role=1";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());//ֵ
		
			
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet querydirector(User user){
		ResultSet rs = null ;
		
		String sql = "select * from user where username = ? and password = ?and role=2";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());//ֵ
		
			
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	
	public static int inputinformation(Company company){
		int rs=0 ;
		
		String sql = "insert into company(company_name,start_date,income,customer_number,"
				+ "trade_kind,trade_policy,classfication,debt,credit_varieties,loan,last_loan,"
				+ "credit_balance,note,collateral,evaluation_value,mortgage_rate,mortgage_value,"
			+ "rationality_analysis,guaranteen_liability,credit_rating,path,file) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company.getCompany_name());
			pst.setString(2, company.getStart_date());
			pst.setInt(3, company.getIncome());
			pst.setString(4, company.getCustomer_number());
			pst.setString(5, company.getTrade_kind());
			pst.setString(6, company.getTrade_policy());
			pst.setString(7, company.getClassfication());
			pst.setInt(8, company.getDebt());
			pst.setInt(9, company.getCredit_varieties());
			pst.setInt(10, company.getLoan());
			pst.setInt(11, company.getLast_loan());
			pst.setString(12, company.getCredit_balance());
			pst.setString(13, company.getNote());
			pst.setString(14, company.getCollateral());
			pst.setInt(15, company.getEvaluation_value());
			pst.setString(16, company.getMortgage_rate());
			pst.setInt(17, company.getMortgage_value());
			pst.setString(18, company.getRationality_analysis());
			pst.setString(19, company.getGuaranteen_liability());
			pst.setString(20, company.getCredit_rating());
			pst.setString(21, company.getPath());
			pst.setString(22, company.getFile());
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int modifyformation(Company company){
		int rs=0 ;
		
		String sql = "update company set company_name=?,start_date=?,income=?,customer_number=?,"
				+ "trade_kind=?,trade_policy=?,classfication=?,debt=?,credit_varieties=?,loan=?,last_loan=?,"
				+ "credit_balance=?,note=?,collateral=?,evaluation_value=?,mortgage_rate=?,mortgage_value=?,"
				+ "rationality_analysis=?,guaranteen_liability=?,credit_rating=? where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company.getCompany_name());
			pst.setString(2, company.getStart_date());
			pst.setInt(3, company.getIncome());
			pst.setString(4, company.getCustomer_number());
			pst.setString(5, company.getTrade_kind());
			pst.setString(6, company.getTrade_policy());
			pst.setString(7, company.getClassfication());
			pst.setInt(8, company.getDebt());
			pst.setInt(9, company.getCredit_varieties());
			pst.setInt(10, company.getLoan());
			pst.setInt(11, company.getLast_loan());
			pst.setString(12, company.getCredit_balance());
			pst.setString(13, company.getNote());
			pst.setString(14, company.getCollateral());
			pst.setInt(15, company.getEvaluation_value());
			pst.setString(16, company.getMortgage_rate());
			pst.setInt(17, company.getMortgage_value());
			pst.setString(18, company.getRationality_analysis());
			pst.setString(19, company.getGuaranteen_liability());
			pst.setString(20, company.getCredit_rating());
			pst.setString(21, company.getCompany_name());
		
			
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int delinformation(Company company){
		int rs=0 ;
		
		String sql = "delete from company where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company.getCompany_name());
			
			
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}

	public static ResultSet selectall(String company_name ){
		ResultSet rs = null ;
		
		String sql = "select * from company where company_name=?";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,  company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet selectbyflag( ){
		ResultSet rs = null ;
		
		String sql = "select * from company where flag=0";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int agree(Company company){
		int rs=0;
		
		String sql = " update company set flag=1 where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company.getCompany_name());
			pst.executeUpdate();
			rs=	1;
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
			
	}
	public static int disagree(Company company){
		int rs=0;
		
		String sql = " update company set flag=2 where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company.getCompany_name());
			pst.executeUpdate();
			rs=	1;
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
			
	}

	public static ResultSet agree( ){
		ResultSet rs = null ;
		
		String sql = "select * from company where flag=1";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet disagree( ){
		ResultSet rs = null ;
		
		String sql = "select * from company where flag=2";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	
	public static ResultSet agree1(String company_name){
		ResultSet rs = null ;
		
		String sql = "select * from company where flag=1 and company_name=?";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet pandf(String company_name ){
		ResultSet rs = null ;
		
		String sql = "select * from company where company_name=?";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,  company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int diradd(Department department){
		int rs=0 ;
		
		String sql = "insert into department(company_name,loan,entry_name,customer_number,"
				+ "notice_number,document_number,contract_number,bank_account,loan_number,"
				+ "purpose,rate,term,drawing_time,amount_paid,balance,"
			+ "guarantee_method,this_use_balance,consistent,developer_opinion,enterprise_opinion,contact_number) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, department.getCompany_name());
			pst.setString(2, department.getLoan());
			pst.setString(3, department.getEntry_name());
			pst.setString(4, department.getCustomer_number());
			pst.setString(5, department.getNotice_number());
			pst.setString(6, department.getDocument_number());
			pst.setString(7, department.getContract_number());
			pst.setString(8, department.getBank_account());
			pst.setString(9, department.getLoan_number());
			pst.setString(10, department.getPurpose());
			pst.setString(11, department.getRate());
			pst.setString(12, department.getTerm());
			pst.setString(13, department.getDrawing_time());
			pst.setString(14, department.getAmount_paid());
			pst.setString(15, department.getBalance());
			pst.setString(16, department.getGuarantee_method());
			pst.setString(17, department.getThis_use_balance());
			pst.setString(18, department.getConsistent());
			pst.setString(19, department.getDeveloper_opinion());
			pst.setString(20, department.getEnterprise_opinion());
			pst.setString(21, department.getContact_number());
			
			
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet dirselect(String company_name ){
		ResultSet rs = null ;
		
		String sql = "select * from department where company_name=?";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1,  company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int dirreste(Department department){
		int rs=0 ;
		
		String sql = "update department set loan=?,entry_name=?,customer_number=?,notice_number=?,document_number=?,contract_number=?,bank_account=?,loan_number=?,purpose=?,rate=?,term=?,drawing_time=?,amount_paid=?,balance=?, guarantee_method=?,this_use_balance=?,consistent=? where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			
			pst.setString(1, department.getLoan());
			pst.setString(2, department.getEntry_name());
			pst.setString(3, department.getCustomer_number());
			pst.setString(4, department.getNotice_number());
			pst.setString(5, department.getDocument_number());
			pst.setString(6, department.getContract_number());
			pst.setString(7, department.getBank_account());
			pst.setString(8, department.getLoan_number());
			pst.setString(9, department.getPurpose());
			pst.setString(10, department.getRate());
			pst.setString(11, department.getTerm());
			pst.setString(12, department.getDrawing_time());
			pst.setString(13, department.getAmount_paid());
			pst.setString(14, department.getBalance());
			pst.setString(15, department.getGuarantee_method());
			pst.setString(16, department.getThis_use_balance());
			pst.setString(17, department.getConsistent());
			pst.setString(18, department.getCompany_name());
			
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static int deldirctor(String company_name){
		int rs=0 ;
		
		String sql = "delete from department where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company_name);
			
			rs=pst.executeUpdate();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet selcredited(){
		ResultSet rs = null ;
		
		String sql = "select * from department";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet selbyname(String company_name){
		ResultSet rs = null ;
		
		String sql = "select * from department where company_name=?";
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
			return rs;
	}
	public static ResultSet flag(String company_name){
		ResultSet rs=null ;
		
		String sql = "select flag from company where company_name=?";
		
		Connection conn = connSql();
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, company_name);
			rs = pst.executeQuery();
		} catch (SQLException e) {
			System.out.println("sql异常："+e.getMessage());
		}
		
			return rs;
	}
}
