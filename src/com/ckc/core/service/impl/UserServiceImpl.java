package com.ckc.core.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ckc.core.dao.UserDao;
import com.ckc.core.po.User;
import com.ckc.core.service.UserService;

@Service("UserService")
@Transactional
public class UserServiceImpl implements UserService{
	@Autowired
	public UserDao userDao;

	@Override
	public User findUser(String usercode, String password) {
		User user=this.userDao.findUser(usercode, password);
		return user;
	}
	
}
