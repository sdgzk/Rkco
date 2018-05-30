package com.rkco.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.rkco.dao.TXLUserDao;
import com.rkco.pojo.TXLUser;
import com.rkco.service.TXLUserService;

@Service("txluserService")
public class TXLUserServiceImpl implements TXLUserService {
	@Resource
	private TXLUserDao userDao;
	
	@Override
	public List<TXLUser> getAlluser() {
		return this.userDao.selectAll();
	}
	
	@Override
	public int inserTXLuser(TXLUser user) {
		return this.userDao.inserTXLuser(user);
	}
	
	
	@Override
	public int updateTXLuser(TXLUser user) {
		return this.userDao.updateTXLuser(user);
	}
	
	@Override
	public int deleteTXLuser(TXLUser user) {
		return this.userDao.deleteTXLuser(user);
	}
	@Override
	public List<TXLUser> selectID(int id) {
		return this.userDao.selectID(id);
	}
	
}


