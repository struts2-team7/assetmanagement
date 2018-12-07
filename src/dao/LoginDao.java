package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class LoginDao {
	public static boolean validate(String username,String userpass){
		 boolean status=false;
		  try{
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con=DriverManager.getConnection(
		   "jdbc:mysql://localhost:3306/asset?useSSL=false","root","12345678");
		   
		   PreparedStatement ps=con.prepareStatement(
		     "select * from accounts where username=? and password=?");
		   ps.setString(1,username);
		   ps.setString(2,userpass);
		   ResultSet rs=ps.executeQuery();
		   status=rs.next();
		  }catch(Exception e){e.printStackTrace();}
		 return status;
		}
}
