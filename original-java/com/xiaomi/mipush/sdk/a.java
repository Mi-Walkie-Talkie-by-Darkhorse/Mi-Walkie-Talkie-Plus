package com.xiaomi.mipush.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.push.em;
import com.xiaomi.push.en;
import java.util.HashSet;
import java.util.Set;

@TargetApi(14)
/* loaded from: classes2.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a  reason: collision with root package name */
    private Set<String> f8675a = new HashSet();

    private static void a(Application application) {
        application.registerActivityLifecycleCallbacks(new a());
    }

    public static void a(Context context) {
        a((Application) context.getApplicationContext());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        en a2;
        String packageName;
        String a3;
        int i;
        Intent intent = activity.getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("messageId");
            int intExtra = intent.getIntExtra("eventMessageType", -1);
            if (!TextUtils.isEmpty(stringExtra) && intExtra > 0 && !this.f8675a.contains(stringExtra)) {
                this.f8675a.add(stringExtra);
                if (intExtra == 3000) {
                    a2 = en.a(activity.getApplicationContext());
                    packageName = activity.getPackageName();
                    a3 = em.m233a(intExtra);
                    i = 3008;
                } else if (intExtra == 1000) {
                    a2 = en.a(activity.getApplicationContext());
                    packageName = activity.getPackageName();
                    a3 = em.m233a(intExtra);
                    i = 1008;
                } else {
                    return;
                }
                a2.a(packageName, a3, stringExtra, i, null);
            }
        }
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
