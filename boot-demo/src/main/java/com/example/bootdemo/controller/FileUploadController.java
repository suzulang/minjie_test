package com.example.bootdemo.controller;

import com.example.bootdemo.service.SqlQueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RestController
public class FileUploadController {

    private final SqlQueryService sqlQueryService;

    @Autowired
    public FileUploadController(SqlQueryService sqlQueryService) {
        this.sqlQueryService = sqlQueryService;
    }

    @PostMapping("/upload")
    public List<Map<String, Object>> uploadAndExecute(@RequestParam("file") MultipartFile file) throws Exception {
        if (file.isEmpty()) {
            throw new IllegalArgumentException("File is empty");
        }

        // 读取SQL文件内容
        String sql = new BufferedReader(new InputStreamReader(file.getInputStream()))
                .lines().collect(Collectors.joining("\n"));

        // 执行SQL查询
        return sqlQueryService.executeSql(sql);
    }
}
