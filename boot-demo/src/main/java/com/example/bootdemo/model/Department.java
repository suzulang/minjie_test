package com.example.bootdemo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Department {
    private Integer id; // 对应表的ID字段
    private String name; // 对应表的NAME字段
    private Integer parentId; // 对应表的PARENT_ID字段
}
