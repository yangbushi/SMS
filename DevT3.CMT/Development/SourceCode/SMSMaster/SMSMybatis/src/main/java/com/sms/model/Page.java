package com.sms.model;

import java.util.List;

import com.sms.util.MybatisConst;

/**
 * 
 * 项目名称：SMSMybatis  
 * 类全名:com.sms.model.Page    
 * 类描述：记录分页相关参数的类    
 * 创建人：Abdurahman   
 * 创建时间：2015-11-27 下午1:58:09    
 * 修改备注：    
 * @version  jdk1.7 
 * 
 * Copyright (c) 2015, rhm.victor@163.com All Rights Reserved.
 */
public class Page {

    @SuppressWarnings("rawtypes")
    private List list;//可以是任意实体的list

    private int pagesize = MybatisConst.DEFAULT_PAGE_SIZE;;// 每页显示的数据量,具有默认值

    private int totalrecord;// 总记录数

    private int totalpage;// 记录总页数

    private int pagenum;// 用户想看那一页

    private int startindex;// 代表用户想看页面数据 开头位置 5 51 从数据库哪一个位置开始查询

    private int startPage;// 记住jsp显示的起始页

    private int endPage;// 记住jsp的终止页码

    private String url;
    
    public Page(int totalrecord, int pagenum)
    {

        this.totalrecord = totalrecord;
        if (this.totalrecord % this.pagesize == 0)
        {
            this.totalpage = this.totalrecord / this.pagesize;
        } else
        {
            this.totalpage = this.totalrecord / this.pagesize + 1;

        }

        this.pagenum = pagenum;// 1
        this.startindex = (this.pagenum - 1) * this.pagesize;

        // 根据用户想看的pagenum 算出jsp起始页

        if (this.totalpage < 10)
        {
            this.startPage = 1;
            this.endPage = this.totalpage;
        } else
        {
            this.startPage = this.pagenum - 4;
            this.endPage = this.pagenum + 5;

            if (this.startPage < 1)
            {
                this.startPage = 1;
                this.endPage = 10;

            }
            if (this.endPage > this.totalpage)
            {
                this.endPage = this.totalpage;
                this.startPage = this.totalpage - 9;

            }

        }

    }

    public String getUrl()
    {
        return url;
    }

    public void setUrl(String url)
    {
        this.url = url;
    }

    public int getStartPage()
    {
        return startPage;
    }

    public void setStartPage(int startPage)
    {
        this.startPage = startPage;
    }

    public int getEndPage()
    {
        return endPage;
    }

    public void setEndPage(int endPage)
    {
        this.endPage = endPage;
    }

    @SuppressWarnings("rawtypes")
    public List getList()
    {
        return list;
    }

    @SuppressWarnings("rawtypes")
    public void setList(List list)
    {
        this.list = list;
    }

    public int getPagesize()
    {
        return pagesize;
    }

    public void setPagesize(int pagesize)
    {
        this.pagesize = pagesize;
    }

    public int getTotalrecord()
    {
        return totalrecord;
    }

    public void setTotalrecord(int totalrecord)
    {
        this.totalrecord = totalrecord;
    }

    public int getTotalpage()
    {
        return totalpage;
    }

    public void setTotalpage(int totalpage)
    {
        this.totalpage = totalpage;
    }

    public int getPagenum()
    {
        return pagenum;
    }

    public void setPagenum(int pagenum)
    {
        this.pagenum = pagenum;
    }

    public int getStartindex()
    {
        return startindex;
    }

    public void setStartindex(int startindex)
    {
        this.startindex = startindex;
    }

}
