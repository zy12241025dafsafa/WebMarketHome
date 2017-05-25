package com.dudu.web.model;

import java.util.Date;

public class TComment {
    private Long id;

    private String commentPerson;

    private String content;

    private Boolean serviceStar;

    private Boolean trackStar;

    private Date createTime;

    private String productIds;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCommentPerson() {
        return commentPerson;
    }

    public void setCommentPerson(String commentPerson) {
        this.commentPerson = commentPerson == null ? null : commentPerson.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Boolean getServiceStar() {
        return serviceStar;
    }

    public void setServiceStar(Boolean serviceStar) {
        this.serviceStar = serviceStar;
    }

    public Boolean getTrackStar() {
        return trackStar;
    }

    public void setTrackStar(Boolean trackStar) {
        this.trackStar = trackStar;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getProductIds() {
        return productIds;
    }

    public void setProductIds(String productIds) {
        this.productIds = productIds == null ? null : productIds.trim();
    }
}