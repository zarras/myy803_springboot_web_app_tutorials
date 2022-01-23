package myy803.springboot.sb_tutorial_0_jpa;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;


import myy803.springboot.sb_tutorial_0_jpa.entity.Stop;

/*
 * Make these simple JPA Hibernate tests 
 */
class TestStopJPAMapping {

	@Test 
	void testShouldSaveAndLoadStop() { 
		SessionFactory factory = new Configuration()
									.configure("hibernate.cfg.xml")
									.addAnnotatedClass(Stop.class)
									.buildSessionFactory();
				
		// create session
		Session session = factory.getCurrentSession();
				
		try {			
			Stop stop = new Stop(1, "StopA", 1000.0, 200.0); 
			
			session.beginTransaction();
			
			session.save(stop);
		
			session.getTransaction().commit();
		
			session = factory.getCurrentSession();
			session.beginTransaction();
						
			Stop retrievedStop = session.get(Stop.class, 1);
			
			Assertions.assertNotNull(retrievedStop); 

			// Clean up test
			session.delete(retrievedStop);
			
			session.getTransaction().commit();
		}
		finally {
			factory.close();
		}
	}
	 
	
	

}
