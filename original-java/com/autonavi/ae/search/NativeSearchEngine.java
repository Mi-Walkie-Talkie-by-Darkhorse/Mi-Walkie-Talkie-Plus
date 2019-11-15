package com.autonavi.ae.search;

import com.autonavi.ae.search.model.GObjectID;
import com.autonavi.ae.search.model.SearchStatus;

class NativeSearchEngine {
    public static final int GSEARCH_TYPE_AROUND = 3;
    public static final int GSEARCH_TYPE_FTS = 8;

    public class GSearchForm {
        public static final int GSEARCH_FORM_FINAL = 2;
        public static final int GSEARCH_FORM_MAX = 3;
        public static final int GSEARCH_FORM_NONE = 0;
        public static final int GSEARCH_FORM_PRE = 1;

        public GSearchForm() {
        }
    }

    /* access modifiers changed from: protected */
    public native synchronized int nativeAbortSearch();

    /* access modifiers changed from: protected */
    public native synchronized int nativeAddSearchObserver(INativeSearchObserver iNativeSearchObserver);

    /* access modifiers changed from: protected */
    public native synchronized int nativeCreateSearcher();

    /* access modifiers changed from: protected */
    public native synchronized int nativeDestroy();

    /* access modifiers changed from: protected */
    public native synchronized int nativeGetPoiCategoryList(int i);

    /* access modifiers changed from: protected */
    public native synchronized int nativeGetPoiParam(int i);

    /* access modifiers changed from: protected */
    public native synchronized int nativeInit(String str, String str2, String str3, String str4, int i, int i2);

    /* access modifiers changed from: protected */
    public native synchronized int nativeRemoveSearchObserver(INativeSearchObserver iNativeSearchObserver);

    /* access modifiers changed from: protected */
    public native synchronized int nativeSearchAdareaInfo(int i, String str);

    /* access modifiers changed from: protected */
    public native synchronized int nativeSetMccPath(String str, int i);

    /* access modifiers changed from: protected */
    public native synchronized int nativeSetPoiParam(int i, int i2);

    /* access modifiers changed from: protected */
    public native synchronized SearchStatus nativeStartSearch(int i, int i2, String str, int i3, float f, float f2, int i4, int i5, int i6, int i7, GObjectID[] gObjectIDArr);

    NativeSearchEngine() {
    }
}
