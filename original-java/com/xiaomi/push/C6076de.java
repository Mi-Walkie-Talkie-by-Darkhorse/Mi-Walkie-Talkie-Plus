package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5983an;
import com.xiaomi.push.service.C6404bs;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.xiaomi.push.de */
/* loaded from: classes2.dex */
public class C6076de {

    /* renamed from: a */
    private static volatile C6076de f21240a;

    /* renamed from: a */
    private Context f21241a;

    /* renamed from: a */
    private final ConcurrentLinkedQueue<C6078b> f21242a;

    /* renamed from: com.xiaomi.push.de$a */
    /* loaded from: classes2.dex */
    class C6077a extends C6078b {
        C6077a() {
            super();
        }

        @Override // com.xiaomi.push.C6076de.C6078b, com.xiaomi.push.C5983an.AbstractC5985b
        /* renamed from: b */
        public void mo1431b() {
            C6076de.this.m3384b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.xiaomi.push.de$b */
    /* loaded from: classes2.dex */
    public class C6078b extends C5983an.AbstractC5985b {

        /* renamed from: a */
        long f21244a = System.currentTimeMillis();

        /* JADX INFO: Access modifiers changed from: package-private */
        public C6078b() {
        }

        /* renamed from: a */
        public boolean mo3380a() {
            return true;
        }

        @Override // com.xiaomi.push.C5983an.AbstractC5985b
        /* renamed from: b */
        public void mo1431b() {
        }

        /* renamed from: b */
        final boolean m3381b() {
            return System.currentTimeMillis() - this.f21244a > 172800000;
        }
    }

    /* renamed from: com.xiaomi.push.de$c */
    /* loaded from: classes2.dex */
    class C6079c extends C6078b {

        /* renamed from: a */
        int f21246a;

        /* renamed from: a */
        File f21248a;

        /* renamed from: a */
        String f21249a;

        /* renamed from: a */
        boolean f21250a;

        /* renamed from: b */
        String f21251b;

        /* renamed from: b */
        boolean f21252b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C6079c(String str, String str2, File file, boolean z) {
            super();
            this.f21249a = str;
            this.f21251b = str2;
            this.f21248a = file;
            this.f21252b = z;
        }

        /* renamed from: c */
        private boolean m3379c() {
            int i;
            int i2 = 0;
            SharedPreferences sharedPreferences = C6076de.this.f21241a.getSharedPreferences("log.timestamp", 0);
            String string = sharedPreferences.getString("log.requst", "");
            long currentTimeMillis = System.currentTimeMillis();
            try {
                JSONObject jSONObject = new JSONObject(string);
                currentTimeMillis = jSONObject.getLong(CrashHianalyticsData.TIME);
                i = jSONObject.getInt("times");
            } catch (JSONException unused) {
                i = 0;
            }
            if (System.currentTimeMillis() - currentTimeMillis >= 86400000) {
                currentTimeMillis = System.currentTimeMillis();
            } else if (i > 10) {
                return false;
            } else {
                i2 = i;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put(CrashHianalyticsData.TIME, currentTimeMillis);
                jSONObject2.put("times", i2 + 1);
                sharedPreferences.edit().putString("log.requst", jSONObject2.toString()).commit();
            } catch (JSONException e) {
                AbstractC5876b.m4139c("JSONException on put " + e.getMessage());
            }
            return true;
        }

        @Override // com.xiaomi.push.C6076de.C6078b
        /* renamed from: a */
        public boolean mo3380a() {
            return C6013bi.m3659e(C6076de.this.f21241a) || (this.f21252b && C6013bi.m3662b(C6076de.this.f21241a));
        }

        @Override // com.xiaomi.push.C6076de.C6078b, com.xiaomi.push.C5983an.AbstractC5985b
        /* renamed from: b */
        public void mo1431b() {
            try {
                if (m3379c()) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("uid", C6404bs.m1446a());
                    hashMap.put("token", this.f21251b);
                    hashMap.put("net", C6013bi.m3675a(C6076de.this.f21241a));
                    C6013bi.m3664a(this.f21249a, hashMap, this.f21248a, "file");
                }
                this.f21250a = true;
            } catch (IOException unused) {
            }
        }

        @Override // com.xiaomi.push.C5983an.AbstractC5985b
        /* renamed from: c */
        public void mo1430c() {
            if (!this.f21250a) {
                int i = this.f21246a + 1;
                this.f21246a = i;
                if (i < 3) {
                    C6076de.this.f21242a.add(this);
                }
            }
            if (this.f21250a || this.f21246a >= 3) {
                this.f21248a.delete();
            }
            C6076de.this.m3391a((1 << this.f21246a) * XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER);
        }
    }

    private C6076de(Context context) {
        ConcurrentLinkedQueue<C6078b> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        this.f21242a = concurrentLinkedQueue;
        this.f21241a = context;
        concurrentLinkedQueue.add(new C6077a());
        m3383b(0L);
    }

    /* renamed from: a */
    public static C6076de m3390a(Context context) {
        if (f21240a == null) {
            synchronized (C6076de.class) {
                if (f21240a == null) {
                    f21240a = new C6076de(context);
                }
            }
        }
        f21240a.f21241a = context;
        return f21240a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3391a(long j) {
        C6078b peek = this.f21242a.peek();
        if (peek == null || !peek.mo3380a()) {
            return;
        }
        m3383b(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3384b() {
        if (C5970ac.m3800b() || C5970ac.m3801a()) {
            return;
        }
        try {
            File file = new File(this.f21241a.getExternalFilesDir(null) + "/.logcache");
            if (file.exists() && file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                }
            }
        } catch (NullPointerException unused) {
        }
    }

    /* renamed from: b */
    private void m3383b(long j) {
        if (this.f21242a.isEmpty()) {
            return;
        }
        C6226hm.m2606a(new C6081dg(this), j);
    }

    /* renamed from: c */
    private void m3382c() {
        while (!this.f21242a.isEmpty()) {
            C6078b peek = this.f21242a.peek();
            if (peek != null) {
                if (!peek.m3381b() && this.f21242a.size() <= 6) {
                    return;
                }
                AbstractC5876b.m4139c("remove Expired task");
                this.f21242a.remove(peek);
            }
        }
    }

    /* renamed from: a */
    public void m3392a() {
        m3382c();
        m3391a(0L);
    }

    /* renamed from: a */
    public void m3385a(String str, String str2, Date date, Date date2, int i, boolean z) {
        this.f21242a.add(new C6080df(this, i, date, date2, str, str2, z));
        m3383b(0L);
    }
}
