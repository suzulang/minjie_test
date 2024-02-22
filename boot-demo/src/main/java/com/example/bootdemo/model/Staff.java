package com.example.bootdemo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Staff {
    private Integer id; // 对应表的ID字段
    private String name; // 对应表的NAME字段
    private Integer deptId; // 对应表的DEPT_ID字段，与DEPT_JIANGTIANPEI表的ID字段建立外键关系

}
