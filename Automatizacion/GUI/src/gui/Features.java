package gui;

import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;

public class Features {
	
	private List<Path> listFeatures;
	private static Features features;
	
	private Features() {
		listFeatures = new ArrayList<Path>();
	}
	
	public static Features getFeatures() {
		if(features == null)
			features = new Features();
		return features;
	}
	
	public void addFeature(Path feature) {
		listFeatures.add(feature);
	}
	
	public void removeFeature(Path feature) {
		listFeatures.remove(feature);
	}
	
	public void cleanFeatures() {
		listFeatures.clear();
	}
	
	public List<Path> getListFeatures(){
		return listFeatures;
	}

}
