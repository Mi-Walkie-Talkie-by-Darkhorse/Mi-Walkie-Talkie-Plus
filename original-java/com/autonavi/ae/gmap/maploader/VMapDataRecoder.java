package com.autonavi.ae.gmap.maploader;

import android.text.TextUtils;

public class VMapDataRecoder {
    public int mCreateTime;
    private int mDataSource;
    public String mGridName;
    public int mTimes = 0;

    public VMapDataRecoder(String str, int i) {
        try {
            if (!TextUtils.isEmpty(str)) {
                this.mCreateTime = (int) (System.currentTimeMillis() / 1000);
                this.mDataSource = i;
                this.mGridName = str;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            this.mGridName = null;
        }
    }
}
