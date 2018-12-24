package com.mingsoft.cms.dao;

import com.mingsoft.cms.entity.ArticleEntity;

import java.util.List;

public interface ICoinArticleDao {
    public List<ArticleEntity> queryCurrencyTickers();
}
