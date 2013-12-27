package ac.admin.dao;

import org.springframework.data.repository.CrudRepository;

import ac.admin.domain.UserInfo;

/**
 * Author:ZhangJianPing  Time:11-9-4,下午8:50
 */
public interface UserDao extends CrudRepository<UserInfo, Long> {

    public UserInfo findByUsername(String username);

}
