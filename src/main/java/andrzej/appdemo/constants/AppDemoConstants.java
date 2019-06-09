package andrzej.appdemo.constants;

import javax.persistence.Transient;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class AppDemoConstants {
	
	public static final String TAK = "tak";
	
	public static final String NIE = "nie";
	
	public static final String EMAIL_PATTERN = "^[a-zA-z0-9]+[\\._a-zA-Z0-9]*@[a-zA-Z0-9]+{2,}\\.[a-zA-Z]{2,}[\\.a-zA-Z0-9]*$";
	
	public static final String PASSWORD_PATTERN = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\\!\\@\\#\\$\\*])(?!.*\\s).{8,12}$";

	public static final Map<String, Integer> warTableMap;
			static {
				Map<String, Integer> aMap = new HashMap<>();
				aMap.put("A1", 0);
				aMap.put("A2", 1);
				aMap.put("A3", 2);
				aMap.put("A4", 3);
				aMap.put("A5", 4);
				aMap.put("A6", 5);
				aMap.put("A7", 6);
				aMap.put("A8", 7);
				aMap.put("B1", 8);
				aMap.put("B2", 9);
				aMap.put("B3", 10);
				aMap.put("B4", 11);
				aMap.put("B5", 12);
				aMap.put("B6", 13);
				aMap.put("B7", 14);
				aMap.put("B8", 15);
				aMap.put("C1", 16);
				aMap.put("C2", 17);
				aMap.put("C3", 18);
				aMap.put("C4", 19);
				aMap.put("C5", 20);
				aMap.put("C6", 21);
				aMap.put("C7", 22);
				aMap.put("C8", 23);
				aMap.put("D1", 24);
				aMap.put("D2", 25);
				aMap.put("D3", 26);
				aMap.put("D4", 27);
				aMap.put("D5", 28);
				aMap.put("D6", 29);
				aMap.put("D7", 30);
				aMap.put("D8", 31);
				aMap.put("E1", 32);
				aMap.put("E2", 33);
				aMap.put("E3", 34);
				aMap.put("E4", 35);
				aMap.put("E5", 36);
				aMap.put("E6", 37);
				aMap.put("E7", 38);
				aMap.put("E8", 39);
				aMap.put("F1", 40);
				aMap.put("F2", 41);
				aMap.put("F3", 42);
				aMap.put("F4", 43);
				aMap.put("F5", 44);
				aMap.put("F6", 45);
				aMap.put("F7", 46);
				aMap.put("F8", 47);
				aMap.put("G1", 48);
				aMap.put("G2", 49);
				aMap.put("G3", 50);
				aMap.put("G4", 51);
				aMap.put("G5", 52);
				aMap.put("G6", 53);
				aMap.put("G7", 54);
				aMap.put("G8", 55);
				aMap.put("H1", 56);
				aMap.put("H2", 57);
				aMap.put("H3", 58);
				aMap.put("H4", 59);
				aMap.put("H5", 60);
				aMap.put("H6", 61);
				aMap.put("H7", 62);
				aMap.put("H8", 63);
				warTableMap = Collections.unmodifiableMap(aMap);
			}


}
