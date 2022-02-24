package com.xiaomi.push;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.mipush.sdk.Constants;

/* loaded from: classes2.dex */
public class dk implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private Context f8851a;

    /* renamed from: a  reason: collision with other field name */
    private String f217a;

    /* renamed from: b  reason: collision with root package name */
    private String f8852b;

    public dk(Context context, String str) {
        this.f217a = "";
        this.f8851a = context;
        this.f217a = str;
    }

    private void a(String str) {
        id idVar = new id();
        idVar.a(str);
        idVar.a(System.currentTimeMillis());
        idVar.a(hx.ActivityActiveTimeStamp);
        ds.a(this.f8851a, idVar);
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
        if (!TextUtils.isEmpty(this.f217a) && !TextUtils.isEmpty(localClassName)) {
            this.f8852b = "";
            if (TextUtils.isEmpty("") || TextUtils.equals(this.f8852b, localClassName)) {
                a(this.f8851a.getPackageName() + "|" + localClassName + Constants.COLON_SEPARATOR + this.f217a + Constants.ACCEPT_TIME_SEPARATOR_SP + String.valueOf(System.currentTimeMillis() / 1000));
                this.f217a = "";
                this.f8852b = "";
                return;
            }
            this.f217a = "";
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (TextUtils.isEmpty(this.f8852b)) {
            this.f8852b = activity.getLocalClassName();
        }
        this.f217a = String.valueOf(System.currentTimeMillis() / 1000);
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
