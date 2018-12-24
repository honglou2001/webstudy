package com.mingsoft.cms.dao;

import com.mingsoft.cms.entity.ArticleEntity;
import java.util.List;

public class CoinArticleDao implements ICoinArticleDao {

    // JDBC 驱动名及数据库 URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost:3306/RUNOOB";

    // 数据库的用户名与密码，需要根据自己的设置
    static final String USER = "root";
    static final String PASS = "123456";

    @Override
    public List<ArticleEntity> queryCurrencyTickers() {
        return null;
    }
}
