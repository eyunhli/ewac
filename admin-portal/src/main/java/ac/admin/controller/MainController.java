package ac.admin.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ac.admin.common.DesEncrypter;
import ac.admin.dao.MenuDao;
import ac.admin.dao.UserDao;
import ac.admin.domain.MenuInfo;
import ac.admin.domain.UserInfo;
import ac.admin.service.MenuService;
import ac.admin.service.UserService;

@Controller
public class MainController {

	@Autowired
	MenuService menuService;
	@Autowired
	MenuDao menuDao;
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/index")
	public ModelAndView index(Model model) {
		List<MenuInfo> menus = menuDao.findAllByParentIsNull();
		model.addAttribute("menus", menus);
		return new ModelAndView("forward:/index.jsp");
	}
	
	@RequestMapping(value="/menus.json")  
	@ResponseBody  
	public String menus(Long id) {
		System.out.println(id);
		String menus  = menuService.getMenuInfos(id);
		System.out.println(menus);
		return menus;
	}
	 
	@RequestMapping(value="/login")  
	@ResponseBody  
	public ModelAndView login(String username,String password,HttpSession session) {
		UserInfo user = userDao.findByUsername(username);
		DesEncrypter des = new DesEncrypter();
		ModelAndView mav = new ModelAndView("redirect:index");
		if(user!=null){
			if(user.getPassword().equals(des.encrypt(password))){
				user.setLastupdate(new Date());
				userDao.save(user);
				session.setAttribute("username", user.getUsername());
				return mav;
			}
		}
		mav = new ModelAndView("forward:/login.jsp");
		mav.addObject("msg","username or password is error!");
		return mav;
	}
	
	@RequestMapping(value="/logout")  
	@ResponseBody  
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mav = new ModelAndView("forward:/login.jsp");
		return mav;
	}
}
