package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.ah;
import com.xiaomi.push.ak;
import com.xiaomi.push.bi;
import com.xiaomi.push.s;
import java.util.concurrent.ConcurrentHashMap;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public final class bu implements ao {

    /* renamed from: a  reason: collision with root package name */
    private static volatile bu f9300a;

    /* renamed from: a  reason: collision with other field name */
    private long f969a;

    /* renamed from: a  reason: collision with other field name */
    Context f970a;

    /* renamed from: a  reason: collision with other field name */
    private SharedPreferences f971a;

    /* renamed from: a  reason: collision with other field name */
    private volatile boolean f973a = false;

    /* renamed from: a  reason: collision with other field name */
    private ConcurrentHashMap<String, a> f972a = new ConcurrentHashMap<>();

    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        long f9301a;

        /* renamed from: a  reason: collision with other field name */
        String f974a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(String str, long j) {
            this.f974a = str;
            this.f9301a = j;
        }

        abstract void a(bu buVar);

        @Override // java.lang.Runnable
        public void run() {
            if (bu.f9300a != null) {
                Context context = bu.f9300a.f970a;
                if (bi.d(context)) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SharedPreferences sharedPreferences = bu.f9300a.f971a;
                    if (currentTimeMillis - sharedPreferences.getLong(":ts-" + this.f974a, 0L) > this.f9301a || ah.a(context)) {
                        SharedPreferences.Editor edit = bu.f9300a.f971a.edit();
                        s.a(edit.putLong(":ts-" + this.f974a, System.currentTimeMillis()));
                        a(bu.f9300a);
                    }
                }
            }
        }
    }

    private bu(Context context) {
        this.f970a = context.getApplicationContext();
        this.f971a = context.getSharedPreferences("sync", 0);
    }

    public static bu a(Context context) {
        if (f9300a == null) {
            synchronized (bu.class) {
                if (f9300a == null) {
                    f9300a = new bu(context);
                }
            }
        }
        return f9300a;
    }

    public String a(String str, String str2) {
        SharedPreferences sharedPreferences = this.f971a;
        return sharedPreferences.getString(str + Constants.COLON_SEPARATOR + str2, "");
    }

    @Override // com.xiaomi.push.service.ao
    public void a() {
        if (!this.f973a) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f969a >= OpenStreetMapTileProviderConstants.ONE_HOUR) {
                this.f969a = currentTimeMillis;
                this.f973a = true;
                ak.a(this.f970a).a(new bv(this), (int) (Math.random() * 10.0d));
            }
        }
    }

    public void a(a aVar) {
        if (this.f972a.putIfAbsent(aVar.f974a, aVar) == null) {
            ak.a(this.f970a).a(aVar, ((int) (Math.random() * 30.0d)) + 10);
        }
    }

    public void a(String str, String str2, String str3) {
        SharedPreferences.Editor edit = f9300a.f971a.edit();
        s.a(edit.putString(str + Constants.COLON_SEPARATOR + str2, str3));
    }
}
