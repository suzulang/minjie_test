package com.example.bootdemo.service;

import com.example.bootdemo.model.Staff;

import java.util.List;

public interface StaffService {
    List<Staff> findAllStaff();

    List<Staff> findStaffByPage(int pageNumber, int pageSize);
}
