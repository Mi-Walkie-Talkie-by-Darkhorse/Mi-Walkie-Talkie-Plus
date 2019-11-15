package com.amap.api.services.routepoisearch;

import java.util.ArrayList;
import java.util.List;

public class RoutePOISearchResult {
    private List<RoutePOIItem> a = new ArrayList();
    private RoutePOISearchQuery b;

    public RoutePOISearchResult(ArrayList<RoutePOIItem> arrayList, RoutePOISearchQuery routePOISearchQuery) {
        this.a = arrayList;
        this.b = routePOISearchQuery;
    }

    public List<RoutePOIItem> getRoutePois() {
        return this.a;
    }

    public RoutePOISearchQuery getQuery() {
        return this.b;
    }
}
