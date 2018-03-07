package com.zxbangban.service;

import com.zxbangban.entity.Company;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CompanyService {
    List<Company> queryAllByCtype(int ctype);
}
