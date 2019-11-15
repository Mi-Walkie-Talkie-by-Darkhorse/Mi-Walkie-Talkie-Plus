package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.View;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.HashSet;

/* compiled from: PluginContext */
public class fe extends ContextThemeWrapper {
    private static final String[] d = {"android.widget", "android.webkit", "android.app"};
    private Resources a = ff.a();
    private LayoutInflater b;
    private ClassLoader c;
    private a e = new a();
    private Factory f = new Factory() {
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return fe.this.a(str, context, attributeSet);
        }
    };

    /* compiled from: PluginContext */
    public class a {
        public HashSet<String> a = new HashSet<>();
        public HashMap<String, Constructor<?>> b = new HashMap<>();

        public a() {
        }
    }

    public fe(Context context, int i, ClassLoader classLoader) {
        super(context, i);
        this.c = classLoader;
    }

    public Resources getResources() {
        if (this.a != null) {
            return this.a;
        }
        return super.getResources();
    }

    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return super.getSystemService(str);
        }
        if (this.b == null) {
            this.b = ((LayoutInflater) super.getSystemService(str)).cloneInContext(this);
            this.b.setFactory(this.f);
            this.b = this.b.cloneInContext(this);
        }
        return this.b;
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0030  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0080  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.view.View a(java.lang.String r12, android.content.Context r13, android.util.AttributeSet r14) {
        /*
            r11 = this;
            r4 = 1
            r1 = 0
            r3 = 0
            com.amap.api.mapcore.util.fe$a r0 = r11.e
            java.util.HashSet<java.lang.String> r0 = r0.a
            boolean r0 = r0.contains(r12)
            if (r0 == 0) goto L_0x000f
            r0 = r1
        L_0x000e:
            return r0
        L_0x000f:
            com.amap.api.mapcore.util.fe$a r0 = r11.e
            java.util.HashMap<java.lang.String, java.lang.reflect.Constructor<?>> r0 = r0.b
            java.lang.Object r0 = r0.get(r12)
            java.lang.reflect.Constructor r0 = (java.lang.reflect.Constructor) r0
            if (r0 != 0) goto L_0x0098
            java.lang.String r2 = "api.navi"
            boolean r2 = r12.contains(r2)     // Catch:{ Throwable -> 0x007a }
            if (r2 == 0) goto L_0x0039
            java.lang.ClassLoader r2 = r11.c     // Catch:{ Throwable -> 0x007a }
            java.lang.Class r2 = r2.loadClass(r12)     // Catch:{ Throwable -> 0x007a }
        L_0x0029:
            if (r2 != 0) goto L_0x0063
            r10 = r3
            r3 = r2
            r2 = r10
        L_0x002e:
            if (r2 != 0) goto L_0x0080
            com.amap.api.mapcore.util.fe$a r0 = r11.e
            java.util.HashSet<java.lang.String> r0 = r0.a
            r0.add(r12)
            r0 = r1
            goto L_0x000e
        L_0x0039:
            java.lang.String[] r5 = d     // Catch:{ Throwable -> 0x007a }
            int r6 = r5.length     // Catch:{ Throwable -> 0x007a }
            r2 = r3
        L_0x003d:
            if (r2 >= r6) goto L_0x00b1
            r7 = r5[r2]     // Catch:{ Throwable -> 0x007a }
            java.lang.ClassLoader r8 = r11.c     // Catch:{ Throwable -> 0x005f }
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x005f }
            r9.<init>()     // Catch:{ Throwable -> 0x005f }
            java.lang.StringBuilder r7 = r9.append(r7)     // Catch:{ Throwable -> 0x005f }
            java.lang.String r9 = "."
            java.lang.StringBuilder r7 = r7.append(r9)     // Catch:{ Throwable -> 0x005f }
            java.lang.StringBuilder r7 = r7.append(r12)     // Catch:{ Throwable -> 0x005f }
            java.lang.String r7 = r7.toString()     // Catch:{ Throwable -> 0x005f }
            java.lang.Class r2 = r8.loadClass(r7)     // Catch:{ Throwable -> 0x005f }
            goto L_0x0029
        L_0x005f:
            r7 = move-exception
            int r2 = r2 + 1
            goto L_0x003d
        L_0x0063:
            java.lang.Class<android.view.ViewStub> r5 = android.view.ViewStub.class
            if (r2 != r5) goto L_0x006b
            r10 = r3
            r3 = r2
            r2 = r10
            goto L_0x002e
        L_0x006b:
            java.lang.ClassLoader r5 = r2.getClassLoader()     // Catch:{ Throwable -> 0x00af }
            java.lang.ClassLoader r6 = r11.c     // Catch:{ Throwable -> 0x00af }
            if (r5 == r6) goto L_0x0077
            r10 = r3
            r3 = r2
            r2 = r10
            goto L_0x002e
        L_0x0077:
            r3 = r2
            r2 = r4
            goto L_0x002e
        L_0x007a:
            r2 = move-exception
            r2 = r1
        L_0x007c:
            r10 = r3
            r3 = r2
            r2 = r10
            goto L_0x002e
        L_0x0080:
            r2 = 2
            java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch:{ Throwable -> 0x00ad }
            r4 = 0
            java.lang.Class<android.content.Context> r5 = android.content.Context.class
            r2[r4] = r5     // Catch:{ Throwable -> 0x00ad }
            r4 = 1
            java.lang.Class<android.util.AttributeSet> r5 = android.util.AttributeSet.class
            r2[r4] = r5     // Catch:{ Throwable -> 0x00ad }
            java.lang.reflect.Constructor r0 = r3.getConstructor(r2)     // Catch:{ Throwable -> 0x00ad }
            com.amap.api.mapcore.util.fe$a r2 = r11.e     // Catch:{ Throwable -> 0x00ad }
            java.util.HashMap<java.lang.String, java.lang.reflect.Constructor<?>> r2 = r2.b     // Catch:{ Throwable -> 0x00ad }
            r2.put(r12, r0)     // Catch:{ Throwable -> 0x00ad }
        L_0x0098:
            r2 = 2
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ Throwable -> 0x00a9 }
            r3 = 0
            r2[r3] = r13     // Catch:{ Throwable -> 0x00a9 }
            r3 = 1
            r2[r3] = r14     // Catch:{ Throwable -> 0x00a9 }
            java.lang.Object r0 = r0.newInstance(r2)     // Catch:{ Throwable -> 0x00a9 }
            android.view.View r0 = (android.view.View) r0     // Catch:{ Throwable -> 0x00a9 }
            goto L_0x000e
        L_0x00a9:
            r0 = move-exception
            r0 = r1
            goto L_0x000e
        L_0x00ad:
            r2 = move-exception
            goto L_0x0098
        L_0x00af:
            r4 = move-exception
            goto L_0x007c
        L_0x00b1:
            r2 = r1
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.fe.a(java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }
}
