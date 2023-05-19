package com.ifengyu.talk.http.entity;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public class MsgListEntity<T> {
    private ArrayList<T> data;
    private int pageIndex;
    private int pageSize;
    private int total;
    private int totalPage;

    public ArrayList<T> getData() {
        return this.data;
    }

    public int getPageIndex() {
        return this.pageIndex;
    }

    public int getPageSize() {
        return this.pageSize;
    }

    public int getTotal() {
        return this.total;
    }

    public int getTotalPage() {
        return this.totalPage;
    }

    public void setData(ArrayList<T> arrayList) {
        this.data = arrayList;
    }

    public void setPageIndex(int i) {
        this.pageIndex = i;
    }

    public void setPageSize(int i) {
        this.pageSize = i;
    }

    public void setTotal(int i) {
        this.total = i;
    }

    public void setTotalPage(int i) {
        this.totalPage = i;
    }
}
