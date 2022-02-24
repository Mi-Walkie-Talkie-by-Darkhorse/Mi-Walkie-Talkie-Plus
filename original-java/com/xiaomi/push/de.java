package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.push.an;
import com.xiaomi.push.service.bs;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class de {

    /* renamed from: a  reason: collision with root package name */
    private static volatile de f8836a;

    /* renamed from: a  reason: collision with other field name */
    private Context f196a;

    /* renamed from: a  reason: collision with other field name */
    private final ConcurrentLinkedQueue<b> f197a;

    /* loaded from: classes2.dex */
    class a extends b {
        a() {
            super();
        }

        @Override // com.xiaomi.push.de.b, com.xiaomi.push.an.b
        /* renamed from: b */
        public void mo161b() {
            de.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends an.b {

        /* renamed from: a  reason: collision with root package name */
        long f8838a = System.currentTimeMillis();

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        @Override // com.xiaomi.push.an.b
        public boolean a() {
            return true;
        }

        @Override // com.xiaomi.push.an.b
        /* renamed from: b */
        public void mo161b() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.xiaomi.push.an.b
        /* renamed from: b  reason: collision with other method in class */
        public final boolean mo161b() {
            return System.currentTimeMillis() - this.f8838a > 172800000;
        }
    }

    /* loaded from: classes2.dex */
    class c extends b {

        /* renamed from: a  reason: collision with root package name */
        int f8840a;

        /* renamed from: a  reason: collision with other field name */
        File f199a;

        /* renamed from: a  reason: collision with other field name */
        String f200a;

        /* renamed from: a  reason: collision with other field name */
        boolean f201a;

        /* renamed from: b  reason: collision with root package name */
        String f8841b;

        /* renamed from: b  reason: collision with other field name */
        boolean f202b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public c(String str, String str2, File file, boolean z) {
            super();
            this.f200a = str;
            this.f8841b = str2;
            this.f199a = file;
            this.f202b = z;
        }

        private boolean c() {
            int i;
            int i2 = 0;
            SharedPreferences sharedPreferences = de.this.f196a.getSharedPreferences("log.timestamp", 0);
            String string = sharedPreferences.getString("log.requst", "");
            long currentTimeMillis = System.currentTimeMillis();
            try {
                JSONObject jSONObject = new JSONObject(string);
                currentTimeMillis = jSONObject.getLong("time");
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
                jSONObject2.put("time", currentTimeMillis);
                jSONObject2.put("times", i2 + 1);
                sharedPreferences.edit().putString("log.requst", jSONObject2.toString()).commit();
            } catch (JSONException e) {
                com.xiaomi.channel.commonutils.logger.b.c("JSONException on put " + e.getMessage());
            }
            return true;
        }

        @Override // com.xiaomi.push.de.b, com.xiaomi.push.an.b
        public boolean a() {
            return bi.e(de.this.f196a) || (this.f202b && bi.b(de.this.f196a));
        }

        @Override // com.xiaomi.push.de.b, com.xiaomi.push.an.b
        /* renamed from: b */
        public void mo161b() {
            try {
                if (c()) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("uid", bs.m625a());
                    hashMap.put("token", this.f8841b);
                    hashMap.put("net", bi.m94a(de.this.f196a));
                    bi.a(this.f200a, hashMap, this.f199a, "file");
                }
                this.f201a = true;
            } catch (IOException unused) {
            }
        }

        @Override // com.xiaomi.push.an.b
        /* renamed from: c  reason: collision with other method in class */
        public void mo162c() {
            if (!this.f201a) {
                int i = this.f8840a + 1;
                this.f8840a = i;
                if (i < 3) {
                    de.this.f197a.add(this);
                }
            }
            if (this.f201a || this.f8840a >= 3) {
                this.f199a.delete();
            }
            de.this.a((1 << this.f8840a) * 1000);
        }
    }

    private de(Context context) {
        ConcurrentLinkedQueue<b> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
        this.f197a = concurrentLinkedQueue;
        this.f196a = context;
        concurrentLinkedQueue.add(new a());
        b(0L);
    }

    public static de a(Context context) {
        if (f8836a == null) {
            synchronized (de.class) {
                if (f8836a == null) {
                    f8836a = new de(context);
                }
            }
        }
        f8836a.f196a = context;
        return f8836a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        b peek = this.f197a.peek();
        if (peek != null && peek.a()) {
            b(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (!ac.b() && !ac.m66a()) {
            try {
                File file = new File(this.f196a.getExternalFilesDir(null) + "/.logcache");
                if (file.exists() && file.isDirectory()) {
                    for (File file2 : file.listFiles()) {
                        file2.delete();
                    }
                }
            } catch (NullPointerException unused) {
            }
        }
    }

    private void b(long j) {
        if (!this.f197a.isEmpty()) {
            hm.a(new dg(this), j);
        }
    }

    private void c() {
        while (!this.f197a.isEmpty()) {
            b peek = this.f197a.peek();
            if (peek != null) {
                if (peek.mo161b() || this.f197a.size() > 6) {
                    com.xiaomi.channel.commonutils.logger.b.c("remove Expired task");
                    this.f197a.remove(peek);
                } else {
                    return;
                }
            }
        }
    }

    public void a() {
        c();
        a(0L);
    }

    public void a(String str, String str2, Date date, Date date2, int i, boolean z) {
        this.f197a.add(new df(this, i, date, date2, str, str2, z));
        b(0L);
    }
}
