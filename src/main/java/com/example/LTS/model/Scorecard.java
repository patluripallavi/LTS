package com.example.LTS.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;


public class Scorecard {
	
	private String innings;
	
	private String player;
	
	private String type;
	
	private String status;
	
	@JsonProperty("R")
	private String runs;
	
	@JsonProperty("B")
	private String balls;
	
	@JsonProperty("Min")
	private String min;
	
	@JsonProperty("4s")
	private String fours;
	
	@JsonProperty("6s")
	private String sixs;
	
	@JsonProperty("SR")
	private String strikerate;
	@JsonProperty("O")
	private String overs;
	
	@JsonProperty("M")
	private String maiden;
	@JsonProperty("W")
	private String wickets;
	@JsonProperty("ER")
	private String er;
	
	@JsonProperty("pos")
	private String pos;


	
	
	public String getPos() {
		return pos;
	}

	public void setPos(String pos) {
		this.pos = pos;
	}

	public String getOvers() {
		return overs;
	}

	public void setOvers(String overs) {
		this.overs = overs;
	}

	public String getMaiden() {
		return maiden;
	}

	public void setMaiden(String maiden) {
		this.maiden = maiden;
	}

	public String getWickets() {
		return wickets;
	}

	public void setWickets(String wickets) {
		this.wickets = wickets;
	}

	public String getEr() {
		return er;
	}

	public void setEr(String er) {
		this.er = er;
	}

	public String getInnings() {
		return innings;
	}

	public void setInnings(String innings) {
		this.innings = innings;
	}

	public String getPlayer() {
		return player;
	}

	public void setPlayer(String player) {
		this.player = player;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRuns() {
		return runs;
	}

	public void setRuns(String runs) {
		this.runs = runs;
	}

	public String getBalls() {
		return balls;
	}

	public void setBalls(String balls) {
		this.balls = balls;
	}

	public String getMin() {
		return min;
	}

	public void setMin(String min) {
		this.min = min;
	}

	public String getFours() {
		return fours;
	}

	public void setFours(String fours) {
		this.fours = fours;
	}

	public String getSixs() {
		return sixs;
	}

	public void setSixs(String sixs) {
		this.sixs = sixs;
	}

	public String getStrikerate() {
		return strikerate;
	}

	public void setStrikerate(String strikerate) {
		this.strikerate = strikerate;
	}
	
	

}
