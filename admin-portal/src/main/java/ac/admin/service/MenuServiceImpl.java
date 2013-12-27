package ac.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
 
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ac.admin.dao.MenuDao;
import ac.admin.domain.MenuInfo;
 

/**
 * Author:Xuhui  Time:13-10-14 下午12:59
 */
@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;
    
    @Transactional
    public String getMenuInfos(Long id){
    	StringBuffer menuStr = new StringBuffer();
    	MenuInfo parent = menuDao.findOne(id);
    	List<MenuInfo> menus = menuDao.findAllByParent(parent);
    	int i=0;
    	for(MenuInfo menu:menus){
    		menuStr.append("<div class='accordion-group'>");
    		menuStr.append("<div class='accordion-heading'>");
    		menuStr.append("	<a href='#collapse"+menu.getId()+"' data-parent='#side_accordion' data-toggle='collapse' class='accordion-toggle'>");
    		menuStr.append("    	<i class='"+menu.getIcon()+"'></i> "+menu.getName());
    		menuStr.append("  	</a>");
    		menuStr.append("</div>");
    		menuStr.append("<div class='accordion-body "+(i++==0?"in":"")+" collapse' id='collapse"+menu.getId()+"'>");
    		menuStr.append("	<div class='accordion-inner'>");
    		menuStr.append(" 		<ul class='nav nav-list'>");
    		for(MenuInfo node :menu.getMenus()){
    			if(node.isIsleaf()==true){
    				menuStr.append("		<li><a href='javascript:void()' onclick='main(this,\""+node.getAction()+"\")'>"+node.getName()+"</a></li>");
    			}else{
    				menuStr.append("		<li class='"+node.getIcon()+"'>"+node.getName()+"</a></li>");
    				for(MenuInfo leaf :node.getMenus()){
    					menuStr.append("		<li><a href='javascript:void()' onclick='main(this,\""+leaf.getAction()+"\")'>&nbsp;&nbsp;"+leaf.getName()+"</a></li>");
    				}
    			}
    		}
    		menuStr.append("		</ul>");
    		menuStr.append("	</div>");
    		menuStr.append("</div>");
    		menuStr.append("</div>");
    	}
        return menuStr.toString();
    }
}
