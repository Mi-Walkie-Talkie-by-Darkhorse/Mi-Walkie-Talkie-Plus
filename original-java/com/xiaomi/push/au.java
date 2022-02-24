package com.xiaomi.push;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes2.dex */
class au implements at, InvocationHandler {

    /* renamed from: a  reason: collision with root package name */
    private static final String[][] f8749a = {new String[]{"com.bun.supplier.IIdentifierListener", "com.bun.supplier.IdSupplier"}, new String[]{"com.bun.miitmdid.core.IIdentifierListener", "com.bun.miitmdid.supplier.IdSupplier"}};

    /* renamed from: a  reason: collision with other field name */
    private Context f105a;

    /* renamed from: a  reason: collision with other field name */
    private Class f107a = null;

    /* renamed from: b  reason: collision with root package name */
    private Class f8750b = null;

    /* renamed from: a  reason: collision with other field name */
    private Method f109a = null;

    /* renamed from: b  reason: collision with other field name */
    private Method f110b = null;

    /* renamed from: c  reason: collision with root package name */
    private Method f8751c = null;
    private Method d = null;
    private Method e = null;
    private Method f = null;
    private Method g = null;

    /* renamed from: a  reason: collision with other field name */
    private final Object f108a = new Object();

    /* renamed from: a  reason: collision with other field name */
    private volatile int f103a = 0;

    /* renamed from: a  reason: collision with other field name */
    private volatile long f104a = 0;

    /* renamed from: a  reason: collision with other field name */
    private volatile a f106a = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with other field name */
        Boolean f111a;

        /* renamed from: a  reason: collision with other field name */
        String f112a;

        /* renamed from: b  reason: collision with root package name */
        String f8753b;

        /* renamed from: c  reason: collision with root package name */
        String f8754c;
        String d;

        private a() {
            this.f111a = null;
            this.f112a = null;
            this.f8753b = null;
            this.f8754c = null;
            this.d = null;
        }

        boolean a() {
            if (!TextUtils.isEmpty(this.f112a) || !TextUtils.isEmpty(this.f8753b) || !TextUtils.isEmpty(this.f8754c) || !TextUtils.isEmpty(this.d)) {
                this.f111a = true;
            }
            return this.f111a != null;
        }
    }

    public au(Context context) {
        this.f105a = context.getApplicationContext();
        a(context);
        b(context);
    }

    private static Class<?> a(Context context, String str) {
        try {
            return u.a(context, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static <T> T a(Method method, Object obj, Object... objArr) {
        if (method == null) {
            return null;
        }
        try {
            T t = (T) method.invoke(obj, objArr);
            if (t != null) {
                return t;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls == null) {
            return null;
        }
        try {
            return cls.getMethod(str, clsArr);
        } catch (Throwable unused) {
            return null;
        }
    }

    private void a() {
        synchronized (this.f108a) {
            try {
                this.f108a.notifyAll();
            } catch (Exception unused) {
            }
        }
    }

    private void a(Context context) {
        Class<?> a2 = a(context, "com.bun.miitmdid.core.MdidSdk");
        Class<?> cls = null;
        Class<?> cls2 = null;
        int i = 0;
        while (true) {
            String[][] strArr = f8749a;
            if (i >= strArr.length) {
                break;
            }
            String[] strArr2 = strArr[i];
            Class<?> a3 = a(context, strArr2[0]);
            Class<?> a4 = a(context, strArr2[1]);
            if (a3 != null && a4 != null) {
                b("found class in index " + i);
                cls2 = a4;
                cls = a3;
                break;
            }
            i++;
            cls2 = a4;
            cls = a3;
        }
        this.f107a = a2;
        this.f109a = a(a2, "InitSdk", Context.class, cls);
        this.f8750b = cls;
        this.f110b = a(cls2, "getUDID", new Class[0]);
        this.f8751c = a(cls2, "getOAID", new Class[0]);
        this.d = a(cls2, "getVAID", new Class[0]);
        this.e = a(cls2, "getAAID", new Class[0]);
        this.f = a(cls2, "isSupported", new Class[0]);
        this.g = a(cls2, "shutDown", new Class[0]);
    }

    private void a(String str) {
        if (this.f106a == null) {
            long j = this.f104a;
            long elapsedRealtime = SystemClock.elapsedRealtime() - Math.abs(j);
            int i = this.f103a;
            if (elapsedRealtime > 3000 && i < 3) {
                synchronized (this.f108a) {
                    if (this.f104a == j && this.f103a == i) {
                        b("retry, current count is " + i);
                        this.f103a = this.f103a + 1;
                        b(this.f105a);
                        j = this.f104a;
                        elapsedRealtime = SystemClock.elapsedRealtime() - Math.abs(j);
                    }
                }
            }
            if (this.f106a == null && j >= 0 && elapsedRealtime <= 3000 && Looper.myLooper() != Looper.getMainLooper()) {
                synchronized (this.f108a) {
                    if (this.f106a == null) {
                        try {
                            b(str + " wait...");
                            this.f108a.wait(3000L);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
    }

    private static boolean a(Object obj) {
        return (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double);
    }

    private void b(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        elapsedRealtime = -elapsedRealtime;
        Class cls = this.f8750b;
        if (cls != null) {
            try {
                ClassLoader classLoader = cls.getClassLoader();
                if (classLoader == null) {
                    classLoader = context.getClassLoader();
                }
                a(this.f109a, this.f107a.newInstance(), context, Proxy.newProxyInstance(classLoader, new Class[]{this.f8750b}, this));
            } catch (Throwable th) {
                b("call init sdk error:" + th);
            }
            this.f104a = elapsedRealtime;
        }
        this.f104a = elapsedRealtime;
    }

    private static void b(String str) {
        b.m1a("mdid:" + str);
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public String mo92a() {
        a("getOAID");
        if (this.f106a == null) {
            return null;
        }
        return this.f106a.f8753b;
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo92a() {
        a("isSupported");
        return this.f106a != null && Boolean.TRUE.equals(this.f106a.f111a);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        this.f104a = SystemClock.elapsedRealtime();
        if (objArr != null) {
            a aVar = new a();
            int length = objArr.length;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Object obj2 = objArr[i];
                if (obj2 != null && !a(obj2)) {
                    aVar.f112a = (String) a(this.f110b, obj2, new Object[0]);
                    aVar.f8753b = (String) a(this.f8751c, obj2, new Object[0]);
                    aVar.f8754c = (String) a(this.d, obj2, new Object[0]);
                    aVar.d = (String) a(this.e, obj2, new Object[0]);
                    aVar.f111a = (Boolean) a(this.f, obj2, new Object[0]);
                    a(this.g, obj2, new Object[0]);
                    if (aVar.a()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("has get succ, check duplicate:");
                        if (this.f106a != null) {
                            z = true;
                        }
                        sb.append(z);
                        b(sb.toString());
                        synchronized (au.class) {
                            if (this.f106a == null) {
                                this.f106a = aVar;
                            }
                        }
                    }
                }
                i++;
            }
        }
        a();
        return null;
    }
}
