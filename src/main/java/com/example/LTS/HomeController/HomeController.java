package com.example.LTS.HomeController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.example.LTS.model.Schedule;
import com.example.LTS.model.Scorecard;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;


@RestController
public class HomeController
{
	@RequestMapping("/")
	public ModelAndView index() {

		ModelAndView index = new ModelAndView("/index");

		return index;
	}
	@RequestMapping("liveCricket")
	public ModelAndView liveCricket()
	{
		ModelAndView liveCricket = new ModelAndView("/liveCricket");
		return liveCricket;
	}

	@RequestMapping("scheduleCricket")
	public ModelAndView scheduleCricket()
	{

		ModelAndView scheduleCricket = new ModelAndView("/scheduleCricket");
		return scheduleCricket;
	}

	@RequestMapping("matchSchedules")
	public ModelAndView matchSchedules()
	{

		ModelAndView matchSchedules = new ModelAndView("/matchSchedules");
		return matchSchedules;
	}
	@RequestMapping("Error")
	public ModelAndView Error()
	{

		ModelAndView Error = new ModelAndView("/Error");
		return Error;
	}



	@RequestMapping("fixturesCricket")
	public ModelAndView fixturesCricket()
	{
		ModelAndView fixturesCricket = new ModelAndView("/fixturesCricket");
	
		return fixturesCricket;
	}

	@RequestMapping("/displayPieChart")
	public ModelAndView pieChart(
			@RequestParam int t1 ,
			@RequestParam int t2) 
	{
		ModelAndView displayPieChart = new ModelAndView("thymeleaf/pieChart");
		System.out.println(t1 + "    ---->" +t2);
		displayPieChart.addObject("t1",t1);
		displayPieChart.addObject("t2",t2);
		return displayPieChart;

	}
	@Autowired
	private RestTemplate restTemplate;

	@GetMapping("/cf")
	public ModelAndView getFixtures(Model model,@RequestParam String id1) throws JsonProcessingException, ParseException,java.text.ParseException{

		System.out.println(id1+"  hello  ");
		ModelAndView cricket1;
		if(id1==null || id1.equalsIgnoreCase("")) {
			cricket1 = new ModelAndView("/Error");
			
			return cricket1;

		}else {
			String url="https://allsportsapi.com/api/cricket/?met=H2H&APIkey=e1d843ea8a9725835de1c4d3c205dd25b616fbe88d43ed1beb3d237b3257bdc2&firstTeamId="+id1+"&secondTeamId="+id1;

			Object  objects1=restTemplate.getForObject(url,Object.class);	

			ObjectMapper obj1=new ObjectMapper();

			String json1=obj1.writeValueAsString(objects1);

			JSONParser parser=new JSONParser();

			JSONObject result=(JSONObject) parser.parse(json1);

			JSONObject  array1=(JSONObject)result.get("result");


			JSONArray  array2=(JSONArray)array1.get("firstTeamResults");

			List<String> teamFixtures = new ArrayList<String>();
			List<String> teamScores = new ArrayList<String>();
			List<String> matchStatus = new ArrayList<String>();

			for (int i=0;i<array2.size();i++) {

				JSONObject ob1=obj1.convertValue(array2.get(i), JSONObject.class);

				Map<String,Object[]> s1=(Map<String,Object[]>)ob1;


				System.out.println("score cared"+s1.keySet()+"----->"+s1+"<-----------");


				String teamb=(String)ob1.get("event_home_team")+" vs "+(String) ob1.get("event_away_team");
				String a=(String)ob1.get("event_home_final_result");
				String b=(String)ob1.get("event_away_final_result");
				String c=a+" , "+b;
				String status =(String) ob1.get("event_status_info");
				
				
				matchStatus.add(status);
				teamFixtures.add(teamb);
				teamScores.add(c);
				System.out.println("printing a --------------------?>");
				System.out.println(a);

				System.out.println("teamb  "+teamb);
				

			}
			cricket1 = new ModelAndView("/matchFixtures");
			cricket1.addObject("teamFixtures",teamFixtures);
			cricket1.addObject("matchStatus",matchStatus);
			cricket1.addObject("teamScores",teamScores);
			

			return cricket1;
		
		}		
		
	}




	@GetMapping("/cs")
	public ModelAndView getSchedule(Model model,@RequestParam String fromDate,@RequestParam String toDate) throws JsonProcessingException, ParseException, java.text.ParseException{

		System.out.println("from date "+fromDate);

		System.out.println(fromDate+"  hello  "+toDate);
		ModelAndView cricket=null;

		if(fromDate==null || toDate==null || fromDate.equalsIgnoreCase("")||toDate.equalsIgnoreCase("")) {
			cricket = new ModelAndView("/Error");	

		}else {

			String url="https://allsportsapi.com/api/cricket/?met=Fixtures&APIkey=e1d843ea8a9725835de1c4d3c205dd25b616fbe88d43ed1beb3d237b3257bdc2&from="+fromDate+"&to="+toDate;

			Object  objects=restTemplate.getForObject(url,Object.class);	

			JsonFactory factory = new JsonFactory();
			factory.enable(Feature.ALLOW_SINGLE_QUOTES);

			ObjectMapper obj=new ObjectMapper(factory);

			obj.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES,true);

			obj.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);

			String json=obj.writeValueAsString(objects);

			JSONParser parser=new JSONParser();

			org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);

			List<Schedule> list=new ArrayList<Schedule>();

			List<String> teams=new ArrayList<String>();

			JSONArray array=(JSONArray) result.get("result");

			if(array!=null) 
			{

				List<String> players=new ArrayList<String>();
				List<String> runs = new ArrayList<String>();
				List<String> balls = new ArrayList<String>();
				List<String> fours = new ArrayList<String>();
				List<String> sixes = new ArrayList<String>();
				List<String> strikeRates = new ArrayList<String>();
				List<String> totalScores = new ArrayList<String>();

				for(int i=0;i<array.size();i++) {

					JSONObject ob=obj.convertValue(array.get(i), JSONObject.class);

					Map<String,List<LinkedHashMap<String,String>>> s = (Map<String,List<LinkedHashMap<String,String>>>)ob.get("scorecard");

					for (Entry<String, List<LinkedHashMap<String, String>>> entry : s.entrySet()) {

						List<LinkedHashMap<String, String>> value=entry.getValue();						

						for(int k=0;k<value.size();k++) 
						{							
							runs.add(value.get(k).get("R"));
							balls.add(value.get(k).get("B"));
							fours.add(value.get(k).get("4s"));
							sixes.add(value.get(k).get("6s"));
							strikeRates.add(value.get(k).get("SR"));

							LinkedHashMap<String, String> score=value.get(k);
							String player=score.get("player");
							players.add(player);

						}
					}					
					Object test_obj = s.get("RCB Innings");
					String teama=(String)ob.get("event_home_team")+" vs "+(String) ob.get("event_away_team");
					String a=(String)ob.get("event_home_final_result");
					String b=(String)ob.get("event_away_final_result");
					totalScores.add(a);
					totalScores.add(b);
					teams.add(teama);				

				}
				cricket = new ModelAndView("/schedules");

				cricket.addObject("fromDate",fromDate);
				cricket.addObject("toDate",toDate);
				cricket.addObject("players",players);
				cricket.addObject("runs",runs);
				cricket.addObject("balls",balls);
				cricket.addObject("fours",fours);
				cricket.addObject("sixes",sixes);
				cricket.addObject("strikeRates",strikeRates);
				cricket.addObject("team_names",teams);
				cricket.addObject("list",array);
				cricket.addObject("totalScores",totalScores);
				
			}else {
					
				cricket = new ModelAndView("/Error");
			}
		}


		return cricket;
	}

	@GetMapping("/matchSchedules")
	public ModelAndView getSchedules(Model model,
			@RequestParam String fromDate,
			@RequestParam String toDate,
			@RequestParam String teamFixture) throws JsonProcessingException, ParseException, java.text.ParseException{

		
		String[] fixtureOfTeam = teamFixture.split(" vs ", 2);
		
		for (String a : fixtureOfTeam) 
			System.out.println(a);

		
		ModelAndView cricket=null;

		if(fromDate==null || toDate==null || fromDate.equalsIgnoreCase("")||toDate.equalsIgnoreCase("")) {
			cricket = new ModelAndView("/Error");	

		}else {

			String url="https://allsportsapi.com/api/cricket/?met=Fixtures&APIkey=e1d843ea8a9725835de1c4d3c205dd25b616fbe88d43ed1beb3d237b3257bdc2&from="+fromDate+"&to="+toDate;

			Object  objects=restTemplate.getForObject(url,Object.class);	

			JsonFactory factory = new JsonFactory();
			factory.enable(Feature.ALLOW_SINGLE_QUOTES);

			ObjectMapper obj=new ObjectMapper(factory);

			obj.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES,true);



			obj.configure(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY, true);

			String json=obj.writeValueAsString(objects);

			JSONParser parser=new JSONParser();

			org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);

			List<Schedule> list=new ArrayList<Schedule>();

			List<String> teams=new ArrayList<String>();

			JSONArray array=(JSONArray) result.get("result");



			if(array!=null) 
			{
				List<String> players=new ArrayList<String>();
				List<String> batsmenRuns = new ArrayList<String>();
				List<String> bowlersRuns = new ArrayList<String>();
				List<String> balls = new ArrayList<String>();
				List<String> fours = new ArrayList<String>();
				List<String> sixes = new ArrayList<String>();
				List<String> strikeRates = new ArrayList<String>();
				List<String> totalScores = new ArrayList<String>();
				List<String> batsmenA = new ArrayList<String>();
				List<String> bowlersA = new ArrayList<String>();
				List<Integer> teamsWickets = new ArrayList<Integer>();
				List<String> batsmenB = new ArrayList<String>();
				List<String> bowlersB = new ArrayList<String>();
				List<String> overs = new ArrayList<String>();
				List<String> M = new ArrayList<String>();
				List<String> W = new ArrayList<String>();
				List<String> ER = new ArrayList<String>();
				
				int aPer=0;
				int bPer=0;
				
				for(int i=0;i<array.size();i++) {

					JSONObject ob=obj.convertValue(array.get(i), JSONObject.class);

					if(ob.get("event_home_team").equals(fixtureOfTeam[0]) && (ob.get("event_away_team").equals(fixtureOfTeam[1])) ) {

						System.out.println(ob.get("event_home_team"));
						System.out.println("hello");
						
						System.out.println(array.get(i));

						Map<String,List<LinkedHashMap<String,String>>> s = (Map<String,List<LinkedHashMap<String,String>>>)ob.get("scorecard");
						System.out.println(s);
						
					

						int count=0;
						
						
						for (Entry<String, List<LinkedHashMap<String, String>>> entry : s.entrySet()) {

							List<LinkedHashMap<String, String>> value=entry.getValue();
						
							System.out.println(value);

							for(int k=0;k<value.size();k++) 
							{
								if(value.get(k).get("type").equals("Batsman"))
								{
									balls.add(value.get(k).get("B"));
									batsmenRuns.add(value.get(k).get("R"));
								}
								else if(value.get(k).get("type").equals("Bowler"))
								{
									bowlersRuns.add(value.get(k).get("R"));
								}
								
								
								fours.add(value.get(k).get("4s"));
								sixes.add(value.get(k).get("6s"));
								strikeRates.add(value.get(k).get("SR"));
								

								LinkedHashMap<String, String> score=value.get(k);
								String player=score.get("player");
								if(value.get(k).get("type").equals("Bowler"))
								{
									
									overs.add(value.get(k).get("O"));
									M.add(value.get(k).get("M"));
									W.add(value.get(k).get("W"));
									ER.add(value.get(k).get("ER"));
									if(count==0) {
										
									bowlersA.add(player);
									}else {
										
											bowlersB.add(player);
										
									}
									
								}
								else if(value.get(k).get("type").equals("Batsman"))
								{
									if(count==0) {
										batsmenA.add(player);
										}else {
											
												batsmenB.add(player);
											
										}
								}
								if((value.get(k).get("type").equals("Bowler")) || value.get(k).get("type").equals("Batsman") )
									players.add(player);

							}
							count++;

						}
						Object test_obj = s.get("RCB Innings");
						

						String teama=(String)ob.get("event_home_team")+" vs "+(String) ob.get("event_away_team");

						String a=(String)ob.get("event_home_final_result");
						String b=(String)ob.get("event_away_final_result");
						
						String s1=a.substring(0,a.indexOf("/") );
						String s2=b.substring(0,b.indexOf("/") );
						
						int t1=Integer.parseInt(s1);
						System.out.println(t1);
						int t2=Integer.parseInt(s2);
						int tot=t1+t2;
						System.out.println(tot);
						aPer=(t1*100)/tot;
						 bPer=(t2*100)/tot;
						
						
						String wktsA = a.substring(a.indexOf("/") + 1);
						wktsA = wktsA.substring(0,wktsA.indexOf(" "));
						
						String wktsB = b.substring(b.indexOf("/") + 1);
						wktsB = wktsB.substring(0,wktsB.indexOf(" "));
						
						teamsWickets.add(Integer.parseInt(wktsA));
						teamsWickets.add(Integer.parseInt(wktsB));
						System.out.println("just checking -- >"+wktsA+"  " +wktsB);
						totalScores.add(a);
						totalScores.add(b);
						teams.add(teama);	
						
					}
					String[] fixtureOfteam = teamFixture.split(" vs ", 2);
					
					for (String a : fixtureOfteam) 
						System.out.println(a);
					
					cricket = new ModelAndView("/matchSchedules");
					cricket.addObject("bowlersA",bowlersA);
					cricket.addObject("batsmenA",batsmenA);
					cricket.addObject("bowlersB",bowlersB);
					cricket.addObject("batsmenB",batsmenB);
					cricket.addObject("teamFixture",teamFixture);
					cricket.addObject("fromDate",fromDate);
					cricket.addObject("toDate",toDate);
					cricket.addObject("players",players);
					cricket.addObject("batsmenRuns",batsmenRuns);
					cricket.addObject("bowlersRuns",bowlersRuns);
					cricket.addObject("balls",balls);
					cricket.addObject("fours",fours);
					cricket.addObject("sixes",sixes);
					cricket.addObject("strikeRates",strikeRates);
					cricket.addObject("team_names",teams);
					cricket.addObject("list",array);
					cricket.addObject("totalScores",totalScores);
					cricket.addObject("totalWickets",teamsWickets);
					cricket.addObject("overs",overs);
					cricket.addObject("M",M);
					cricket.addObject("W",W);
					cricket.addObject("ER",ER);
					cricket.addObject("team1",aPer);
					cricket.addObject("team2",bPer);
				
				}
				}else 
				{
					
					cricket = new ModelAndView("/matchSchedules");	
				}
			}

		System.out.println("doneeeeeeeeeeeeeeeeeeeeeee");
			return cricket;
		}

	@GetMapping("/cl")
	public ModelAndView getLive(Model model) throws JsonProcessingException, ParseException{

		String url="https://allsportsapi.com/api/cricket/?met=Livescore&APIkey=e1d843ea8a9725835de1c4d3c205dd25b616fbe88d43ed1beb3d237b3257bdc2";

		Object  objects=restTemplate.getForObject(url,Object.class);	

		ObjectMapper obj=new ObjectMapper();

		String json=obj.writeValueAsString(objects);

		JSONParser parser=new JSONParser();

		org.json.simple.JSONObject result=(org.json.simple.JSONObject) parser.parse(json);
		
		ModelAndView cricket=null;

		if(result.get("result")!=null) {

			JSONArray array=(JSONArray) result.get("result");

			org.json.simple.JSONObject data=(JSONObject) array.get(0);


			System.out.println("JsonObject  "+json); 

			System.out.println("Jsonarray  "+array);

			System.out.println("data  "+data);

		}else {
            System.out.println("no data");            
            cricket = new ModelAndView("/liveCricket");	
            
		}		
			return cricket;
	}

	@GetMapping("/cricket")
	public ModelAndView inde(Model model){		
		ModelAndView cricket = new ModelAndView("/cricket");		
		return cricket;
	}


	public void mapEntityToPropertyModel(Object entity, Object model) {
		if (entity == null || model == null) {
			return;
		}
		JSONObject scorecared = null;
		if (entity instanceof Scorecard) {
			scorecared = (JSONObject) entity;
		} else {
			System.out.println("mapping failed due to wrong entity type passed in ");
			return;
		}


		BeanUtils.copyProperties(entity,scorecared);
	}

}
