package com.smart.ws.dao.impl;

import java.security.Key;
import java.util.List;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.swing.text.Utilities;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smart.ws.controller.UtilityClass;
import com.smart.ws.dao.UserDao;
import com.smart.ws.model.Users;

import resources.EncryptPassword;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public int addUser(Users user) {
		Session session=sessionFactory.getCurrentSession();
		int userSlno=user.getSlno();
		
		try{
			//String encPwd=new UtilityClass().encryptPassword(user.getPassword());			
//		   sessionFactory.getCurrentSession().saveOrUpdate(user);
			//System.out.println("user sl no--------->"+userSlno);
			if(userSlno==0){
//				String encPwd=new EncryptPassword().encrypt(user.getPassword());
//				user.setPassword(encPwd);
//				System.out.println(encPwd+"--->"+user.getPassword());
				userSlno=(Integer)session.save(user);
			}else{				
				session.saveOrUpdate(user);
				userSlno=user.getSlno();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return userSlno;
	}

	@Override
	public void deleteUser(Users user) {
		try{
			String sql="delete from Users where slno="+user.getSlno();
			Query q=sessionFactory.getCurrentSession().createQuery(sql);
			q.executeUpdate();
			}catch(Exception e){
				e.printStackTrace();
			}

	}

	@Override
	public Users getUser(int userId) {
//		System.out.println("user id============"+userId);
		return (Users)sessionFactory.getCurrentSession().createQuery("from Users where slno="+userId).uniqueResult();
	}

	@Override
	public List<Users> listUsers(String clientId) {
		String sql="";
		if(clientId.equals("0"))
			sql="from Users";
		else
			sql="from Users where clientId="+clientId;
		Query q=sessionFactory.getCurrentSession().createQuery(sql);
		List<Users> list=q.list();
		return list;
	}
	@Override
	public String getUserImageUrl(int userId){
		Users user=(Users)sessionFactory.getCurrentSession().createQuery("from Users where slno="+userId).uniqueResult();
		return user.getUserImage();
	}
	
	

}
