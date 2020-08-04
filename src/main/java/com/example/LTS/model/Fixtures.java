package com.example.LTS.model;
import java.util.ArrayList;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.json.simple.JSONObject;

/*
@Entity
@Table(name="fixtures")*/
public class Fixtures {
	@Id
	private String event_key;
	private String event_date_start;
	private String event_date_stop;
	private String event_time;
	private String event_home_team;
	private String home_team_key;
	private String event_away_team;
	private String away_team_key;
	private String event_service_home;
	private String event_service_away;
	private String event_home_final_result;
	private String event_away_final_result;
	private String event_home_rr;
	private String event_away_rr;
	private String event_status;
	private String event_status_info;
	private String country_name;
	private String league_name;
	private String league_key;
	private String league_round;
	private String league_season;
	private String event_live;
	private String event_home_team_logo;
	private String event_away_team_logo;
	private ArrayList<?> scorecard;
	private ArrayList<?> ball_by_ball;
	private ArrayList<?> wickets;
	private ArrayList<?> extra;
	private JSONObject lineups;
	public String getEvent_key() {
		return event_key;
	}
	public void setEvent_key(String event_key) {
		this.event_key = event_key;
	}
	public String getEvent_date_start() {
		return event_date_start;
	}
	public void setEvent_date_start(String event_date_start) {
		this.event_date_start = event_date_start;
	}
	public String getEvent_date_stop() {
		return event_date_stop;
	}
	public void setEvent_date_stop(String event_date_stop) {
		this.event_date_stop = event_date_stop;
	}
	public String getEvent_time() {
		return event_time;
	}
	public void setEvent_time(String event_time) {
		this.event_time = event_time;
	}
	public String getEvent_home_team() {
		return event_home_team;
	}
	public void setEvent_home_team(String event_home_team) {
		this.event_home_team = event_home_team;
	}
	public String getHome_team_key() {
		return home_team_key;
	}
	public void setHome_team_key(String home_team_key) {
		this.home_team_key = home_team_key;
	}
	public String getEvent_away_team() {
		return event_away_team;
	}
	public void setEvent_away_team(String event_away_team) {
		this.event_away_team = event_away_team;
	}
	public String getAway_team_key() {
		return away_team_key;
	}
	public void setAway_team_key(String away_team_key) {
		this.away_team_key = away_team_key;
	}
	public String getEvent_service_home() {
		return event_service_home;
	}
	public void setEvent_service_home(String event_service_home) {
		this.event_service_home = event_service_home;
	}
	public String getEvent_service_away() {
		return event_service_away;
	}
	public void setEvent_service_away(String event_service_away) {
		this.event_service_away = event_service_away;
	}
	public String getEvent_home_final_result() {
		return event_home_final_result;
	}
	public void setEvent_home_final_result(String event_home_final_result) {
		this.event_home_final_result = event_home_final_result;
	}
	public String getEvent_away_final_result() {
		return event_away_final_result;
	}
	public void setEvent_away_final_result(String event_away_final_result) {
		this.event_away_final_result = event_away_final_result;
	}
	public String getEvent_home_rr() {
		return event_home_rr;
	}
	public void setEvent_home_rr(String event_home_rr) {
		this.event_home_rr = event_home_rr;
	}
	public String getEvent_away_rr() {
		return event_away_rr;
	}
	public void setEvent_away_rr(String event_away_rr) {
		this.event_away_rr = event_away_rr;
	}
	public String getEvent_status() {
		return event_status;
	}
	public void setEvent_status(String event_status) {
		this.event_status = event_status;
	}
	public String getEvent_status_info() {
		return event_status_info;
	}
	public void setEvent_status_info(String event_status_info) {
		this.event_status_info = event_status_info;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getLeague_name() {
		return league_name;
	}
	public void setLeague_name(String league_name) {
		this.league_name = league_name;
	}
	public String getLeague_key() {
		return league_key;
	}
	public void setLeague_key(String league_key) {
		this.league_key = league_key;
	}
	public String getLeague_round() {
		return league_round;
	}
	public void setLeague_round(String league_round) {
		this.league_round = league_round;
	}
	public String getLeague_season() {
		return league_season;
	}
	public void setLeague_season(String league_season) {
		this.league_season = league_season;
	}
	public String getEvent_live() {
		return event_live;
	}
	public void setEvent_live(String event_live) {
		this.event_live = event_live;
	}
	public String getEvent_home_team_logo() {
		return event_home_team_logo;
	}
	public void setEvent_home_team_logo(String event_home_team_logo) {
		this.event_home_team_logo = event_home_team_logo;
	}
	public String getEvent_away_team_logo() {
		return event_away_team_logo;
	}
	public void setEvent_away_team_logo(String event_away_team_logo) {
		this.event_away_team_logo = event_away_team_logo;
	}
	public ArrayList<?> getScorecard() {
		return scorecard;
	}
	public void setScorecard(ArrayList<?> scorecard) {
		this.scorecard = scorecard;
	}
	public ArrayList<?> getBall_by_ball() {
		return ball_by_ball;
	}
	public void setBall_by_ball(ArrayList<?> ball_by_ball) {
		this.ball_by_ball = ball_by_ball;
	}
	public ArrayList<?> getWickets() {
		return wickets;
	}
	public void setWickets(ArrayList<?> wickets) {
		this.wickets = wickets;
	}
	public ArrayList<?> getExtra() {
		return extra;
	}
	public void setExtra(ArrayList<?> extra) {
		this.extra = extra;
	}
	public JSONObject getLineups() {
		return lineups;
	}
	public void setLineups(JSONObject lineups) {
		this.lineups = lineups;
	}
	@Override
	public String toString() {
		return "Schedule [event_key=" + event_key + ", event_date_start=" + event_date_start + ", event_date_stop="
				+ event_date_stop + ", event_time=" + event_time + ", event_home_team=" + event_home_team
				+ ", home_team_key=" + home_team_key + ", event_away_team=" + event_away_team + ", away_team_key="
				+ away_team_key + ", event_service_home=" + event_service_home + ", event_service_away="
				+ event_service_away + ", event_home_final_result=" + event_home_final_result
				+ ", event_away_final_result=" + event_away_final_result + ", event_home_rr=" + event_home_rr
				+ ", event_away_rr=" + event_away_rr + ", event_status=" + event_status + ", event_status_info="
				+ event_status_info + ", country_name=" + country_name + ", league_name=" + league_name
				+ ", league_key=" + league_key + ", league_round=" + league_round + ", league_season=" + league_season
				+ ", event_live=" + event_live + ", event_home_team_logo=" + event_home_team_logo
				+ ", event_away_team_logo=" + event_away_team_logo + ", scorecard=" + scorecard + ", ball_by_ball="
				+ ball_by_ball + ", wickets=" + wickets + ", extra=" + extra + ", lineups=" + lineups + "]";
	}
	
	
}
