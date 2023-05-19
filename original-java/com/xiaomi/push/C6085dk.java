package com.xiaomi.push;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;

/* renamed from: com.xiaomi.push.dk */
/* loaded from: classes2.dex */
public class C6085dk implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private Context f21276a;

    /* renamed from: a */
    private String f21277a;

    /* renamed from: b */
    private String f21278b;

    public C6085dk(Context context, String str) {
        this.f21277a = "";
        this.f21276a = context;
        this.f21277a = str;
    }

    /* renamed from: a */
    private void m3372a(String str) {
        C6246id c6246id = new C6246id();
        c6246id.m2470a(str);
        c6246id.m2474a(System.currentTimeMillis());
        c6246id.m2473a(EnumC6239hx.ActivityActiveTimeStamp);
        AbstractC6094ds.m3352a(this.f21276a, c6246id);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (TextUtils.isEmpty(this.f21277a) || TextUtils.isEmpty(localClassName)) {
            return;
        }
        this.f21278b = "";
        if (!TextUtils.isEmpty("") && !TextUtils.equals(this.f21278b, localClassName)) {
            this.f21277a = "";
            return;
        }
        m3372a(this.f21276a.getPackageName() + "|" + localClassName + Constants.COLON_SEPARATOR + this.f21277a + Constants.ACCEPT_TIME_SEPARATOR_SP + String.valueOf(System.currentTimeMillis() / 1000));
        this.f21277a = "";
        this.f21278b = "";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (TextUtils.isEmpty(this.f21278b)) {
            this.f21278b = activity.getLocalClassName();
        }
        this.f21277a = String.valueOf(System.currentTimeMillis() / 1000);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
