package com.mingsoft.cms.dao;

import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import com.mingsoft.cms.bean.CoinArticleBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class DataOperation {

    public static final java.util.logging.Logger LOG =
            java.util.logging.Logger.getLogger(DataOperation.class.getName());

    private static final String connUrl = "jdbc:mysql://localhost:3306/dbmcmsopen?useUnicode=true&characterEncoding=" +
            "utf-8&zeroDateTimeBehavior=convertToNull&autoReconnect=true&allowMultiQueries=true";
    private static final String connDriver = "com.mysql.jdbc.Driver";
    private static String connUser = "root";
    private static String connPwd = "Long!@#327";


    private DataOperation() {
    }

    /**
     * @return Connection
     * @method getConn() get database connection
     */
    private static Connection getConn() {
        Connection conn = null;
        try {
            Class.forName(connDriver); // classLoader,load the database driver
            conn = (Connection) DriverManager.getConnection(connUrl, connUser, connPwd);
        } catch (Exception e) {
            LOG.log(Level.SEVERE, e.toString());
        }
        return conn;
    }

    public static void main(String[] args) {
        queryData();
    }

    public static String isNullConvert(Object obj){

        if (obj!=null){
            return obj.toString();
        }
        return "";
    }
    public static List<CoinArticleBean> queryData() {
        List<CoinArticleBean> lists = new ArrayList<>();

        Connection conn = getConn();
        if (conn == null) {
            return lists;
        }
        PreparedStatement stmt = null;
        ResultSet rs = null;


        try {

            String sql = "SELECT   fid," +
                    "  fsymbol," +
                    "  ftsid," +
                    "  ftimestamp," +
                    "  fopen," +
                    "  fclose," +
                    "  fprice," +
                    "  fmax," +
                    "  flow," +
                    "  faddtime," +
                    "  ffrom," +
                    "  fcount," +
                    "  fversion," +
                    "  fvol," +
                    "  famount," +
                    "  fmarketcap," +
                    "  fupdatetime FROM" +
                    "  dbmcmsopen.currence_tickers a" +
                    "  JOIN (SELECT fsymbol AS bsymbol,MAX(faddtime) baddtime FROM dbmcmsopen.currence_tickers WHERE faddtime >= DATE_ADD(NOW(),INTERVAL -20 DAY) GROUP BY fsymbol) b " +
                    "  ON a.fsymbol=b.bsymbol AND a.faddtime=b.baddtime" +
                    "  WHERE faddtime >= DATE_ADD(NOW(), INTERVAL -20 DAY)   LIMIT 0,?";


            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 100);

            rs = stmt.executeQuery();

            while (rs.next()) {
                CoinArticleBean article = new CoinArticleBean();
                article.setFsymbol(rs.getString(2));
                article.setFtsid(BigInteger.valueOf(rs.getLong(3)));
                article.setFtimestamp(BigInteger.valueOf(rs.getLong(4)));
                article.setFopen(rs.getBigDecimal(5));
                article.setFclose(rs.getBigDecimal(6));
                article.setFprice(rs.getBigDecimal(7));

                article.setFmax(rs.getBigDecimal(8));
                article.setFlow(rs.getBigDecimal(9));
                article.setFaddtime(rs.getTimestamp(10));
                article.setFfrom(rs.getString(11));
                article.setFcount(BigInteger.valueOf(rs.getLong(12)));
                article.setFversion(rs.getString(13));
                article.setFvol(rs.getBigDecimal(14));
                article.setFamount(rs.getBigDecimal(15));
                article.setFmarketcap(rs.getBigDecimal(16));
                article.setFupdatetime(rs.getTimestamp(17));

                lists.add(article);
            }

            return lists;

        } catch (Exception e) {
            LOG.log(Level.SEVERE, e.toString());
            return lists;
        } finally {
            // close the connection
            closeConn(conn, stmt, null, rs);
        }
    }

    private static void closeConn(Connection conn, PreparedStatement stmt, Statement st, ResultSet rs) {
        // close the connection
        if (conn != null) {
            try {
                conn.close();
                if (stmt != null) {
                    stmt.close();
                }
                if (st != null) {
                    st.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                LOG.log(Level.SEVERE, e.toString());
            }
        }
    }
}