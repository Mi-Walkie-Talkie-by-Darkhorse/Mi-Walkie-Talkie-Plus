package com.autonavi.ae.search;

import com.autonavi.ae.search.model.GADAREAINFO;
import com.autonavi.ae.search.model.GPoiResult;

public interface INativeSearchObserver {
    void onGetAdareaInfo(int i, int i2, GADAREAINFO[] gadareainfoArr);

    void onGetPoiCategoryList(int i, int i2);

    void onGetPoiParam(int i, int i2, int i3);

    void onGetSearchResult(int i, int i2, GPoiResult gPoiResult);

    void onGetSuggestArea();

    void onSetPoiParam(int i);
}
