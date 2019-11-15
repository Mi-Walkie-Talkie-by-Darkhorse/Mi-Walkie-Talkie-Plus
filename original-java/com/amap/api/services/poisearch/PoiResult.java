package com.amap.api.services.poisearch;

import com.amap.api.services.core.PoiItem;
import com.amap.api.services.core.SuggestionCity;
import com.amap.api.services.poisearch.PoiSearch.Query;
import com.amap.api.services.poisearch.PoiSearch.SearchBound;
import java.util.ArrayList;
import java.util.List;

public final class PoiResult {
    private int a;
    private ArrayList<PoiItem> b = new ArrayList<>();
    private Query c;
    private SearchBound d;
    private List<String> e;
    private List<SuggestionCity> f;
    private int g;

    public static PoiResult createPagedResult(Query query, SearchBound searchBound, List<String> list, List<SuggestionCity> list2, int i, int i2, ArrayList<PoiItem> arrayList) {
        return new PoiResult(query, searchBound, list, list2, i, i2, arrayList);
    }

    private PoiResult(Query query, SearchBound searchBound, List<String> list, List<SuggestionCity> list2, int i, int i2, ArrayList<PoiItem> arrayList) {
        this.c = query;
        this.d = searchBound;
        this.e = list;
        this.f = list2;
        this.g = i;
        this.a = ((this.g + i2) - 1) / this.g;
        this.b = arrayList;
    }

    public final int getPageCount() {
        return this.a;
    }

    public final Query getQuery() {
        return this.c;
    }

    public final SearchBound getBound() {
        return this.d;
    }

    public final ArrayList<PoiItem> getPois() {
        return this.b;
    }

    public final List<String> getSearchSuggestionKeywords() {
        return this.e;
    }

    public final List<SuggestionCity> getSearchSuggestionCitys() {
        return this.f;
    }
}
