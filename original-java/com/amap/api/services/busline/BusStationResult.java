package com.amap.api.services.busline;

import com.amap.api.services.core.SuggestionCity;
import java.util.ArrayList;
import java.util.List;

public final class BusStationResult {
    private int a;
    private ArrayList<BusStationItem> b = new ArrayList<>();
    private BusStationQuery c;
    private List<String> d = new ArrayList();
    private List<SuggestionCity> e = new ArrayList();

    public static BusStationResult createPagedResult(BusStationQuery busStationQuery, int i, List<SuggestionCity> list, List<String> list2, ArrayList<BusStationItem> arrayList) {
        return new BusStationResult(busStationQuery, i, list, list2, arrayList);
    }

    private BusStationResult(BusStationQuery busStationQuery, int i, List<SuggestionCity> list, List<String> list2, ArrayList<BusStationItem> arrayList) {
        int i2 = 30;
        this.c = busStationQuery;
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

    public final BusStationQuery getQuery() {
        return this.c;
    }

    public final List<String> getSearchSuggestionKeywords() {
        return this.d;
    }

    public final List<SuggestionCity> getSearchSuggestionCities() {
        return this.e;
    }

    public final List<BusStationItem> getBusStations() {
        return this.b;
    }
}
