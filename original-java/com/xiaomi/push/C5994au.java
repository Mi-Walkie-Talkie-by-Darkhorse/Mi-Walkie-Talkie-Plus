package com.xiaomi.push;

import android.content.Context;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.au */
/* loaded from: classes2.dex */
public class C5994au implements InterfaceC5993at, InvocationHandler {

    /* renamed from: a */
    private static final String[][] f21031a = {new String[]{"com.bun.supplier.IIdentifierListener", "com.bun.supplier.IdSupplier"}, new String[]{"com.bun.miitmdid.core.IIdentifierListener", "com.bun.miitmdid.supplier.IdSupplier"}};

    /* renamed from: a */
    private Context f21034a;

    /* renamed from: a */
    private Class f21036a = null;

    /* renamed from: b */
    private Class f21039b = null;

    /* renamed from: a */
    private Method f21038a = null;

    /* renamed from: b */
    private Method f21040b = null;

    /* renamed from: c */
    private Method f21041c = null;

    /* renamed from: d */
    private Method f21042d = null;

    /* renamed from: e */
    private Method f21043e = null;

    /* renamed from: f */
    private Method f21044f = null;

    /* renamed from: g */
    private Method f21045g = null;

    /* renamed from: a */
    private final Object f21037a = new Object();

    /* renamed from: a */
    private volatile int f21032a = 0;

    /* renamed from: a */
    private volatile long f21033a = 0;

    /* renamed from: a */
    private volatile C5995a f21035a = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.au$a */
    /* loaded from: classes2.dex */
    public class C5995a {

        /* renamed from: a */
        Boolean f21047a;

        /* renamed from: a */
        String f21048a;

        /* renamed from: b */
        String f21049b;

        /* renamed from: c */
        String f21050c;

        /* renamed from: d */
        String f21051d;

        private C5995a() {
            this.f21047a = null;
            this.f21048a = null;
            this.f21049b = null;
            this.f21050c = null;
            this.f21051d = null;
        }

        /* renamed from: a */
        boolean m3736a() {
            if (!TextUtils.isEmpty(this.f21048a) || !TextUtils.isEmpty(this.f21049b) || !TextUtils.isEmpty(this.f21050c) || !TextUtils.isEmpty(this.f21051d)) {
                this.f21047a = Boolean.TRUE;
            }
            return this.f21047a != null;
        }
    }

    public C5994au(Context context) {
        this.f21034a = context.getApplicationContext();
        m3744a(context);
        m3738b(context);
    }

    /* renamed from: a */
    private static Class<?> m3743a(Context context, String str) {
        try {
            return C6469u.m1234a(context, str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* renamed from: a */
    private static <T> T m3739a(Method method, Object obj, Object... objArr) {
        if (method != null) {
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
        return null;
    }

    /* renamed from: a */
    private static Method m3742a(Class<?> cls, String str, Class<?>... clsArr) {
        if (cls != null) {
            try {
                return cls.getMethod(str, clsArr);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m3745a() {
        synchronized (this.f21037a) {
            try {
                this.f21037a.notifyAll();
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    private void m3744a(Context context) {
        Class<?> m3743a = m3743a(context, "com.bun.miitmdid.core.MdidSdk");
        Class<?> cls = null;
        Class<?> cls2 = null;
        int i = 0;
        while (true) {
            String[][] strArr = f21031a;
            if (i >= strArr.length) {
                break;
            }
            String[] strArr2 = strArr[i];
            Class<?> m3743a2 = m3743a(context, strArr2[0]);
            Class<?> m3743a3 = m3743a(context, strArr2[1]);
            if (m3743a2 != null && m3743a3 != null) {
                m3737b("found class in index " + i);
                cls2 = m3743a3;
                cls = m3743a2;
                break;
            }
            i++;
            cls2 = m3743a3;
            cls = m3743a2;
        }
        this.f21036a = m3743a;
        this.f21038a = m3742a(m3743a, "InitSdk", Context.class, cls);
        this.f21039b = cls;
        this.f21040b = m3742a(cls2, "getUDID", new Class[0]);
        this.f21041c = m3742a(cls2, "getOAID", new Class[0]);
        this.f21042d = m3742a(cls2, "getVAID", new Class[0]);
        this.f21043e = m3742a(cls2, "getAAID", new Class[0]);
        this.f21044f = m3742a(cls2, "isSupported", new Class[0]);
        this.f21045g = m3742a(cls2, "shutDown", new Class[0]);
    }

    /* renamed from: a */
    private void m3740a(String str) {
        if (this.f21035a != null) {
            return;
        }
        long j = this.f21033a;
        long elapsedRealtime = SystemClock.elapsedRealtime() - Math.abs(j);
        int i = this.f21032a;
        if (elapsedRealtime > 3000 && i < 3) {
            synchronized (this.f21037a) {
                if (this.f21033a == j && this.f21032a == i) {
                    m3737b("retry, current count is " + i);
                    this.f21032a = this.f21032a + 1;
                    m3738b(this.f21034a);
                    j = this.f21033a;
                    elapsedRealtime = SystemClock.elapsedRealtime() - Math.abs(j);
                }
            }
        }
        if (this.f21035a != null || j < 0 || elapsedRealtime > 3000 || Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        synchronized (this.f21037a) {
            if (this.f21035a == null) {
                try {
                    m3737b(str + " wait...");
                    this.f21037a.wait(3000L);
                } catch (Exception unused) {
                }
            }
        }
    }

    /* renamed from: a */
    private static boolean m3741a(Object obj) {
        return (obj instanceof Boolean) || (obj instanceof Character) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double);
    }

    /* renamed from: b */
    private void m3738b(Context context) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = -elapsedRealtime;
        Class cls = this.f21039b;
        if (cls != null) {
            try {
                ClassLoader classLoader = cls.getClassLoader();
                if (classLoader == null) {
                    classLoader = context.getClassLoader();
                }
                m3739a(this.f21038a, this.f21036a.newInstance(), context, Proxy.newProxyInstance(classLoader, new Class[]{this.f21039b}, this));
            } catch (Throwable th) {
                m3737b("call init sdk error:" + th);
            }
            this.f21033a = elapsedRealtime;
        }
        elapsedRealtime = j;
        this.f21033a = elapsedRealtime;
    }

    /* renamed from: b */
    private static void m3737b(String str) {
        AbstractC5876b.m4147a("mdid:" + str);
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        m3740a("getOAID");
        if (this.f21035a == null) {
            return null;
        }
        return this.f21035a.f21049b;
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        m3740a("isSupported");
        return this.f21035a != null && Boolean.TRUE.equals(this.f21035a.f21047a);
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        this.f21033a = SystemClock.elapsedRealtime();
        if (objArr != null) {
            C5995a c5995a = new C5995a();
            int length = objArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Object obj2 = objArr[i];
                if (obj2 != null && !m3741a(obj2)) {
                    c5995a.f21048a = (String) m3739a(this.f21040b, obj2, new Object[0]);
                    c5995a.f21049b = (String) m3739a(this.f21041c, obj2, new Object[0]);
                    c5995a.f21050c = (String) m3739a(this.f21042d, obj2, new Object[0]);
                    c5995a.f21051d = (String) m3739a(this.f21043e, obj2, new Object[0]);
                    c5995a.f21047a = (Boolean) m3739a(this.f21044f, obj2, new Object[0]);
                    m3739a(this.f21045g, obj2, new Object[0]);
                    if (c5995a.m3736a()) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("has get succ, check duplicate:");
                        sb.append(this.f21035a != null);
                        m3737b(sb.toString());
                        synchronized (C5994au.class) {
                            if (this.f21035a == null) {
                                this.f21035a = c5995a;
                            }
                        }
                    }
                }
                i++;
            }
        }
        m3745a();
        return null;
    }
}
