package com.xiaomi.mipush.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.push.C6127em;
import com.xiaomi.push.C6129en;
import java.util.HashSet;
import java.util.Set;

@TargetApi(14)
/* renamed from: com.xiaomi.mipush.sdk.a */
/* loaded from: classes2.dex */
public class C5913a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private Set<String> f20875a = new HashSet();

    /* renamed from: a */
    private static void m4030a(Application application) {
        application.registerActivityLifecycleCallbacks(new C5913a());
    }

    /* renamed from: a */
    public static void m4029a(Context context) {
        m4030a((Application) context.getApplicationContext());
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
        C6129en m3082a;
        String packageName;
        String m3096a;
        int i;
        Intent intent = activity.getIntent();
        if (intent == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("messageId");
        int intExtra = intent.getIntExtra("eventMessageType", -1);
        if (TextUtils.isEmpty(stringExtra) || intExtra <= 0 || this.f20875a.contains(stringExtra)) {
            return;
        }
        this.f20875a.add(stringExtra);
        if (intExtra == 3000) {
            m3082a = C6129en.m3082a(activity.getApplicationContext());
            packageName = activity.getPackageName();
            m3096a = C6127em.m3096a(intExtra);
            i = 3008;
        } else if (intExtra != 1000) {
            return;
        } else {
            m3082a = C6129en.m3082a(activity.getApplicationContext());
            packageName = activity.getPackageName();
            m3096a = C6127em.m3096a(intExtra);
            i = 1008;
        }
        m3082a.m3076a(packageName, m3096a, stringExtra, i, null);
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
