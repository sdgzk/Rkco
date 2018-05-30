package com.rkco.dao;

import java.util.List;

import com.rkco.pojo.TXLUser;
import com.rkco.pojo.User;

public interface TXLUserDao {

    List<TXLUser> selectAll();
    List<TXLUser> selectID(int id );
    int inserTXLuser(TXLUser user);
    int updateTXLuser(TXLUser user);
    int deleteTXLuser(TXLUser user);
    
}