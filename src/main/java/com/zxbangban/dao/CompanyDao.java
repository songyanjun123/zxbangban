package com.zxbangban.dao;

import com.zxbangban.entity.Company;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyDao {
   List<Company> queryAllByCtype(int ctype);
}
