package com.amap.api.maps;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.amap.api.mapcore.util.fq;
import com.amap.api.mapcore.util.p;
import com.autonavi.ae.gmap.GLMapEngine;

public final class MapsInitializer {
    private static boolean a = true;
    private static boolean b = true;
    private static boolean c = false;
    public static String sdcardDir = "";

    public static void initialize(Context context) throws RemoteException {
        if (context != null) {
            p.a = context.getApplicationContext();
        } else {
            Log.w("MapsInitializer", "the context is null");
        }
    }

    public static void setNetWorkEnable(boolean z) {
        a = z;
    }

    public static boolean getNetWorkEnable() {
        return a;
    }

    public static void setApiKey(String str) {
        if (str != null && str.trim().length() > 0) {
            fq.a(str);
        }
    }

    public static String getVersion() {
        return "5.7.0";
    }

    public static void loadWorldGridMap(boolean z) {
        c = z;
    }

    public static boolean isLoadWorldGridMap() {
        return c;
    }

    public static void setBuildingHeight(int i) {
        GLMapEngine.BUILDINGHEIGHT = i;
    }

    public static void setDownloadCoordinateConvertLibrary(boolean z) {
        b = z;
    }

    public static boolean isDownloadCoordinateConvertLibrary() {
        return b;
    }
}
