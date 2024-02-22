SELECT
    s.ID AS '职工编号',
    s.NAME AS '职工名称',
    s.DEPT_ID AS '所属部门编号',
    d.NAME AS '所属部门名称',
    d.PARENT_ID AS '所属上级部门编号',
    pd.NAME AS '所属上级部门名称'
FROM
    STAFF_JIANGTIANPEI s
    INNER JOIN DEPT_JIANGTIANPEI d ON s.DEPT_ID = d.ID
    LEFT JOIN DEPT_JIANGTIANPEI pd ON d.PARENT_ID = pd.ID;