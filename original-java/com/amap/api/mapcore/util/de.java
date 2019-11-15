package com.amap.api.mapcore.util;

import android.text.TextUtils;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;

/* compiled from: StyleItemAdaptor */
public class de {
    public static final int[][] a = {new int[]{0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, new int[]{12}, new int[]{1}, new int[]{13}, new int[]{14}, new int[]{15, 16}, new int[]{17, 18, 19, 20, 21, 26, 27, 28}, new int[]{22, 23}, new int[]{24, 25}, new int[]{39, 40, 41}, new int[]{29, 30, 31}, new int[]{32, 33, 34, 35, 36, 37, 38}};
    public static final String[] b = {"land", "water", "green", "building", "highway", "arterial", "local", "railway", "subway", Values.BOUNDARY, "poilabel", "districtlable"};

    public static int[] a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        int i = 0;
        while (true) {
            if (i >= b.length) {
                i = -1;
                break;
            } else if (b[i].equals(str)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            return a[i];
        }
        return null;
    }
}
