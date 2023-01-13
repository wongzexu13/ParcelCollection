package com.dao.bean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.dao.UserDao;

public class User {

	public static Connection getConnection() {
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/userdb", "root", "wongzexu");
		
		}catch (Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return con;
		
	}
	
	public static int keyIn(UserDao u) {
		
		int status = 0;
		
		try {
	
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into parcel (studentId, studentName, trackingNumber, courier, adminId, status) values (?, ?, ?, ?, '002', 'pending')");
			pst.setString(1,  u.getStudentId());
			pst.setString(2,  u.getStudentName());
			pst.setString(3,  u.getTrackingNumber());
			pst.setString(4,  u.getCourier());
			
			status = pst.executeUpdate();
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return status;
	}
	
	public static int update(UserDao u) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update parcel set studentId=?, studentName=?, trackingNumber=?, courier=?, collectionDate=?, adminId=?, status=? where id=?");
			pst.setString(1,  u.getStudentId());
			pst.setString(2,  u.getStudentName());
			pst.setString(3,  u.getTrackingNumber());
			pst.setString(4,  u.getCourier());
			pst.setString(5,  u.getCollectionDate());
			pst.setString(6,  u.getAdminId());
			pst.setString(7,  u.getStatus());
			pst.setInt(8, u.getId());
			
			status=pst.executeUpdate();
			
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
		}
		
		return status;
	}
	
	public static int appointment(UserDao u) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update parcel set collectionDate=?, status='waiting for collection' where id=?");
			pst.setString(1,  u.getCollectionDate());
			pst.setInt(2, u.getId());
			
			status=pst.executeUpdate();
			
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
		}
		
		return status;
	}
	
	public static int complete(int id) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update parcel set status='complete' where id=?");
			pst.setInt(1, id);
			
			status=pst.executeUpdate();
			
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
		}
		
		return status;
	}
	
	
	public static List<UserDao> getAllParcel() {
		
		List<UserDao> list = new ArrayList <UserDao>();
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from parcel");
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				
				UserDao u = new UserDao();
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setTrackingNumber(rs.getString("trackingNumber"));
				u.setCourier(rs.getString("courier"));
				u.setCollectionDate(rs.getString("collectionDate"));
				u.setAdminId(rs.getString("adminId"));
				u.setStatus(rs.getString("status"));
				
				list.add(u);
				
			}
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return list;
	}
	
	public static List<UserDao> getAllParcelByName(String name) {
		
		List<UserDao> list = new ArrayList <UserDao>();
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from parcel where studentName=?");
			pst.setString(1, name);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				
				UserDao u = new UserDao();
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setTrackingNumber(rs.getString("trackingNumber"));
				u.setCourier(rs.getString("courier"));
				u.setCollectionDate(rs.getString("collectionDate"));
				u.setAdminId(rs.getString("adminId"));
				u.setStatus(rs.getString("status"));
				
				list.add(u);
				
			}
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return list;
	}

	public static List<UserDao> getAllParcelByTrackingNumber(String trackingNumber) {
		
		List<UserDao> list = new ArrayList <UserDao>();
		
try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from parcel where trackingNumber=?");
			pst.setString(1, trackingNumber);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				
				UserDao u = new UserDao();
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setTrackingNumber(rs.getString("trackingNumber"));
				u.setCourier(rs.getString("courier"));
				u.setCollectionDate(rs.getString("collectionDate"));
				u.setAdminId(rs.getString("adminId"));
				u.setStatus(rs.getString("status"));
				
				list.add(u);
				
			}
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return list;
	}

	public static List<UserDao> getAllParcelByDate(String date) {
		
		List<UserDao> list = new ArrayList <UserDao>();
		
try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from parcel where collectionDate=?");
			pst.setString(1, date);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				
				UserDao u = new UserDao();
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setTrackingNumber(rs.getString("trackingNumber"));
				u.setCourier(rs.getString("courier"));
				u.setCollectionDate(rs.getString("collectionDate"));
				u.setAdminId(rs.getString("adminId"));
				u.setStatus(rs.getString("status"));
				
				list.add(u);
				
			}
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return list;
	}
	
	public static UserDao getRecordById(int id) {
		
		UserDao u = null;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from parcel where id=?");
			pst.setInt(1, id);
			
			
			ResultSet rs = pst.executeQuery();
			u = new UserDao();
			
			while(rs.next()){
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setTrackingNumber(rs.getString("trackingNumber"));
				u.setCourier(rs.getString("courier"));
				u.setCollectionDate(rs.getString("collectionDate"));
				u.setAdminId(rs.getString("adminId"));
				u.setStatus(rs.getString("status"));
			}
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}

		return u;
	}
	
	
	public static int delete(UserDao u) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("delete from parcel where id=?");
			pst.setInt(1, u.getId());
			
			status=pst.executeUpdate();
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return status;
	}
	

	
	public static int cancel(UserDao u) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update parcel set collectionDate=null, status='pending' where id=?");
			pst.setInt(1, u.getId());
			
			status=pst.executeUpdate();
			
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
		}
		
		return status;
	}
	
	public static UserDao getLoginValidation() {
		
		UserDao u = null;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from loginValidation where id=1");
					
			ResultSet rs = pst.executeQuery();
			u = new UserDao();
			
			while(rs.next()){
				u.setUsername(rs.getString("username"));
				u.setPassword(rs.getString("password"));
			}
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return u;
	}
	
	public static int reportProblem(UserDao u) {
		
		int status = 0;
		
		try {
	
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into report (studentName, studentId, email, contact, message, ticket) values (?, ?, ?, ?, ?, 'open')");
			pst.setString(1,  u.getStudentName());
			pst.setString(2,  u.getStudentId());
			pst.setString(3,  u.getEmail());
			pst.setString(4,  u.getContact());
			pst.setString(5,  u.getMessage());
			
			status = pst.executeUpdate();
			
		}catch(Exception ex) {
			
			System.out.println(ex);
			
		}
		
		return status;
	}
	
	public static List<UserDao> getAllReport() {
			
		List<UserDao> list = new ArrayList <UserDao>();
			
		try {
				
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from report");
			ResultSet rs = pst.executeQuery();
				
			while(rs.next()){
					
				UserDao u = new UserDao();
				u.setId(rs.getInt("id"));
				u.setStudentId(rs.getString("studentId"));
				u.setStudentName(rs.getString("studentName"));
				u.setEmail(rs.getString("email"));
				u.setContact(rs.getString("contact"));
				u.setMessage(rs.getString("message"));
				u.setTicket(rs.getString("ticket"));
					
				list.add(u);
			}
				
		}catch(Exception ex) {
				
			System.out.println(ex);
				
		}
		return list;
	}
		
	

	public static int closeTicket(int id) {
		
		int status = 0;
		
		try {
			
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("update report set ticket='closed' where id=?");
			pst.setInt(1, id);
			
			status=pst.executeUpdate();
			
			
			
		}catch(Exception ex) {
			
			System.out.println(ex);
		}
		
		return status;
	}
}
