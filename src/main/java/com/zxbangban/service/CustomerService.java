package com.zxbangban.service;

import com.zxbangban.entity.Customer;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by pingyr on 2017/7/15.
 */
@Service
public interface CustomerService {
    int newCustomer(Customer customer);
    List<Customer> queryAll();
    List<Customer> queryByTel(String tel);
    int delete(long id);
}
