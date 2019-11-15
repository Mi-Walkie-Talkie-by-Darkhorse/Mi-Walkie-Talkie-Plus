package com.liulishuo.filedownloader.services;

import com.liulishuo.filedownloader.e.c.d;
import com.liulishuo.filedownloader.e.g;

/* compiled from: DefaultIdGenerator */
public class b implements d {
    public int a(int i, String str, String str2, boolean z) {
        return a(str, str2, z);
    }

    public int a(String str, String str2, boolean z) {
        if (z) {
            return g.e(g.a("%sp%s@dir", str, str2)).hashCode();
        }
        return g.e(g.a("%sp%s", str, str2)).hashCode();
    }
}
