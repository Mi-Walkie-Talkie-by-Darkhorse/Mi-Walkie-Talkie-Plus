package com.autonavi.ae.search.model;

import com.autonavi.ae.search.log.GLog;
import java.util.ArrayList;
import java.util.List;

public class GPoiResult {
    private static String TAG = "wmh";
    private List<GPoiBase> pPoi = new ArrayList();
    private int sNumberOfItemGet;
    private int uFlag;

    private GPoiResult(int i, int i2) {
        this.sNumberOfItemGet = i;
        this.uFlag = i2;
        if (GLog.isLogShow()) {
            GLog.v(TAG, "new GPoiResult(int sNumberOfTotalItem, int sIndex, int sNumberOfItemGet,int uFlag)");
        }
    }

    public int getNumberOfItemGet() {
        return this.sNumberOfItemGet;
    }

    private int addPoiObj(GPoiBase gPoiBase) {
        if (gPoiBase == null) {
            return -1;
        }
        this.pPoi.add(gPoiBase);
        return 1;
    }

    public List<GPoiBase> getPoiList() {
        return this.pPoi;
    }
}
