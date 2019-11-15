package com.amap.api.services.interfaces;

import com.amap.api.services.cloud.CloudSearch.OnCloudSearchListener;
import com.amap.api.services.cloud.CloudSearch.Query;

public interface ICloudSearch {
    void searchCloudAsyn(Query query);

    void searchCloudDetailAsyn(String str, String str2);

    void setOnCloudSearchListener(OnCloudSearchListener onCloudSearchListener);
}
