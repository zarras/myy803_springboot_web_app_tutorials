package myy803.diplomas_mgt_app_skeleton.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import myy803.diplomas_mgt_app_skeleton.dao.ApplicationDAO;
import myy803.diplomas_mgt_app_skeleton.model.Application;

@Service
public class ApplicationServiceImpl implements ApplicationService{
	@Autowired
	private ApplicationDAO applicationDAO;
	
	@Override
	public void save(Application application) {
		applicationDAO.save(application);		
	}
}
