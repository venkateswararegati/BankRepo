package com.hexagon.bank.customidgenerator;

import java.io.Serializable;
import java.sql.*;
import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SharedSessionContractImplementor;
import org.hibernate.id.IdentifierGenerator;

public class CustomAccountIdGenerator implements IdentifierGenerator {
	private static String currentCustomerDateofBirth;

	public static void currentCustomerDateofBirthFormatter(String dateofBirth) {
		String[] dateformat = dateofBirth.split("-");
		currentCustomerDateofBirth = "" + dateformat[0] + "" + dateformat[1] + "" + dateformat[2] + "";
	}

	@Override
	public Serializable generate(SharedSessionContractImplementor session, Object arg1) throws HibernateException {

		Connection connection = session.connection();

		try {
			Statement statement = connection.createStatement();

			ResultSet rs = statement.executeQuery("select ACCOUNT_SEQ_GEN_ID.NEXTVAL from DUAL");

			if (rs.next()) {
				int id = rs.getInt(1);
				String generatedId = currentCustomerDateofBirth + "0000" + new Integer(id).toString();
				System.out.println("Generated Id: " + generatedId);
				System.out.println(generatedId);
				return generatedId;
			}
		} catch (SQLException e) {
			throw new HibernateException(e);
		}

		return null;
	}
}
