package com.zxbangban.service.Impl;

import com.zxbangban.dao.CompanyDao;
import com.zxbangban.entity.Company;
import com.zxbangban.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompanyServiceImpl implements CompanyService {
    @Autowired
    private CompanyDao companyDao;

    public List<Company> queryAllByCtype(int ctype){return companyDao.queryAllByCtype(ctype); }

}
