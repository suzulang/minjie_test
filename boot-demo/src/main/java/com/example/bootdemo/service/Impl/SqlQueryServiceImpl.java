package com.example.bootdemo.service.Impl;

import com.example.bootdemo.mapper.SqlQueryMapper;
import com.example.bootdemo.service.SqlQueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Service
public class SqlQueryServiceImpl implements SqlQueryService {

    private final SqlQueryMapper sqlQueryMapper;

    @Autowired
    public SqlQueryServiceImpl(SqlQueryMapper sqlQueryMapper) {
        this.sqlQueryMapper = sqlQueryMapper;
    }

    @Override
    public List<Map<String, Object>> executeSql(String sql) {
        return sqlQueryMapper.executeDynamicSql(sql);
    }
}
