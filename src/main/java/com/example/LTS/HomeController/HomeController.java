package com.example.LTS.HomeController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController
{
	@RequestMapping("/")
	public String index()
	{
		return "index";
	}
	@RequestMapping("login")
	public String login()
	{
		
		return "login";
	}
	@RequestMapping("menu")
	public String sports(HttpServletRequest req) {
		String name=req.getParameter("sports");		
		if(name.toString().equals("football")) {
			return "football";
		}
		else if(name.toString().equals("cricket")){
			return "cricket";
		}
		else if(name.toString().equals("tennis")){
			return "tennis";
		}
		else {
			return "index";
		}		
	}
	@RequestMapping("liveFootball")
	public String liveFootball()
	{
		return "liveFootball";
	}
	@RequestMapping("liveCricket")
	public String liveCricket()
	{
		return "liveCricket";
	}
	@RequestMapping("liveTennis")
	public String liveTennis()
	{
		return "liveTennis";
	}
	@RequestMapping("scheduleFootball")
	public String scheduleFootball()
	{
		return "scheduleFootball";
	}@RequestMapping("scheduleTennis")
	public String scheduleTennis()
	{
		return "scheduleTennis";
	}
	@RequestMapping("scheduleCricket")
	public String scheduleCricket()
	{
		return "scheduleCricket";
	}
	@RequestMapping("fixturesFootball")
	public String fixturesFootball()
	{
		return "fixturesFootball";
	}@RequestMapping("fixturesTennis")
	public String fixturesTennis()
	{
		return "fixturesTennis";
	}
	@RequestMapping("fixturesCricket")
	public String fixturesCricket()
	{
		return "fixturesCricket";
	}
	
    
}
