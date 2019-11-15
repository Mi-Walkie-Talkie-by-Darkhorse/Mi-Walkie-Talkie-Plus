package com.autonavi.ae.search.interfaces;

import com.autonavi.ae.search.model.GPoiResult;

public interface OnSearchResultListener {
    void onGetSearchResult(int i, GPoiResult gPoiResult);
}
