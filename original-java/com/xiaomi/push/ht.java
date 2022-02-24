package com.xiaomi.push;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.bw;
import com.xiaomi.push.service.bx;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class ht {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ht f9053a;

    /* renamed from: a  reason: collision with other field name */
    private final Context f484a;

    /* renamed from: a  reason: collision with other field name */
    private Map<String, hu> f485a = new HashMap();

    private ht(Context context) {
        this.f484a = context;
    }

    public static ht a(Context context) {
        if (context == null) {
            b.d("[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed.");
            return null;
        }
        if (f9053a == null) {
            synchronized (ht.class) {
                if (f9053a == null) {
                    f9053a = new ht(context);
                }
            }
        }
        return f9053a;
    }

    private boolean a(String str, String str2, String str3, String str4, long j, String str5) {
        hz hzVar = new hz();
        hzVar.d(str3);
        hzVar.c(str4);
        hzVar.a(j);
        hzVar.b(str5);
        hzVar.a(true);
        hzVar.a("push_sdk_channel");
        hzVar.e(str2);
        return a(hzVar, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public hu a() {
        hu huVar = this.f485a.get("UPLOADER_PUSH_CHANNEL");
        if (huVar != null) {
            return huVar;
        }
        hu huVar2 = this.f485a.get("UPLOADER_HTTP");
        if (huVar2 != null) {
            return huVar2;
        }
        return null;
    }

    /* renamed from: a  reason: collision with other method in class */
    Map<String, hu> m352a() {
        return this.f485a;
    }

    public void a(hu huVar, String str) {
        if (huVar == null) {
            b.d("[TinyDataManager]: please do not add null mUploader to TinyDataManager.");
        } else if (TextUtils.isEmpty(str)) {
            b.d("[TinyDataManager]: can not add a provider from unkown resource.");
        } else {
            m352a().put(str, huVar);
        }
    }

    public boolean a(hz hzVar, String str) {
        if (TextUtils.isEmpty(str)) {
            b.m1a("pkgName is null or empty, upload ClientUploadDataItem failed.");
            return false;
        } else if (bw.a(hzVar, false)) {
            return false;
        } else {
            if (TextUtils.isEmpty(hzVar.d())) {
                hzVar.f(bw.a());
            }
            hzVar.g(str);
            bx.a(this.f484a, hzVar);
            return true;
        }
    }

    public boolean a(String str, String str2, long j, String str3) {
        return a(this.f484a.getPackageName(), this.f484a.getPackageName(), str, str2, j, str3);
    }
}
