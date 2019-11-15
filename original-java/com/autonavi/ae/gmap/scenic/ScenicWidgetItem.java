package com.autonavi.ae.gmap.scenic;

public class ScenicWidgetItem {
    public ScenicWidgetFilter[] mFilters;
    public int mItemIndex = 0;

    public static class ScenicWidgetFilter {
        public int mMainKey;
        public int mPoiFlag;
        public int mSubKey;
    }
}
