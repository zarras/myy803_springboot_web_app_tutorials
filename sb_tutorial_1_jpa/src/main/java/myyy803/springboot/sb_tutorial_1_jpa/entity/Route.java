package myyy803.springboot.sb_tutorial_1_jpa.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "route")
public class Route {
	@Id
	@Column(name = "id")
	private int id;
	
	@Column(name = "name")
	private String name;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="service_id")
	private Service service;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="route_id")
	private List<Stop> stops;
	
	public Route() {
		super();
		this.stops = new ArrayList<Stop>();
	}

	
	public Route(int id, String name, Service service, List<Stop> stops) {
		super();
		this.id = id;
		this.name = name;
		this.service = service;
		this.stops = stops;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public List<Stop> getStops() {
		return stops;
	}

	public void setStops(List<Stop> stops) {
		this.stops = stops;
	}
	
	public void addStop(Stop stop) {
		stops.add(stop);
	}
	
	@Override
	public String toString() {
		return "Route [id=" + id + ", name=" + name + ", service=" + service + "]";
	}
	
}
