package com.amap.api.maps.utils;

import android.util.Pair;
import com.autonavi.amap.mapcore.DPoint;
import java.util.List;

public class SpatialRelationUtil {
    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        r3 = calShortestDistancePoint((java.util.List<com.autonavi.amap.mapcore.DPoint>) r3, com.autonavi.amap.mapcore.DPoint.obtain(r11.latitude, r11.longitude));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x0055, code lost:
        if (r3 == null) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:?, code lost:
        return new android.util.Pair(r3.first, new com.amap.api.maps.model.LatLng(((com.autonavi.amap.mapcore.DPoint) r3.second).x, ((com.autonavi.amap.mapcore.DPoint) r3.second).y));
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.util.Pair<java.lang.Integer, com.amap.api.maps.model.LatLng> calShortestDistancePoint(java.util.List<com.amap.api.maps.model.LatLng> r10, com.amap.api.maps.model.LatLng r11) {
        /*
            r2 = 0
            if (r10 == 0) goto L_0x000b
            if (r11 == 0) goto L_0x000b
            int r0 = r10.size()     // Catch:{ Throwable -> 0x003f }
            if (r0 != 0) goto L_0x000d
        L_0x000b:
            r0 = r2
        L_0x000c:
            return r0
        L_0x000d:
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ Throwable -> 0x003f }
            r3.<init>()     // Catch:{ Throwable -> 0x003f }
            r0 = 0
            java.util.Iterator r4 = r10.iterator()     // Catch:{ Throwable -> 0x003f }
            r1 = r0
        L_0x0018:
            boolean r0 = r4.hasNext()     // Catch:{ Throwable -> 0x003f }
            if (r0 == 0) goto L_0x0049
            java.lang.Object r0 = r4.next()     // Catch:{ Throwable -> 0x003f }
            com.amap.api.maps.model.LatLng r0 = (com.amap.api.maps.model.LatLng) r0     // Catch:{ Throwable -> 0x003f }
            double r6 = r0.latitude     // Catch:{ Throwable -> 0x003f }
            double r8 = r0.longitude     // Catch:{ Throwable -> 0x003f }
            com.autonavi.amap.mapcore.DPoint r5 = com.autonavi.amap.mapcore.DPoint.obtain(r6, r8)     // Catch:{ Throwable -> 0x003f }
            r3.add(r5)     // Catch:{ Throwable -> 0x003f }
            boolean r0 = r0.equals(r11)     // Catch:{ Throwable -> 0x003f }
            if (r0 == 0) goto L_0x0045
            android.util.Pair r0 = new android.util.Pair     // Catch:{ Throwable -> 0x003f }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ Throwable -> 0x003f }
            r0.<init>(r1, r11)     // Catch:{ Throwable -> 0x003f }
            goto L_0x000c
        L_0x003f:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
        L_0x0043:
            r0 = r2
            goto L_0x000c
        L_0x0045:
            int r0 = r1 + 1
            r1 = r0
            goto L_0x0018
        L_0x0049:
            double r0 = r11.latitude     // Catch:{ Throwable -> 0x003f }
            double r4 = r11.longitude     // Catch:{ Throwable -> 0x003f }
            com.autonavi.amap.mapcore.DPoint r0 = com.autonavi.amap.mapcore.DPoint.obtain(r0, r4)     // Catch:{ Throwable -> 0x003f }
            android.util.Pair r3 = calShortestDistancePoint(r3, r0)     // Catch:{ Throwable -> 0x003f }
            if (r3 == 0) goto L_0x0043
            android.util.Pair r1 = new android.util.Pair     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r4 = r3.first     // Catch:{ Throwable -> 0x003f }
            com.amap.api.maps.model.LatLng r5 = new com.amap.api.maps.model.LatLng     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r0 = r3.second     // Catch:{ Throwable -> 0x003f }
            com.autonavi.amap.mapcore.DPoint r0 = (com.autonavi.amap.mapcore.DPoint) r0     // Catch:{ Throwable -> 0x003f }
            double r6 = r0.x     // Catch:{ Throwable -> 0x003f }
            java.lang.Object r0 = r3.second     // Catch:{ Throwable -> 0x003f }
            com.autonavi.amap.mapcore.DPoint r0 = (com.autonavi.amap.mapcore.DPoint) r0     // Catch:{ Throwable -> 0x003f }
            double r8 = r0.y     // Catch:{ Throwable -> 0x003f }
            r5.<init>(r6, r8)     // Catch:{ Throwable -> 0x003f }
            r1.<init>(r4, r5)     // Catch:{ Throwable -> 0x003f }
            r0 = r1
            goto L_0x000c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.maps.utils.SpatialRelationUtil.calShortestDistancePoint(java.util.List, com.amap.api.maps.model.LatLng):android.util.Pair");
    }

    public static Pair<Integer, DPoint> calShortestDistancePoint(List<DPoint> list, DPoint dPoint) {
        DPoint dPoint2;
        double d;
        Pair<Integer, DPoint> pair;
        if (list == null || dPoint == null || list.size() == 0) {
            return null;
        }
        if (list.size() < 2) {
            return null;
        }
        Pair<Integer, DPoint> pair2 = null;
        DPoint dPoint3 = null;
        double d2 = 0.0d;
        int i = 0;
        while (i < list.size() - 1) {
            if (i == 0) {
                DPoint dPoint4 = (DPoint) list.get(i);
                if (dPoint4.equals(dPoint)) {
                    return new Pair<>(Integer.valueOf(i), dPoint);
                }
                dPoint2 = dPoint4;
            } else {
                dPoint2 = dPoint3;
            }
            dPoint3 = (DPoint) list.get(i + 1);
            if (dPoint3.equals(dPoint)) {
                return new Pair<>(Integer.valueOf(i + 1), dPoint);
            }
            Pair pointToSegDist = pointToSegDist(dPoint.x, dPoint.y, dPoint2.x, dPoint2.y, dPoint3.x, dPoint3.y);
            if (pair2 == null) {
                d = ((Double) pointToSegDist.first).doubleValue();
                pair = new Pair<>(Integer.valueOf(i), pointToSegDist.second);
            } else if (d2 > ((Double) pointToSegDist.first).doubleValue()) {
                d = ((Double) pointToSegDist.first).doubleValue();
                pair = new Pair<>(Integer.valueOf(i), pointToSegDist.second);
            } else {
                d = d2;
                pair = pair2;
            }
            i++;
            d2 = d;
            pair2 = pair;
        }
        return pair2;
    }

    private static Pair<Double, DPoint> pointToSegDist(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = ((d5 - d3) * (d - d3)) + ((d6 - d4) * (d2 - d4));
        if (d7 <= 0.0d) {
            return new Pair<>(Double.valueOf(Math.sqrt(((d - d3) * (d - d3)) + ((d2 - d4) * (d2 - d4)))), new DPoint(d3, d4));
        }
        double d8 = ((d5 - d3) * (d5 - d3)) + ((d6 - d4) * (d6 - d4));
        if (d7 >= d8) {
            return new Pair<>(Double.valueOf(Math.sqrt(((d - d5) * (d - d5)) + ((d2 - d6) * (d2 - d6)))), new DPoint(d5, d6));
        }
        double d9 = d7 / d8;
        double d10 = ((d5 - d3) * d9) + d3;
        double d11 = d4 + (d9 * (d6 - d4));
        return new Pair<>(Double.valueOf(Math.sqrt(((d - d10) * (d - d10)) + ((d11 - d2) * (d11 - d2)))), new DPoint(d10, d11));
    }
}
