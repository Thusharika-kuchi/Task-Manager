package utility;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import java.lang.invoke.MethodHandles;
//import org.apache.logging.log4j.LogManager;
//import org.apache.logging.log4j.Logger;

public class Log {

	private static Logger logger = LogManager.getLogger(MethodHandles.lookup().lookupClass());

	public static void error(Exception e) {
		logger.error(e);
	}

}
