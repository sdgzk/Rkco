package com.rkco.dao;

import java.util.List;

import com.rkco.pojo.TXLUser;
import com.rkco.pojo.User;

public interface IUserDao {

    User selectByPrimaryKey(Integer id);
    User selectByPrimaryKey1(User record);
    
    

}