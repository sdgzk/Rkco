package com.rkco.service;

import java.util.List;

import com.rkco.pojo.TXLUser;
import com.rkco.pojo.User;

public interface IUserService {
	public User getUserById(int userId);
	public User getUserById(User user);
}
