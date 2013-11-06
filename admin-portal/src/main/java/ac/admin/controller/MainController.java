package ac.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import ac.admin.dao.MenuDao;
import ac.admin.domain.MenuInfo;
import ac.admin.service.MenuService;
import ac.admin.service.UserService;

@Controller
public class MainController {

	@Autowired
	MenuService menuService;
	@Autowired
	MenuDao menuDao;
	
	@RequestMapping("/index")
	public ModelAndView index(Model model) {
		List<MenuInfo> menus = menuDao.findAllByParentIsNull();
		model.addAttribute("menus", menus);
		return new ModelAndView("forward:/index.jsp");
	}
	
	@RequestMapping(value="/menus.json")  
	@ResponseBody  
	public String helloWorld(Long id) {
		System.out.println(id);
		String menus  = menuService.getMenuInfos(id);
		System.out.println(menus);
		return menus;
	}
	 

}
