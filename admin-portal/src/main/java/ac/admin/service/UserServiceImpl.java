package ac.admin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ac.admin.dao.UserDao;
import ac.admin.domain.AccountInfo;
import ac.admin.domain.UserInfo;

import java.util.List;

/**
 * Author:ZhangJianPing  Time:11-9-14,下午5:10
 */
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    @Transactional
    public boolean login(String username, String password) {
   
    	return true;
    }
}
