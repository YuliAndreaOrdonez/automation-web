package gui;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.Date;


public class HtmlToPdf {
	public static void execute() throws IOException{
		
		String directory = System.getProperty("user.dir");
		File directoryPath = new File(directory + "\\..\\AutomatizacionPortalTransaccionalPopular\\target\\site\\serenity");
		File[] files=directoryPath.listFiles(new FilenameFilter() {
			@Override
			public boolean accept(File dir, String name) {
				return name.endsWith(".html");
			}
		});
		Date now = new Date();
		createFolder(now);
		for(File file : files) {
					generatePDF(file.getAbsolutePath(),file,now);
					
		}

	    

	    System.out.println("Done!");
	  }
	
	private static void createFolder(Date now) {
		File directory = new File(System.getProperty("user.dir")+"\\..\\AutomatizacionPortalTransaccionalPopular\\"+now.getTime());
		directory.mkdir();
	}

	public static void generatePDF(String inputHtmlPath,File file,Date now)
	{
		
		Runtime rt = Runtime.getRuntime();
		try {
			Process p =rt.exec("cmd /c start /wait cmd.exe /K \"  wkhtmltopdf "+inputHtmlPath+" "+System.getProperty("user.dir")+"\\..\\AutomatizacionPortalTransaccionalPopular\\"+now.getTime()+"\\"+file.getName()+".pdf && exit \"");
			p.waitFor();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}