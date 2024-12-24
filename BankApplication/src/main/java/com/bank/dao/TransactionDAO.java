package com.bank.dao;

import java.util.List;

import com.bank.dto.Transaction;

public interface TransactionDAO {
	public boolean insertTransaction(Transaction t);
//	public boolean getTransaction(long Tran_Id);
	public List getTransaction(long user);
	public List getTransaction();

	}


