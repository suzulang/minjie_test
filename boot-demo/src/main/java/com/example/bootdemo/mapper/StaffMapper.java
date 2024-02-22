package com.example.bootdemo.mapper;

import com.example.bootdemo.model.Staff;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface StaffMapper {
    List<Staff> findAllStaff();
    List<Staff> findStaffByPage(@Param("offset") int offset, @Param("pageSize") int pageSize);
}
