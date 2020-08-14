package com.example.LTS.model;
import java.util.ArrayList;
import java.util.Arrays;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/*
@Entity
@Table(name="fixtures")*/
public class Fixtures {
	@Id
	private JSONArray H2H;

	public JSONArray getH2H() {
		return H2H;
	}

	public void setH2H(JSONArray h2h) {
		H2H = h2h;
	}

	@Override
	public String toString() {
		return "Fixtures [H2H=" + H2H + "]";
	}
	
}
