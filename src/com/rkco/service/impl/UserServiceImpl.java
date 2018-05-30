package com.rkco.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rkco.dao.IUserDao;
import com.rkco.pojo.TXLUser;
import com.rkco.pojo.User;
import com.rkco.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Resource
	private IUserDao userDao;
	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}
	@Override
	public User getUserById(User user) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey1(user);
	}
	


}


