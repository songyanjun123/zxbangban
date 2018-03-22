package com.zxbangban.service.Impl;

import com.zxbangban.dao.CustomerDao;
import com.zxbangban.entity.Customer;
import com.zxbangban.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/15.
 */
@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerDao customerDao;
    public int newCustomer(Customer customer) {
        return customerDao.newCustomer(customer);
    }

    public List<Customer> queryAll() {
        return customerDao.queryAll();
    }

    public List<Customer> queryByTel(String tel) {
        return customerDao.queryByTel(tel);
    }

    public int delete(long id) {
        return customerDao.delete(id);
    }

    public List<Customer> queryByNotes(String notes){return customerDao.queryByNotes(notes);};
}
