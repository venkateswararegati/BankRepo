package com.hexagon.bank.dao;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.exception.ConstraintViolationException;
import org.springframework.stereotype.Repository;

import com.hexagon.bank.bo.DepositInfo;
import com.hexagon.bank.bo.PersonAddressDetails;
import com.hexagon.bank.bo.PersonDetails;
import com.hexagon.bank.bo.PersonEducationalDetails;
import com.hexagon.bank.bo.WithdrawInfo;
import com.hexagon.bank.commons.utils.HibernateUtils;
import com.hexagon.bank.exceptions.customexceptions.CustomViolationException;
import com.hexagon.bank.info.accountInfo.AccountInfo;
import com.hexagon.bank.mvc.modelclasses.ExistedAndUpdatedProfileDetails;

/**
 * @author venky To perform persistance operations on database.
 */
@Repository
public class AccountCreationDaoImpl implements AccountCreationDao {

	/**
	 * @author venky
	 * @param persondetails,personaddressdetails,personEducationalDetails.
	 * @return int This will perform save operations on database .
	 *
	 */
	@Override
	public String savePersonDeatilsInDb(PersonDetails persondetails, PersonAddressDetails personaddressdetails,
			PersonEducationalDetails personEducationalDetails) throws Exception {
		System.out.println("hiiiiiii");
		// entity creation
		PersonDetails persondetailsdao = persondetails;
		// session creation
		Session session = null;
		// transaction creation
		Transaction tx = null;
		// serializable id it will return ; if {success 1 will return } else { 0 will
		// return}
		String value = null;
		DepositInfo deposit = null;
		// setting data to entity class
		persondetailsdao.setPersonAddressDetials(personaddressdetails);
		persondetailsdao.setPersonEducationalDetails(personEducationalDetails);
		// session object creation from session factory

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			System.out.println(persondetailsdao);
			System.out.println("hiiiiiii");

			tx = session.beginTransaction();
			// save data into database
			value = (String) session.save(persondetailsdao);

			System.out.println("The int value is" + value);
			// create deposit instace to create new table for saving type
			deposit = new DepositInfo();
			deposit.setAccNo(value);
			deposit.setName(persondetailsdao.getName());
			deposit.setAmount(0.0);
			session.save(deposit);
			// commit if no exception is raised
			tx.commit();
		} catch (ConstraintViolationException e) {
			System.out.println("ConstraintViolationException");
		} catch (Exception e) {
			System.out.println( e.getMessage());
			e.printStackTrace();
			tx.rollback();
			throw new CustomViolationException();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return value;
	}

	/**
	 * @author venky
	 * @param person_id
	 * @return int This will perform retrieve operations on database .
	 *
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<PersonDetails> RetrivePersonDataBasedOnId(String personName) throws Exception {
		Session session = null;
		// transaction creation
		Transaction tx = null;
		List<PersonDetails> list = null;
		// session object creation from session factory
		String name = "'" + personName.toUpperCase() + "'";
		String hql = "from PersonDetails where name=" + name + "";

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			System.out.println("hiiiiiii");

			tx = session.beginTransaction();
			// retrive data from the databse based on id
			Query query = session.createQuery(hql);
			list = query.getResultList();
			// commit if no exception is raised
			tx.commit();
		} catch (NullPointerException e) {
			tx.rollback();
			// e.printStackTrace();
			throw new NullPointerException();
			// rollback if any exception raised
		} catch (Exception e) {
			tx.rollback();
			// e.printStackTrace();
			throw new NullPointerException();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return list;
	}

	/**
	 * @author venky
	 * @param account
	 *            info
	 * @return person details this methos is used to fetch the data based on account
	 *         info
	 *
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<PersonDetails> RetrivePersonDetrailsBasedOnAccountInfo(AccountInfo info) throws Exception {
		// this is confirmation query
		// select * from PERSON_DETAILS where person_id='0112143300002379' and
		// NAME='BHANU PRATHAP';
		Session session = null;
		// transaction creation
		Transaction tx = null;
		List<PersonDetails> list = null;
		// session object creation from session factory
		String accountNo = "'" + info.getAccountHolderGenerationId() + "'";
		String name = "'" + info.getHolderName().toUpperCase() + "'";
		String hql = "from PersonDetails where id=" + accountNo + "and name=" + name + "";

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			System.out.println("hiiiiiii");

			tx = session.beginTransaction();
			// retrive data from the databse based on id
			Query query = session.createQuery(hql);
			list = query.getResultList();
			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			// e.printStackTrace();
			throw new NullPointerException();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return list;
	}

	@Override
	public PersonDetails updateCustomerDataToExistedData(ExistedAndUpdatedProfileDetails updateData) throws Exception {
		Session session = null;
		// transaction creation
		Transaction tx = null;
		PersonDetails details = null;
		//update deposit details along with other details
		DepositInfo deposit=null;
		boolean chickingforUpdate = false;
		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			System.out.println("hiiiiiii");

			tx = session.beginTransaction();
			//create instance of deposit info class
			deposit = new DepositInfo();
			// retrive data from the databse based on id
			details = session.get(PersonDetails.class, updateData.getId());
			if (details != null) {
				if (updateData.getName() != null && updateData.getName().length() != 0) {
					details.setName(updateData.getName());
					//in deposit table also modifying 
					deposit.setName(updateData.getName());
					chickingforUpdate = true;
				}
				if (updateData.getFname() != null && updateData.getFname().length() != 0) {
					details.setFname(updateData.getFname());
					chickingforUpdate = true;
				}
				if (updateData.getDate() != null && updateData.getDate().length() != 0) {
					details.setDate(updateData.getDate());
					chickingforUpdate = true;
				}
				if (updateData.getMail() != null && updateData.getMail().length() != 0) {
					details.setMail(updateData.getMail());
					chickingforUpdate = true;
				}
				if (updateData.getMnumber() != null && updateData.getMnumber().length() != 0) {
					details.setMnumber(Long.valueOf(updateData.getMnumber()));
					chickingforUpdate = true;
				}
				if (updateData.getAdharNumber() != null && updateData.getAdharNumber().length() != 0) {
					details.setAdharNumber(Long.valueOf(updateData.getAdharNumber()));
					chickingforUpdate = true;
				}
				if (updateData.getPannumber() != null && updateData.getPannumber().length() != 0) {
					details.setPannumber(updateData.getPannumber());
					chickingforUpdate = true;
				}
				if (updateData.getVillage() != null && updateData.getVillage().length() != 0) {
					details.getPersonAddressDetials().setVillage(updateData.getVillage());
					chickingforUpdate = true;
				}
				if (updateData.getCity() != null && updateData.getCity().length() != 0) {
					details.getPersonAddressDetials().setCity(updateData.getCity());
					chickingforUpdate = true;
				}
				if (updateData.getDistrict() != null && updateData.getDistrict().length() != 0) {
					details.getPersonAddressDetials().setDistrict(updateData.getDistrict());
					chickingforUpdate = true;

				}
				if (updateData.getState() != null && updateData.getState().length() != 0) {
					details.getPersonAddressDetials().setState(updateData.getState());
					chickingforUpdate = true;
				}
				if (updateData.getPincode() != null && updateData.getPincode().length() != 0) {
					details.getPersonAddressDetials().setPincode(Long.valueOf(updateData.getPincode()));
					chickingforUpdate = true;
				}
				if (chickingforUpdate != false) {
					// after setting data then update details with updated data
					details = (PersonDetails) session.merge(details);
					System.out.println(details);
					//set data to deposit
					deposit.setAccNo(details.getId());
					session.merge(deposit);
					
				} else
					details = null;
			}

			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			throw new Exception();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}

		return details;
	}

	@Override
	public DepositInfo depositAmount(DepositInfo deposit) throws Exception {

		// session creation
		Session session = null;
		// transaction creation
		Transaction tx = null;
		DepositInfo depositedupdatedDetails = null;
		String depositQuery = "update DepositInfo set amount= amount+" + deposit.getAmount() + " where accNo='"
				+ deposit.getAccNo() + "' and name='" + deposit.getName().toUpperCase() + "'";
		// select query to get updated record from db
		String selectQuery = "from  DepositInfo  where accNo='" + deposit.getAccNo() + "' and name='"
				+ deposit.getName().toUpperCase() + "'";
		System.out.println(selectQuery );
		System.out.println("Deposit query::" + depositQuery);
		// serializable id it will return ; if {success 1 will return } else { 0 will
		// return}

		// setting data to entity class

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			tx = session.beginTransaction();
			// save data into database
			// this is used to update the the amount or to deposit amount
			Query query1 = session.createQuery(depositQuery);
			query1.executeUpdate();
			// this query is is used to get updated data from dp to display to end user
			Query query = session.createQuery(selectQuery);
			depositedupdatedDetails = (DepositInfo) query.getSingleResult();
			System.out.println(depositedupdatedDetails);
			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tx.rollback();
			throw e;
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return depositedupdatedDetails;
	}

	@Override
	public WithdrawInfo withdrawAmount(WithdrawInfo withdraw) throws Exception {
		// session creation
		Session session = null;
		// transaction creation
		Transaction tx = null;
		WithdrawInfo withdrawdetails = null;
		DepositInfo afterWithdrawlRemainingAmount = null;
		// serializable id it will return ; if {success 1 will return } else { 0 will
		String withdrawQuery = "update DepositInfo set amount=amount-" + withdraw.getAmount() + "where accNo='"
				+ withdraw.getAccNo() + "' and name='" + withdraw.getName().toUpperCase() + "'";
		System.out.println("withdraw query::" + withdrawQuery);
		// select query to get updated record from db
		String selectQuery = "from  DepositInfo  where accNo='" + withdraw.getAccNo() + "' and name='"
				+ withdraw.getName().toUpperCase() + "'";
		// serializable id it will return ; if {success 1 will return } else { 0 will
		// return}

		// setting data to entity class

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			tx = session.beginTransaction();
			// save data into database
			Query query = session.createQuery(withdrawQuery);
			query.executeUpdate();
			// this query is is used to get updated data from dp to display to end user
			Query query1 = session.createQuery(selectQuery);
			afterWithdrawlRemainingAmount = (DepositInfo) query1.getSingleResult();
			System.out.println(afterWithdrawlRemainingAmount);
			if (afterWithdrawlRemainingAmount != null) {
				withdrawdetails = new WithdrawInfo();
				withdrawdetails.setAccNo(afterWithdrawlRemainingAmount.getAccNo());
				withdrawdetails.setAmount(afterWithdrawlRemainingAmount.getAmount());
				withdrawdetails.setName(afterWithdrawlRemainingAmount.getName());
				withdrawdetails.setWithdrawTime(afterWithdrawlRemainingAmount.getDepositedTime());
			}

			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			// e.printStackTrace();
			tx.rollback();
			throw e;
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}

		return withdrawdetails;
	}

	@Override
	public WithdrawInfo getHowMuchAmmountAvailable(WithdrawInfo withdraw) throws Exception {
		// session creation
		Session session = null;
		// transaction creation
		Transaction tx = null;
		WithdrawInfo withdrawdetails = null;
		// serializable id it will return ; if {success 1 will return } else { 0 will
		String toFindAvailableAmountQuery = "from  DepositInfo where accNo='" + withdraw.getAccNo() + "' and name='"
				+ withdraw.getName() .toUpperCase()+ "'";
		System.out.println("withdraw query::" + toFindAvailableAmountQuery);
		// serializable id it will return ; if {success 1 will return } else { 0 will
		// return}

		// setting data to entity class

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			tx = session.beginTransaction();
			// save data into database
			Query query = session.createQuery(toFindAvailableAmountQuery);

			DepositInfo depositedupdatedDetails = (DepositInfo) query.getSingleResult();
			if (depositedupdatedDetails != null) {
				withdrawdetails = new WithdrawInfo();
				withdrawdetails.setAccNo(depositedupdatedDetails.getAccNo());
				withdrawdetails.setAmount(depositedupdatedDetails.getAmount());
				withdrawdetails.setName(depositedupdatedDetails.getName());
				withdrawdetails.setWithdrawTime(depositedupdatedDetails.getDepositedTime());
			}

			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			// e.printStackTrace();
			tx.rollback();
			throw new CustomViolationException();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return withdrawdetails;
	}
	/**
	 * @author venky
	 * @param account
	 *            info
	 * @return deposit info this methods is used to fetch the data based on account
	 *         info
	 *
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<DepositInfo> RetriveDepositInfoBasedOnAccountInfo(AccountInfo info) throws Exception {
		// this is confirmation query
		// select * from PERSON_DETAILS where person_id='0112143300002379' and
		// NAME='BHANU PRATHAP';
		Session session = null;
		// transaction creation
		Transaction tx = null;
		List<DepositInfo> list = null;
		// session object creation from session factory
		String accountNo = "'" + info.getAccountHolderGenerationId() + "'";
		String name = "'" + info.getHolderName().toUpperCase() + "'";
		String hql = "from DepositInfo where accNo=" + accountNo + "and name=" + name + "";

		try {
			session = HibernateUtils.sessionFactory().openSession();
			// transaction to apply commit or rollback based on id
			System.out.println("hiiiiiii");

			tx = session.beginTransaction();
			// retrive data from the databse based on id
			Query query = session.createQuery(hql);
			list = query.getResultList();
			// commit if no exception is raised
			tx.commit();
		} catch (Exception e) {
			tx.rollback();
			// e.printStackTrace();
			throw new NullPointerException();
			// rollback if any exception raised
		} finally {
			if (session != null) {
				session.close();
			}
		}
		return list;
	}

}
