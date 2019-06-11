package com.hexagon.bank.commons.utils;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class SimpleDateFormatersUtilsToSqlFormatConverter {
	public static Date stringFormatToSqlDateFormat(String inputDate) throws ParseException {
		if (inputDate != "") {
			SimpleDateFormat sdf1 = new SimpleDateFormat("dd-mm-yyyy");
			java.util.Date utildate = sdf1.parse(inputDate);
			Date sqlDate = new java.sql.Date(utildate.getTime());
			return sqlDate;
		}
		return null;
	}
}
