package com.example.LTS.HomeController;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.example.LTS.model.Schedule;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;

import org.springframework.ui.Model; 
//import com.example.LTS.HomeController;
@RestController
public class Rest {
	@Autowired
	private RestTemplate restTemplate;
	
	@GetMapping("/cf")
	public ModelAndView getFixtures(Model model) throws JsonProcessingException, ParseException{
		
		String url="https://allsportsapi.com/api/cricket/?met=Fixtures&APIkey=9d7680c6925003aaebcf2082aefdfc1ed6cf41e1ce593e759f746ee9ccb61724&from=2019-03-13&to=2019-03-15";
		
		Object  objects=restTemplate.getForObject(url,Object.class);	
		
		ObjectMapper obj=new ObjectMapper();
		
		String json=obj.writeValueAsString(objects);
		
		JSONParser parser=new JSONParser();
		
		org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);
		
		JSONArray array=(JSONArray) result.get("result");
		
		org.json.simple.JSONObject data=(JSONObject) array.get(0);
		
		
		System.out.println("JsonObject  "+json); 
		
		System.out.println("Jsonarray  "+array);
		
		System.out.println("data  "+data);
		 ModelAndView cricket = new ModelAndView("/cricket");		
		 return cricket;
	}
	
	@GetMapping("/cs")
	public ModelAndView getSchedule(Model model,@RequestParam String fromDate,@RequestParam String toDate) throws JsonProcessingException, ParseException, java.text.ParseException{
		
		System.out.println("from date "+fromDate);
				
		System.out.println(fromDate+"  hello  "+toDate);
		 
		String url="https://allsportsapi.com/api/cricket/?met=Fixtures&APIkey=9d7680c6925003aaebcf2082aefdfc1ed6cf41e1ce593e759f746ee9ccb61724&from="+fromDate+"&to="+toDate;
		
		Object  objects=restTemplate.getForObject(url,Object.class);	
		
		ObjectMapper obj=new ObjectMapper();
		
		String json=obj.writeValueAsString(objects);
		
		JSONParser parser=new JSONParser();
		
		org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);
		
		List<Schedule> list=new ArrayList<Schedule>();
		
		JSONArray array=(JSONArray) result.get("result");
		
		for (int i=0;i<array.size();i++) {
		
		JSONObject ob=obj.convertValue(array.get(i), JSONObject.class);
		 
		System.out.println("JsonObject  "+ob); 
		
		System.out.println("Jsonarray "+array);
		
	//	System.out.println("data  "+schedule.getCountry_name());
		
	//	list.add(schedule);
		
		}
		
		ModelAndView cricket = new ModelAndView("/matchSchedules");	
		 
		 cricket.addObject(list);
		 
		 return cricket;
	}
	
	@GetMapping("/cl")
	public ModelAndView getPrevious(Model model) throws JsonProcessingException, ParseException{
		
		String url="https://allsportsapi.com/api/cricket/?met=Livescore&APIkey=9d7680c6925003aaebcf2082aefdfc1ed6cf41e1ce593e759f746ee9ccb61724";
		
		Object  objects=restTemplate.getForObject(url,Object.class);	
		
		ObjectMapper obj=new ObjectMapper();
		
		String json=obj.writeValueAsString(objects);
		
		JSONParser parser=new JSONParser();
		
		org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);
		
		if(result.get("result")!=null) {
		
		JSONArray array=(JSONArray) result.get("result");
		
		org.json.simple.JSONObject data=(JSONObject) array.get(0);
		
		
		System.out.println("JsonObject  "+json); 
		
		System.out.println("Jsonarray  "+array);
		
		System.out.println("data  "+data);
		
		}else {
			
		}
		 ModelAndView cricket = new ModelAndView("/cricket");		
		 return cricket;
	}
	
	@GetMapping("/cricket")
	public ModelAndView inde(Model model){		
		ModelAndView cricket = new ModelAndView("/cricket");		
		 return cricket;
	}
	
	

}
