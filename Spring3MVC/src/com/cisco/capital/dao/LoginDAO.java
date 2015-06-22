package com.cisco.capital.dao;

import java.util.List;

import com.cisco.capital.model.RegistrationVO;

public interface LoginDAO {
	public List<RegistrationVO> getDataFromDB();

	public List<RegistrationVO> getAllUsers();
}
