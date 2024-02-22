package com.example.bootdemo.service.Impl;

import com.example.bootdemo.mapper.StaffMapper;
import com.example.bootdemo.model.Staff;
import com.example.bootdemo.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {
    @Autowired
    private StaffMapper staffMapper;
    @Override
    public List<Staff> findAllStaff() {
        return staffMapper.findAllStaff();
    }

    @Override
    public List<Staff> findStaffByPage(int pageNumber, int pageSize) {
        return staffMapper.findStaffByPage(pageNumber,pageSize);
    }
}
