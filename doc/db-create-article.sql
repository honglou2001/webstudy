Preparing: 

INSERT INTO basic ( basic_title, basic_description, basic_thumbnails, basic_hit, BASIC_CATEGORYID, BASIC_PEOPLEID, BASIC_Datetime, BASIC_updatetime, BASIC_APPID, 
BASIC_SORT, BASIC_MODELID, basic_display ) VALUES ( "XRP-201811-1", "description", "", 0, 155, 0, "2018-11-25 12:32:00", "2018-11-25 12:33:27", 1, 0, 8, 0 )  

--得到自增的basicid

[铭飞MS-V4.6.5 2018-11-25 12:33:27,481](DEBUG) - com.mingsoft.basic.dao.IBasicDao.saveEntity - (BaseJdbcLogger.java:145) ==> Parameters: XRP-201811(STRING), 
description(STRING), (STRING), 0(INTEGER), 155(INTEGER), 0(INTEGER), 2018-11-25 12:32:00.0(TIMESTAMP), 
2018-11-25 12:33:27.474(TIMESTAMP), 1(INTEGER), 0(INTEGER), 8(INTEGER), 0(INTEGER) 


 INSERT INTO cms_article ( ARTICLE_BASICID, ARTICLE_CONTENT, ARTICLE_AUTHOR, ARTICLE_TYPE, ARTICLE_SOURCE, ARTICLE_KEYWORD, ARTICLE_FREEORDER, ARTICLE_WEBID ) 
 VALUES ( ?, ?, ?, ?, ?, ?, ?, ? )  
 
 INSERT INTO cms_article ( ARTICLE_BASICID, ARTICLE_CONTENT, ARTICLE_AUTHOR, ARTICLE_TYPE, ARTICLE_SOURCE, ARTICLE_KEYWORD, ARTICLE_FREEORDER, ARTICLE_WEBID ) 
 VALUES ( 232, "<p>article content</p>", "Yo1", "","YO1", "keywords", 0, 1 )  
 
[铭飞MS-V4.6.5 2018-11-25 12:33:27,525](DEBUG) - com.mingsoft.cms.dao.IArticleDao.saveEntity - (BaseJdbcLogger.java:145) ==> Parameters: 231(INTEGER), 
<p>article content</p>(STRING), Yo(STRING), 
(STRING), Yo(STRING), keywords(STRING), 0(INTEGER), 1(INTEGER) 

UPDATE basic SET basic_title=?, basic_description=?, BASIC_THUMBNAILS=?, BASIC_UPDATETIME=?, BASIC_CATEGORYID=?, BASIC_Datetime=?, basic_display=? WHERE basic_id = ?  

UPDATE basic SET basic_title="XRP-201811-1", basic_description="description", BASIC_THUMBNAILS="",
 BASIC_UPDATETIME="2018-11-25 12:33:27", BASIC_CATEGORYID=155, BASIC_Datetime="2018-11-25 12:32:00", basic_display=0 WHERE basic_id = 232 
 
[铭飞MS-V4.6.5 2018-11-25 12:33:27,557](DEBUG) - com.mingsoft.basic.dao.IBasicDao.updateEntity - (BaseJdbcLogger.java:145) ==> Parameters: XRP-201811(STRING), description(STRING),
 (STRING), 2018-11-25 12:33:27.474(TIMESTAMP), 155(INTEGER), 2018-11-25 12:32:00.0(TIMESTAMP), 0(INTEGER), 231(INTEGER) 
 
 UPDATE cms_article SET ARTICLE_CONTENT=?, ARTICLE_AUTHOR=?, ARTICLE_TYPE=?, ARTICLE_SOURCE=?, ARTICLE_URL=?, ARTICLE_KEYWORD=?,
 ARTICLE_FREEORDER=?, ARTICLE_WEBID=? WHERE ARTICLE_BASICID = ?  
 
 UPDATE cms_article SET ARTICLE_CONTENT="<p>article content1</p>", ARTICLE_AUTHOR="Yo1", ARTICLE_TYPE="", ARTICLE_SOURCE="Yo1", ARTICLE_URL="/152/155\232.html", ARTICLE_KEYWORD="keywords",
 ARTICLE_FREEORDER=0, ARTICLE_WEBID=1 WHERE ARTICLE_BASICID = 232  
  
[铭飞MS-V4.6.5 2018-11-25 12:33:27,582](DEBUG) - com.mingsoft.cms.dao.IArticleDao.updateEntity - (BaseJdbcLogger.java:145) ==> 
Parameters: <p>article content</p>(STRING), Yo(STRING), (STRING),
 Yo(STRING), /152/155\231.html(STRING), keywords(STRING), 0(INTEGER), 1(INTEGER), 231(INTEGER)

use mysql
update user set authentication_string=password('123') where user='root';
flush privileges;
quit;
sudo service mysql restart