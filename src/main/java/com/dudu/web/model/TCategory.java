package com.dudu.web.model;

import java.util.Date;

public class TCategory {
    private Long id;

    private String categoryName;

    private String categorySubname;

    private Date createTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName == null ? null : categoryName.trim();
    }

    public String getCategorySubname() {
        return categorySubname;
    }

    public void setCategorySubname(String categorySubname) {
        this.categorySubname = categorySubname == null ? null : categorySubname.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}