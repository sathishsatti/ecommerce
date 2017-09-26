package controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.glass.ui.View;

import org.springframework.stereotype;
import org.springframework.beans.factory.annotation.Autowired;

@Controller
public class IndexController
{
		@Autowired
		UserDAoImpl userDaoImpl;
		@RequestMapping("/")
		public String index()

	{
			return "index";
	}
		@requestmapping("/register")
		public string go To register()
		{
}
		return "register";
		@requestmapping(value="/saveRegister".Method=RequestMethod.POST)
		public Model and viewsave register
		(@modelAtrribute("user")User user)Binding result
		{
			Model and View MV=new model and view();
			if (res.hasErrors())
			{
				MV.set viewName("register");
			}
			else
			{
				user.setrole("ROLE_user");
				UserDaoImpl.insert User(user);
				MV.setviewname("index");
				return MV;	
			}
		}