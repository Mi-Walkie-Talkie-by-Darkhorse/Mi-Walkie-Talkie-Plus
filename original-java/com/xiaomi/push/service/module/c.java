package com.xiaomi.push.service.module;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class c {
    private String a;
    private String b;
    private String c;
    private int d = 0;
    private ClassLoader e;
    private Object f;

    public c(String str, String str2, ClassLoader classLoader, String str3, int i) {
        this.a = str;
        this.b = str2;
        this.e = classLoader;
        this.d = i;
        this.c = str3;
        try {
            if (!TextUtils.isEmpty(str3)) {
                this.f = this.e.loadClass(str3).newInstance();
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public ClassLoader a() {
        return this.e;
    }

    public void a(Context context) {
        if (this.f != null) {
            try {
                this.e.loadClass(this.c).getMethod("onCreate", new Class[]{Context.class, String.class}).invoke(this.f, new Object[]{context, this.b});
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }
}
