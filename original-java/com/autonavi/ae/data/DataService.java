package com.autonavi.ae.data;

public class DataService {
    private static DataService mService = null;
    long mPtr;

    public static native String getEngineVersion();

    private native int init();

    private native void unInit();

    public native int deleteCityDB(int i);

    public native int getAdminCode(int i, int i2);

    public native String getDataVersion(int i);

    public native int prepareUpdateCityDB(int i);

    public native int updateCityDBFinished(int i);

    private DataService() {
    }

    public static DataService getInstance() {
        if (mService == null) {
            mService = new DataService();
            mService.init();
        }
        return mService;
    }

    public static void destroy() {
        if (mService != null) {
            mService.unInit();
            mService = null;
        }
    }
}
