package com.amap.api.services.busline;

import com.amap.api.services.core.SuggestionCity;
import java.util.ArrayList;
import java.util.List;

public final class BusLineResult {
    private int a;
    private ArrayList<BusLineItem> b = new ArrayList<>();
    private BusLineQuery c;
    private List<String> d = new ArrayList();
    private List<SuggestionCity> e = new ArrayList();

    public static BusLineResult createPagedResult(BusLineQuery busLineQuery, int i, List<SuggestionCity> list, List<String> list2, ArrayList<BusLineItem> arrayList) {
        return new BusLineResult(busLineQuery, i, list, list2, arrayList);
    }

    private BusLineResult(BusLineQuery busLineQuery, int i, List<SuggestionCity> list, List<String> list2, ArrayList<BusLineItem> arrayList) {
        int i2 = 30;
        this.c = busLineQuery;
        int pageSize = this.c.getPageSize();
        int i3 = ((i + pageSize) - 1) / pageSize;
        if (i3 <= 30) {
            i2 = i3;
        }
        this.a = i2;
        this.e = list;
        this.d = list2;
        this.b = arrayList;
    }

    public final int getPageCount() {
        return this.a;
    }

    public final BusLineQuery getQuery() {
        return this.c;
    }

    public final List<String> getSearchSuggestionKeywords() {
        return this.d;
    }

    public final List<SuggestionCity> getSearchSuggestionCities() {
        return this.e;
    }

    public final List<BusLineItem> getBusLines() {
        return this.b;
    }
}
