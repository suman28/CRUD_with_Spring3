package com.cisco.capital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cisco.capital.model.RegistrationVO;
import com.cisco.capital.service.RegService;
import com.google.gson.Gson;

@Controller
public class RegController {

	@RequestMapping("/userRegistration")
	public ModelAndView getRegistrationPage() {
		return new ModelAndView("userRegistration");
	}

	@Autowired
	RegService regService;

	@RequestMapping("/getRegisteredUsers")
	public String getRegUsers(ModelMap map) {
		List<RegistrationVO> regUsersList = regService.getRegisteredUsers();
		map.addAttribute("registeredUsers", regUsersList);
		return "result";
	}

	@RequestMapping("/getRegisteredUsers/{userId}")
	public ModelAndView getMyUser(@PathVariable("userId") String userId) {
		RegistrationVO registeredUsers = regService.getUser(userId);
		ModelAndView model = new ModelAndView("UserDetails");
		model.addObject("regUser", registeredUsers);
		return model;
	}

	@RequestMapping(value = "/saveUsersData", method = RequestMethod.POST)
	public @ResponseBody
	String saveUser(
			@ModelAttribute("registration") RegistrationVO registrationVO) {
		regService.saveUser(registrationVO);
		Gson gson = new Gson();
		return gson.toJson(registrationVO);
	}

	@RequestMapping("/getRegisteredUsers/{userId}/edit")
	public ModelAndView getUserData(@PathVariable("userId") String userId) {
		RegistrationVO regUsers = regService.getUserData(userId);
		ModelAndView model = new ModelAndView("formData");
		model.addObject("editUser", regUsers);
		return model;
	}

	@RequestMapping(value = "/editDetails", method = RequestMethod.POST)
	public String editUser(
			@ModelAttribute("registrationVO") RegistrationVO registrationVO) {
		regService.editUser(registrationVO);
		System.out.println("inside editUser:user id "
				+ registrationVO.getUserId());
		return "forward:/getRegisteredUsers";
	}

	@RequestMapping("/getRegisteredUsers/{userId}/delete")
	public String deleteUser(@PathVariable("userId") String userId) {
		regService.deleteUser(userId);
		// ModelAndView model = new ModelAndView("deletedRecord");
		System.out.println(userId + "  record is deleted");
		return "forward:/getRegisteredUsers";
	}
	
	/*public ModelAndView deleteUser(@PathVariable("userId")String userId){
	regService.deleteUser(userId);
	ModelAndView model = new ModelAndView("deletedRecord");
	System.out.println(userId + "  record is deleted");
	return model;
	}*/

}
