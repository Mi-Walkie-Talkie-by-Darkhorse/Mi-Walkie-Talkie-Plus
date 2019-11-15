package com.xiaomi.push.service;

import com.xiaomi.xmpush.thrift.g;
import com.xiaomi.xmpush.thrift.h;

/* synthetic */ class al {
    static final /* synthetic */ int[] a = new int[g.values().length];
    static final /* synthetic */ int[] b = new int[h.values().length];

    static {
        try {
            b[h.INT.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            b[h.LONG.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            b[h.STRING.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            b[h.BOOLEAN.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            a[g.MISC_CONFIG.ordinal()] = 1;
        } catch (NoSuchFieldError e5) {
        }
        try {
            a[g.PLUGIN_CONFIG.ordinal()] = 2;
        } catch (NoSuchFieldError e6) {
        }
    }
}
