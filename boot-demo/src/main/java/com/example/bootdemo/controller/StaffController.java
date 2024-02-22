package com.example.bootdemo.controller;
import com.example.bootdemo.model.Staff;
import com.example.bootdemo.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/staff")
public class StaffController {

    @Autowired
    private StaffService staffService;

    @GetMapping("/all")
    public List<Staff> getAllStaff() {
        return staffService.findAllStaff();
    }

    @GetMapping("/page")
    public List<Staff> getStaffByPage(@RequestParam("pageNumber") int pageNumber, @RequestParam("pageSize") int pageSize) {
        // 计算偏移量，页码从1开始
        int offset = (pageNumber - 1) * pageSize;
        return staffService.findStaffByPage(offset, pageSize);
    }

}

