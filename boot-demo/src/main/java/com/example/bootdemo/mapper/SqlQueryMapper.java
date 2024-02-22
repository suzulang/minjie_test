package com.example.bootdemo.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

@Mapper
public interface SqlQueryMapper {
    List<Map<String, Object>> executeDynamicSql(@Param("sql") String sql);
}
