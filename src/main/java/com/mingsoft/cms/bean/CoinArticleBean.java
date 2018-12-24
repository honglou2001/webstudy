package com.mingsoft.cms.bean;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.sql.Timestamp;

public class CoinArticleBean {
    String fsymbol;
    BigInteger ftsid;
    BigInteger ftimestamp;
    BigDecimal fopen;
    BigDecimal fclose;
    BigDecimal fprice;
    BigDecimal fmax;
    BigDecimal flow;
    Timestamp faddtime;
    String ffrom;
    BigInteger fcount;
    String fversion;
    BigDecimal fvol;
    BigDecimal famount;
    BigDecimal fmarketcap;
    Timestamp fupdatetime;

    public String getFsymbol() {
        return fsymbol;
    }

    public void setFsymbol(String fsymbol) {
        this.fsymbol = fsymbol;
    }

    public BigInteger getFtsid() {
        return ftsid;
    }

    public void setFtsid(BigInteger ftsid) {
        this.ftsid = ftsid;
    }

    public BigInteger getFtimestamp() {
        return ftimestamp;
    }

    public void setFtimestamp(BigInteger ftimestamp) {
        this.ftimestamp = ftimestamp;
    }

    public BigDecimal getFopen() {
        return fopen;
    }

    public void setFopen(BigDecimal fopen) {
        this.fopen = fopen;
    }

    public BigDecimal getFclose() {
        return fclose;
    }

    public void setFclose(BigDecimal fclose) {
        this.fclose = fclose;
    }

    public BigDecimal getFprice() {
        return fprice;
    }

    public void setFprice(BigDecimal fprice) {
        this.fprice = fprice;
    }

    public BigDecimal getFmax() {
        return fmax;
    }

    public void setFmax(BigDecimal fmax) {
        this.fmax = fmax;
    }

    public BigDecimal getFlow() {
        return flow;
    }

    public void setFlow(BigDecimal flow) {
        this.flow = flow;
    }

    public Timestamp getFaddtime() {
        return faddtime;
    }

    public void setFaddtime(Timestamp faddtime) {
        this.faddtime = faddtime;
    }

    public String getFfrom() {
        return ffrom;
    }

    public void setFfrom(String ffrom) {
        this.ffrom = ffrom;
    }

    public BigInteger getFcount() {
        return fcount;
    }

    public void setFcount(BigInteger fcount) {
        this.fcount = fcount;
    }

    public String getFversion() {
        return fversion;
    }

    public void setFversion(String fversion) {
        this.fversion = fversion;
    }

    public BigDecimal getFvol() {
        return fvol;
    }

    public void setFvol(BigDecimal fvol) {
        this.fvol = fvol;
    }

    public BigDecimal getFamount() {
        return famount;
    }

    public void setFamount(BigDecimal famount) {
        this.famount = famount;
    }

    public BigDecimal getFmarketcap() {
        return fmarketcap;
    }

    public void setFmarketcap(BigDecimal fmarketcap) {
        this.fmarketcap = fmarketcap;
    }

    public Timestamp getFupdatetime() {
        return fupdatetime;
    }

    public void setFupdatetime(Timestamp fupdatetime) {
        this.fupdatetime = fupdatetime;
    }
}
