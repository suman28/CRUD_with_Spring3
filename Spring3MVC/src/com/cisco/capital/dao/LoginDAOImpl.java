package com.cisco.capital.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.cisco.capital.model.RegistrationVO;

@Repository("loginDao")
public class LoginDAOImpl implements LoginDAO{
	
	public RegistrationVO getUserInfo(String userId){
		RegistrationVO users = null;
		List<RegistrationVO> userList = getDataFromDB();
		for(int i=0;i<userList.size();i++){
			if(userList.get(i).getUserId().equalsIgnoreCase(userId)){
				users = userList.get(i);
			}
		}
		return users;
	}

	public List<RegistrationVO> getDataFromDB() {
		List<RegistrationVO> list = new ArrayList<RegistrationVO>();
		 RegistrationVO regVO = new RegistrationVO();
		 regVO.setUserId("111");
		 regVO.setFirstName("Suman");
		 regVO.setLastName("K");
		 regVO.setUserName("Suman2");
		 
		 RegistrationVO regVO2 = new RegistrationVO();
		 regVO2.setUserId("112");
		 regVO2.setFirstName("Ramana");
		 regVO2.setLastName("V");
		 regVO2.setUserName("Ramana2");
		
		 RegistrationVO regVO3 = new RegistrationVO();
		regVO3.setUserId("113");
		regVO3.setFirstName("Jagadeesh");
		regVO3.setLastName("P");
		regVO3.setUserName("Jag2");
		
		RegistrationVO regVO4 = new RegistrationVO();
		regVO4.setUserId("114");
		regVO4.setFirstName("Maruthi");
		regVO4.setLastName("G");
		regVO4.setUserName("Maruthi2");

		 list.add(regVO);
		 list.add(regVO2);
		 list.add(regVO3);
		 list.add(regVO4);
			
		System.out.println(list);
		 return list;
	}


	public List<RegistrationVO> getAllUsers() {

		
		//From DB --take all user  --TODO
		
		//
		
		
		
		return getDataFromDB();
	}


}
