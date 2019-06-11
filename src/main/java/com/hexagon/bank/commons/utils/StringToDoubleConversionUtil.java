package com.hexagon.bank.commons.utils;

public class StringToDoubleConversionUtil {
	public static Double stringToDoubleConversion(String doubleValue) {
		if (doubleValue == "" || doubleValue == null || doubleValue == " ") {
			return 0.0;
		} else {
			return Double.valueOf(doubleValue);
		}
	}
}
