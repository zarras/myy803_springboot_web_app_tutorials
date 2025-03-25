package myy803.diplomas_mgt_app_skeleton.model.strategies;

import java.util.List;

import myy803.diplomas_mgt_app_skeleton.model.Application;
import myy803.diplomas_mgt_app_skeleton.model.Student;

public abstract class TemplateStrategyAlgorithm implements BestApplicantStrategy {

	@Override
	public Student findBestApplicant(List<Application> applications) {
		// TODO Auto-generated method stub
		return null;
	}
	
	protected abstract int compareApplications(Application currentBest, Application candidateBest);

}
