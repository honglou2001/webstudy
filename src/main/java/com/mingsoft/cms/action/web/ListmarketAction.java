package com.mingsoft.cms.action.web;

import com.mingsoft.basic.action.BaseAction;
import com.mingsoft.basic.entity.AppEntity;
import com.mingsoft.cms.biz.IArticleBiz;
import com.mingsoft.cms.parser.CmsParser;
import com.mingsoft.mdiy.parser.ListParser;
import com.mingsoft.parser.IParserRegexConstant;
import com.mingsoft.util.FileUtil;
import com.mingsoft.util.PageUtil;
import com.mingsoft.util.StringUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller(value = "webListmarketAction")
@RequestMapping("/cms")
public class ListmarketAction extends BaseAction {

    /**
     * 注入文章业务层
     */
    @Autowired
    private IArticleBiz articleBiz;
    /**
     * 文章解析器
     */
    @Autowired
    private CmsParser cmsParser;

    @RequestMapping(value = "/{searchId}/listmarket")
    @ResponseBody
    public void search(HttpServletRequest request, @PathVariable int searchId, HttpServletResponse response) {
        AppEntity app = this.getApp(request);
        // 获取模版名称
        String tmpName = app.getAppStyle();
        // 获取系统模版存放物理路径
        String tmpPath = getRealPath(request, IParserRegexConstant.REGEX_SAVE_TEMPLATE);
        // 读取模板内容
        String webSiteTmpPath = "";
        if (isMobileDevice(request) && !StringUtil.isBlank(app.getAppMobileStyle())) {
            // 根据站点id组装站点信息路径 格式：templets／站点ID/模版风格
            webSiteTmpPath = tmpPath + File.separator + app.getAppId() + File.separator + tmpName + File.separator
                    + app.getAppMobileStyle();
        } else {
            webSiteTmpPath = tmpPath + File.separator + app.getAppId() + File.separator + tmpName;
        }
        String htmlContent = FileUtil.readFile(webSiteTmpPath + File.separator + "listmarket.htm");
        List articleList = articleList(htmlContent);

        Map map = new HashMap();
        map.put(CmsParser.CUR_PAGE_NO, 1);
        map.put(CmsParser.SEARCH_LIST_ARTICLE, articleList);
        map.put(CmsParser.REQUEST_PARAM, this.assemblyRequestMap(request));

        htmlContent = replaceSearchValues(request, htmlContent);
        htmlContent = cmsParser.parse(htmlContent, app, null, articleList, null, map);
        this.outString(response, htmlContent);
    }

    private String replaceSearchValues(HttpServletRequest request, String htmlContent) {
        Map<String, String> basicField = getMapByProperties(com.mingsoft.mdiy.constant.Const.BASIC_FIELD);
        Map<String, String[]> field = request.getParameterMap(); // 读取请求字段;
        // 文章字段集合
        Map<String, Object> articleFieldName = new HashMap<String, Object>();
        // 自定义字段集合
        Map<String, String> diyFieldName = new HashMap<String, String>();
        // 遍历取字段集合
        if (field != null) {
            for (Map.Entry<String, String[]> entry : field.entrySet()) {
                if (entry != null) {
                    String value = entry.getValue()[0]; // 处理由get方法请求中文乱码问题
                    if (StringUtil.isBlank(value)) {
                        continue;
                    }
                    if (request.getMethod().equals(RequestMethod.GET)) { // 如果是get方法需要将请求地址参数转吗
                        value = StringUtil.isoToUTF8(value);
                    }
                    // 若为文章字段，则保存至文章字段集合；否则保存至自定义字段集合
                    if (!StringUtil.isBlank(basicField.get(entry.getKey())) && !StringUtil.isBlank(value)) {
                        articleFieldName.put(entry.getKey(), value);
                    } else {
                        if (!StringUtil.isBlank(value)) {
                            diyFieldName.put(entry.getKey(), value);
                        }

                    }
                    htmlContent = htmlContent.replaceAll("\\{ms:search." + entry.getKey() + "/\\}", value); // 将用户请求的值返回到页面上；

                }
            }
        }
        return htmlContent;
    }

    private List articleList(String htmlContent) {
        List articleList = new ArrayList();
        int size = 1;
        // 读取列表标签中中的
        Map<String, String> property = ListParser.listProperty(htmlContent, true);
        // 列表每页显示的数量
        if (StringUtil.string2Int(property.get(ListParser.LIST_SIZE)) > 0) {
            size = StringUtil.string2Int(property.get(ListParser.LIST_SIZE));
        }

        Map<String, List> map = new HashMap<String, List>();
        articleList = articleBiz.queryListForSearch(null, map, null, 1, null, null);
        return articleList;
    }
}
