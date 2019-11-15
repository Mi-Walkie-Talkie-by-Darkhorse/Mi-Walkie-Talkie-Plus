package com.amap.api.services.cloud;

import com.amap.api.services.cloud.CloudSearch.Query;
import com.amap.api.services.cloud.CloudSearch.SearchBound;
import java.util.ArrayList;

public final class CloudResult {
    private int a = (((this.c + this.d) - 1) / this.d);
    private ArrayList<CloudItem> b;
    private int c;
    private int d;
    private Query e;
    private SearchBound f;

    public static CloudResult createPagedResult(Query query, int i, SearchBound searchBound, int i2, ArrayList<CloudItem> arrayList) {
        return new CloudResult(query, i, searchBound, i2, arrayList);
    }

    private CloudResult(Query query, int i, SearchBound searchBound, int i2, ArrayList<CloudItem> arrayList) {
        this.e = query;
        this.c = i;
        this.d = i2;
        this.b = arrayList;
        this.f = searchBound;
    }

    public final int getPageCount() {
        return this.a;
    }

    public final Query getQuery() {
        return this.e;
    }

    public final SearchBound getBound() {
        return this.f;
    }

    public final ArrayList<CloudItem> getClouds() {
        return this.b;
    }

    public final int getTotalCount() {
        return this.c;
    }
}
