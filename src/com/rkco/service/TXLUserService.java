package com.rkco.service;

import java.util.List;

import com.rkco.pojo.TXLUser;

public interface TXLUserService {
	List<TXLUser> getAlluser();
	List<TXLUser> selectID(int id );
	int inserTXLuser(TXLUser user);
	int updateTXLuser(TXLUser user);
	int deleteTXLuser(TXLUser user);
}
