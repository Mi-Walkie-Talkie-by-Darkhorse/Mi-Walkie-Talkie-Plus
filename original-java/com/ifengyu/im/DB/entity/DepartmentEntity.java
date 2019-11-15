package com.ifengyu.im.DB.entity;

import com.ifengyu.im.imservice.entity.SearchElement;
import com.ifengyu.im.utils.pinyin.PinYin.PinYinElement;

public class DepartmentEntity {
    public int created;
    public int departId;
    public String departName;
    public Long id;
    public PinYinElement pinyinElement = new PinYinElement();
    public int priority;
    public SearchElement searchElement = new SearchElement();
    public int status;
    public int updated;

    public DepartmentEntity(Long l, int i, String str, int i2, int i3, int i4, int i5) {
        this.id = l;
        this.departId = i;
        this.departName = str;
        this.priority = i2;
        this.status = i3;
        this.created = i4;
        this.updated = i5;
    }

    public DepartmentEntity() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public int getDepartId() {
        return this.departId;
    }

    public void setDepartId(int i) {
        this.departId = i;
    }

    public String getDepartName() {
        return this.departName;
    }

    public void setDepartName(String str) {
        this.departName = str;
    }

    public int getPriority() {
        return this.priority;
    }

    public void setPriority(int i) {
        this.priority = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public int getCreated() {
        return this.created;
    }

    public void setCreated(int i) {
        this.created = i;
    }

    public int getUpdated() {
        return this.updated;
    }

    public void setUpdated(int i) {
        this.updated = i;
    }

    public PinYinElement getPinyinElement() {
        return this.pinyinElement;
    }

    public SearchElement getSearchElement() {
        return this.searchElement;
    }
}
