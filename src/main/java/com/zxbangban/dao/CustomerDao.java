package com.zxbangban.dao;

import com.zxbangban.entity.Customer;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by pingyr on 2017/7/15.
 */
@Repository
public interface CustomerDao {
    int newCustomer(@Param("customer")Customer customer);
    List<Customer> queryAll();
    List<Customer> queryByTel(String tel);

    /**
     * 删除
     * @param id
     * @return int
     */
    int delete(long id);
    List<Customer> queryByNotes(@Param("notes") String notes);
}
