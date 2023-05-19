package com.xiaomi.push.service;

import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5968aa;
import com.xiaomi.push.C5983an;
import com.xiaomi.push.C6001b;
import com.xiaomi.push.C6035c;
import com.xiaomi.push.C6097dv;
import com.xiaomi.push.C6099dw;
import com.xiaomi.push.C6226hm;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6469u;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.service.bs */
/* loaded from: classes2.dex */
public class C6404bs {

    /* renamed from: a */
    private static C6404bs f23124a = new C6404bs();

    /* renamed from: a */
    private static String f23125a;

    /* renamed from: a */
    private C5983an.AbstractC5985b f23126a;

    /* renamed from: a */
    private C6097dv.C6098a f23127a;

    /* renamed from: a */
    private List<AbstractC6405a> f23128a = new ArrayList();

    /* renamed from: com.xiaomi.push.service.bs$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractC6405a {
        /* renamed from: a */
        public void mo1433a(C6097dv.C6098a c6098a) {
        }

        /* renamed from: a */
        public void mo1432a(C6099dw.C6101b c6101b) {
        }
    }

    private C6404bs() {
    }

    /* renamed from: a */
    public static C6404bs m1447a() {
        return f23124a;
    }

    /* renamed from: a */
    public static synchronized String m1446a() {
        String str;
        synchronized (C6404bs.class) {
            if (f23125a == null) {
                SharedPreferences sharedPreferences = C6469u.m1240a().getSharedPreferences("XMPushServiceConfig", 0);
                String string = sharedPreferences.getString("DeviceUUID", null);
                f23125a = string;
                if (string == null) {
                    String m2508a = C6242i.m2508a(C6469u.m1240a(), false);
                    f23125a = m2508a;
                    if (m2508a != null) {
                        sharedPreferences.edit().putString("DeviceUUID", f23125a).commit();
                    }
                }
            }
            str = f23125a;
        }
        return str;
    }

    /* renamed from: b */
    private void m1437b() {
        if (this.f23127a == null) {
            m1435d();
        }
    }

    /* renamed from: c */
    private void m1436c() {
        if (this.f23126a != null) {
            return;
        }
        C6406bt c6406bt = new C6406bt(this);
        this.f23126a = c6406bt;
        C6226hm.m2607a(c6406bt);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m1435d() {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        Exception e;
        try {
            try {
                bufferedInputStream = new BufferedInputStream(C6469u.m1240a().openFileInput("XMCloudCfg"));
            } catch (Exception e2) {
                bufferedInputStream = null;
                e = e2;
            } catch (Throwable th2) {
                bufferedInputStream = null;
                th = th2;
                C5968aa.m3810a(bufferedInputStream);
                throw th;
            }
            try {
                this.f23127a = C6097dv.C6098a.m3330b(C6001b.m3711a(bufferedInputStream));
                bufferedInputStream.close();
            } catch (Exception e3) {
                e = e3;
                AbstractC5876b.m4147a("load config failure: " + e.getMessage());
                C5968aa.m3810a(bufferedInputStream);
                if (this.f23127a != null) {
                }
            }
            C5968aa.m3810a(bufferedInputStream);
            if (this.f23127a != null) {
                this.f23127a = new C6097dv.C6098a();
            }
        } catch (Throwable th3) {
            th = th3;
            C5968aa.m3810a(bufferedInputStream);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m1434e() {
        try {
            if (this.f23127a != null) {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(C6469u.m1240a().openFileOutput("XMCloudCfg", 0));
                C6035c m3553a = C6035c.m3553a(bufferedOutputStream);
                this.f23127a.mo3141a(m3553a);
                m3553a.m3575a();
                bufferedOutputStream.close();
            }
        } catch (Exception e) {
            AbstractC5876b.m4147a("save config failure: " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public int m1449a() {
        m1437b();
        C6097dv.C6098a c6098a = this.f23127a;
        if (c6098a != null) {
            return c6098a.m3328c();
        }
        return 0;
    }

    /* renamed from: a */
    public C6097dv.C6098a m1448a() {
        m1437b();
        return this.f23127a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized void m1445a() {
        this.f23128a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m1444a(C6099dw.C6101b c6101b) {
        AbstractC6405a[] abstractC6405aArr;
        if (c6101b.m3277d() && c6101b.m3278d() > m1449a()) {
            m1436c();
        }
        synchronized (this) {
            List<AbstractC6405a> list = this.f23128a;
            abstractC6405aArr = (AbstractC6405a[]) list.toArray(new AbstractC6405a[list.size()]);
        }
        for (AbstractC6405a abstractC6405a : abstractC6405aArr) {
            abstractC6405a.mo1432a(c6101b);
        }
    }

    /* renamed from: a */
    public synchronized void m1443a(AbstractC6405a abstractC6405a) {
        this.f23128a.add(abstractC6405a);
    }
}
