package myyy803.springboot.sb_tutorial_1_jpa;


import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import myyy803.springboot.sb_tutorial_1_jpa.entity.Route;
import myyy803.springboot.sb_tutorial_1_jpa.entity.Service;
import myyy803.springboot.sb_tutorial_1_jpa.entity.Stop;


/*
 * Make these simple JPA Hibernate tests 
 */
class TestRouteJPAMapping {

	@Test 
	void testShouldSaveAndLoadRoute() { 
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
				.addAnnotatedClass(Route.class)
				.addAnnotatedClass(Service.class)
				.addAnnotatedClass(Stop.class)
				.buildSessionFactory();
				
		// create session
				
		try {			
			// Clean up first
			Session session = factory.getCurrentSession();

			session.beginTransaction();
			
			Service retrievedService = session.get(Service.class, 1);
			if(retrievedService != null)
				session.delete(retrievedService);
			
			session.getTransaction().commit();

			// Now test the scenario
			
			session = factory.getCurrentSession();

			session.beginTransaction();
			
			Service service = new Service(1, "ServiceA");
			
			Route routeA = new Route(1, "RouteA", service, new ArrayList<Stop>());
			routeA.addStop(new Stop(1, "StopA", 0, 0));
			routeA.addStop(new Stop(2, "StopB", 100, 50));
			routeA.addStop(new Stop(3, "StopC", 78, 500));
			
			session.save(routeA);

			
			Route routeB = new Route(2, "RouteA", service, null);
			routeA.addStop(new Stop(4, "StopA", 0, 0));
			routeA.addStop(new Stop(5, "StopB", 100, 50));
			routeA.addStop(new Stop(6, "StopC", 78, 500));

			session.save(routeB);
			
			session.getTransaction().commit();
			
			session = factory.getCurrentSession();
			session.beginTransaction();
						
			Route retrievedRouteA = session.get(Route.class, 1);
			
			Route retrievedRouteB = session.get(Route.class, 2);
			
			Assertions.assertNotNull(retrievedRouteA);
			Assertions.assertNotNull(retrievedRouteB);
			
			session.getTransaction().commit();
		}
		finally {
			factory.close();
		}
	}
	 
	
	

}
