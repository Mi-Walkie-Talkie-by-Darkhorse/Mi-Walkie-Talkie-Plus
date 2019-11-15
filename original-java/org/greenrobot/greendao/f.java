package org.greenrobot.greendao;

import org.greenrobot.greendao.c.i;
import org.greenrobot.greendao.c.i.b;

/* compiled from: Property */
public class f {
    public final int a;
    public final Class<?> b;
    public final String c;
    public final boolean d;
    public final String e;

    public f(int i, Class<?> cls, String str, boolean z, String str2) {
        this.a = i;
        this.b = cls;
        this.c = str;
        this.d = z;
        this.e = str2;
    }

    public i a(Object obj) {
        return new b(this, "=?", obj);
    }

    public i b(Object obj) {
        return new b(this, ">?", obj);
    }

    public i c(Object obj) {
        return new b(this, "<?", obj);
    }

    public i d(Object obj) {
        return new b(this, ">=?", obj);
    }
}
