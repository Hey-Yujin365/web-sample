package controllers;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import kr.co.jhta.model2.annotation.Controller;
import kr.co.jhta.model2.annotation.RequestMapping;
import kr.co.jhta.model2.constant.HttpMethod;
import service.UserService;
import vo.User;

@Controller
public class HomeController {
	
	// 공용으로 쓰는 Service는 멤버변수로 생성한다.
	private final UserService userService = new UserService();
	
	@RequestMapping(path = "/home.do")
	public String home(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		return "home.jsp";
	}
	
	@RequestMapping(path = "/login.do", method = HttpMethod.GET)
	public String loginform(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		return "loginform.jsp";
	}
	
		
	@RequestMapping(path = "/register.do", method = HttpMethod.GET)
	public String form(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		return "registerform.jsp";
	}
	
	@RequestMapping(path = "/login.do", method = HttpMethod.POST)
	public String login(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		try {
			User user = userService.login(id, password);
			HttpSession session = req.getSession();
			session.setAttribute("LOGIN_USER", user);
			
			return "redirect:home.do";
		} catch (Exception ex) {
			return "redirect:login.do?error=fail";
		}
	}
	
	@RequestMapping(path ="/logout.do")
	public String logout(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// false로 준 이유 : 세션이 획득 될 경우에만 파괴하기 위해서 false로 준다.
		// 세션이 없으면 굳이 만들어서 파괴할 이유가 없기 때문에 true혹은 생략하지 않는다.
		HttpSession session = req.getSession(false);
		if (session != null) {
			session.invalidate();
		}
		
		return "redirect:home.do";
	}
	
	@RequestMapping(path = "/register.do", method = HttpMethod.POST)
	public String register(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// 요청 파라미터값 조회하기
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = req.getParameter("name");
		String tel = req.getParameter("tel");
		String email = req.getParameter("email");
		
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		user.setName(name);
		user.setTel(tel);
		user.setEmail(email);
		
		userService.register(user);
		
		return "redirect:home.do";
	}
}
