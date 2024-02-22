package com.example.bootdemo.service;

import java.util.List;
import java.util.Map;

public interface SqlQueryService {
    List<Map<String, Object>> executeSql(String sql);
}
