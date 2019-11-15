package com.amap.api.mapcore.util;

import com.amap.api.maps.model.LatLng;

/* compiled from: SegmentsIntersect */
public class eb {
    private static double a(LatLng latLng, LatLng latLng2) {
        return (latLng.longitude * latLng2.latitude) - (latLng2.longitude * latLng.latitude);
    }

    private static LatLng b(LatLng latLng, LatLng latLng2) {
        return new LatLng(latLng2.latitude - latLng.latitude, latLng2.longitude - latLng.longitude);
    }

    private static double a(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        return a(b(latLng3, latLng), b(latLng2, latLng));
    }

    private static boolean b(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        double d = latLng.longitude - latLng2.longitude > 0.0d ? latLng.longitude : latLng2.longitude;
        double d2 = latLng.longitude - latLng2.longitude < 0.0d ? latLng.longitude : latLng2.longitude;
        double d3 = latLng.latitude - latLng2.latitude > 0.0d ? latLng.latitude : latLng2.latitude;
        double d4 = latLng.latitude - latLng2.latitude < 0.0d ? latLng.latitude : latLng2.latitude;
        if (d2 > latLng3.longitude || latLng3.longitude > d || d4 > latLng3.latitude || latLng3.latitude > d3) {
            return false;
        }
        return true;
    }

    public static boolean a(LatLng latLng, LatLng latLng2, LatLng latLng3, LatLng latLng4) {
        double a = a(latLng3, latLng4, latLng);
        double a2 = a(latLng3, latLng4, latLng2);
        double a3 = a(latLng, latLng2, latLng3);
        double a4 = a(latLng, latLng2, latLng4);
        if ((a > 0.0d && a2 < 0.0d) || (a < 0.0d && a2 > 0.0d)) {
            if (a3 > 0.0d && a4 < 0.0d) {
                return true;
            }
            if (a3 < 0.0d && a4 > 0.0d) {
                return true;
            }
        }
        if (a == 0.0d && b(latLng3, latLng4, latLng)) {
            return true;
        }
        if (a2 == 0.0d && b(latLng3, latLng4, latLng2)) {
            return true;
        }
        if (a3 == 0.0d && b(latLng, latLng2, latLng3)) {
            return true;
        }
        if (a4 != 0.0d || !b(latLng, latLng2, latLng4)) {
            return false;
        }
        return true;
    }
}
