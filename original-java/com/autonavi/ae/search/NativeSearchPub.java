package com.autonavi.ae.search;

import com.autonavi.ae.search.model.GADAREAEXTRAINFO;

class NativeSearchPub {
    protected static native synchronized boolean DbExists(int i);

    protected static native synchronized GADAREAEXTRAINFO GetAdareaInfo(int i);

    protected static native synchronized String GetDataVersion(int i);

    protected static native synchronized String GetVersion();

    public static native synchronized int nativeCreateSearchpub();

    protected static native synchronized int nativeDestroy();

    NativeSearchPub() {
    }
}
