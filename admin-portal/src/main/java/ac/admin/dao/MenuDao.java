package ac.admin.dao;

import org.springframework.data.repository.CrudRepository;
import ac.admin.domain.MenuInfo;

import java.util.List;

/**
 *  Author:Xuhui  Time:13-10-14 下午12:48
 */
public interface MenuDao extends CrudRepository<MenuInfo, Long> {
  
    public List<MenuInfo> findAllByParent(MenuInfo parent);
    
    public List<MenuInfo> findAllByParentIsNull();
    
}
