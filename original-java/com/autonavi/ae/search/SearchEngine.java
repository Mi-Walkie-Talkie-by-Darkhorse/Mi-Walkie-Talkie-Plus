package com.autonavi.ae.search;

import com.autonavi.ae.search.interfaces.OnSearchResultListener;
import com.autonavi.ae.search.log.GLog;
import com.autonavi.ae.search.model.GADAREAEXTRAINFO;
import com.autonavi.ae.search.model.GADAREAINFO;
import com.autonavi.ae.search.model.GObjectID;
import com.autonavi.ae.search.model.GPoiResult;
import com.autonavi.ae.search.model.SearchStatus;
import java.util.Hashtable;

public class SearchEngine extends NativeSearchEngine {
    private static int mRequestID = 1;
    private final String TAG = "SearchEngine";
    private boolean mIsInit = false;
    private long mNativeId = 0;
    /* access modifiers changed from: private */
    public Hashtable<Integer, OnSearchResultListener> mSearchCallBackListenerList = new Hashtable<>();
    /* access modifiers changed from: private */
    public Object o = new Object();
    private INativeSearchObserver obServer = new INativeSearchObserver() {
        public void onGetSearchResult(int i, int i2, GPoiResult gPoiResult) {
            OnSearchResultListener onSearchResultListener;
            if (GLog.isLogShow()) {
                if (gPoiResult != null) {
                    GLog.v("SearchEngine", "onGetSearchResult id=" + i + ",status=" + i2 + ",size=" + gPoiResult.getNumberOfItemGet());
                } else {
                    GLog.v("SearchEngine", "onGetSearchResult id=" + i + ",status=" + i2 + ",result=NULL");
                }
            }
            synchronized (SearchEngine.this.o) {
                onSearchResultListener = (OnSearchResultListener) SearchEngine.this.mSearchCallBackListenerList.remove(Integer.valueOf(i));
            }
            if (onSearchResultListener != null) {
                onSearchResultListener.onGetSearchResult(i2, gPoiResult);
            }
        }

        public void onSetPoiParam(int i) {
            GLog.v("wmh", "SearchEngine.onSetPoiParam");
        }

        public void onGetPoiParam(int i, int i2, int i3) {
            GLog.v("wmh", "SearchEngine.onGetPoiParam");
        }

        public void onGetPoiCategoryList(int i, int i2) {
            GLog.v("wmh", "SearchEngine.onGetPoiCategoryList status=" + i + ",lNumberOfCategory=" + i2);
        }

        public void onGetAdareaInfo(int i, int i2, GADAREAINFO[] gadareainfoArr) {
            GLog.v("wmh", "SearchEngine.onGetAdareaInfo");
        }

        public void onGetSuggestArea() {
            GLog.v("wmh", "SearchEngine.onGetSuggestArea");
        }
    };

    public int init() {
        String str = "";
        String str2 = "";
        String str3 = "";
        int nativeCreateSearcher = nativeCreateSearcher();
        if (GLog.isLogShow()) {
            GLog.v("SearchEngine", "nativeCreateSearcher.naviid=" + nativeCreateSearcher);
        }
        if (nativeCreateSearcher == 0) {
            return -1;
        }
        int nativeInit = nativeInit(str, str2, str3, null, 20, 0);
        if (nativeInit == 0) {
            this.mIsInit = true;
            return addSearchObserver(this.obServer);
        }
        this.mIsInit = false;
        return nativeInit;
    }

    public int setMccPath(String str) {
        return nativeSetMccPath(str, getRequestID());
    }

    public int cancelQuery() {
        if (!isInit()) {
            return -2;
        }
        if (GLog.isLogShow()) {
            GLog.v("SearchEngine", "cancelQuery start");
        }
        return nativeAbortSearch();
    }

    private int addSearchObserver(INativeSearchObserver iNativeSearchObserver) {
        if (isInit()) {
            return nativeAddSearchObserver(iNativeSearchObserver);
        }
        return -2;
    }

    public boolean isInit() {
        if (!this.mIsInit || this.mNativeId == 0) {
            return false;
        }
        return true;
    }

    public int destroy() {
        if (GLog.isLogShow()) {
            GLog.v("SearchEngine", "destroy start");
        }
        synchronized (this.o) {
            this.mSearchCallBackListenerList.clear();
        }
        this.mIsInit = false;
        return nativeDestroy();
    }

    public int startSearch(int i, String str, int i2, float f, float f2, int i3, int i4, GObjectID[] gObjectIDArr) {
        return startSearch(i, str, i2, f, f2, i3, i4, gObjectIDArr, null);
    }

    public int preSearch(int i, String str, int i2, float f, float f2, int i3, OnSearchResultListener onSearchResultListener) {
        return startSearch(i, 1, str, i2, f, f2, i3, onSearchResultListener);
    }

    public int startSearch(int i, String str, int i2, float f, float f2, int i3, OnSearchResultListener onSearchResultListener) {
        return startSearch(i, 2, str, i2, f, f2, i3, onSearchResultListener);
    }

    public int startSearch(int i, int i2, String str, int i3, float f, float f2, int i4, OnSearchResultListener onSearchResultListener) {
        int i5;
        if (!isInit()) {
            return -2;
        }
        if (f <= 0.0f || f2 <= 0.0f) {
            i5 = 8;
        } else {
            i5 = i;
        }
        int requestID = getRequestID();
        if (onSearchResultListener != null) {
            synchronized (this.o) {
                this.mSearchCallBackListenerList.put(Integer.valueOf(requestID), onSearchResultListener);
            }
        }
        SearchStatus nativeStartSearch = nativeStartSearch(i5, i2, str, i3, f, f2, 0, i4, requestID, 0, null);
        if (GLog.isLogShow()) {
            GLog.v("SearchEngine", "startSearch requestID=" + nativeStartSearch.getEventId() + "strKey=" + str + ",nAdcode=" + i3 + ",status=" + nativeStartSearch.getStatus());
        }
        return nativeStartSearch.getStatus();
    }

    private static synchronized int getRequestID() {
        int i;
        synchronized (SearchEngine.class) {
            if (mRequestID > 60000) {
                mRequestID = 1;
            }
            i = mRequestID;
            mRequestID = i + 1;
        }
        return i;
    }

    public int startSearch(int i, String str, int i2, float f, float f2, int i3, int i4, GObjectID[] gObjectIDArr, OnSearchResultListener onSearchResultListener) {
        if (!isInit()) {
            return -2;
        }
        int requestID = getRequestID();
        if (onSearchResultListener != null) {
            synchronized (this.o) {
                this.mSearchCallBackListenerList.put(Integer.valueOf(requestID), onSearchResultListener);
            }
        }
        SearchStatus nativeStartSearch = nativeStartSearch(i, 2, str, i2, f, f2, 0, i3, requestID, i4, gObjectIDArr);
        if (GLog.isLogShow()) {
            GLog.v("SearchEngine", "startSearch requestID=" + nativeStartSearch.getEventId() + "strKey=" + str + ",nAdcode=" + i2 + ",status=" + nativeStartSearch.getStatus());
        }
        return nativeStartSearch.getStatus();
    }

    public int searchNearestPoi(float f, float f2, OnSearchResultListener onSearchResultListener) {
        return startSearch(9, 2, (String) null, 0, f, f2, 10, onSearchResultListener);
    }

    public int getPoiDetail(String str, float f, float f2, OnSearchResultListener onSearchResultListener) {
        return startSearch(10, 2, str, 0, f, f2, 10, onSearchResultListener);
    }

    public int setPoiParam(int i, int i2) {
        if (isInit()) {
            return nativeSetPoiParam(i, i2);
        }
        return -2;
    }

    public int getPoiParam(int i) {
        if (isInit()) {
            return nativeGetPoiParam(i);
        }
        return -2;
    }

    public boolean isExistByAdCode(int i) {
        if (isInit()) {
            return NativeSearchPub.DbExists(i);
        }
        return false;
    }

    public static synchronized String getDataVersion(int i) {
        String GetDataVersion;
        synchronized (SearchEngine.class) {
            GetDataVersion = NativeSearchPub.GetDataVersion(i);
        }
        return GetDataVersion;
    }

    public static synchronized String getEngineVersion() {
        String GetVersion;
        synchronized (SearchEngine.class) {
            GetVersion = NativeSearchPub.GetVersion();
        }
        return GetVersion;
    }

    public int getPoiCategoryList(int i) {
        if (isInit()) {
            return nativeGetPoiCategoryList(i);
        }
        return -2;
    }

    public GADAREAEXTRAINFO GetAdareaInfo(int i) {
        if (isInit()) {
            return NativeSearchPub.GetAdareaInfo(i);
        }
        return null;
    }

    public int searchAdareaInfo(String str) {
        if (isInit()) {
            return nativeSearchAdareaInfo(0, str);
        }
        return -2;
    }
}
