package com.amap.api.col.sl;

import java.io.File;

/* compiled from: FileNumUpdateStrategy */
public final class em extends ep {
    private int b;
    private String c;

    public em(int i, String str, ep epVar) {
        super(epVar);
        this.b = i;
        this.c = str;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        if (a(this.c) < this.b) {
            return false;
        }
        return true;
    }

    private static int a(String str) {
        try {
            File file = new File(str);
            if (!file.exists()) {
                return 0;
            }
            return file.list().length;
        } catch (Throwable th) {
            cm.c(th, "fus", "gfn");
            return 0;
        }
    }
}
