package com.ifengyu.library.a;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: IOUtils.java */
/* loaded from: classes2.dex */
public class f {
    public static boolean a(Closeable closeable) {
        if (closeable == null) {
            return true;
        }
        try {
            closeable.close();
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return true;
        }
    }
}
