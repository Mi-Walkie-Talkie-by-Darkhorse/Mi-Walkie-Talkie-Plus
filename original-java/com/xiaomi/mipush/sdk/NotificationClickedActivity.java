package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.material.badge.BadgeDrawable;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* loaded from: classes2.dex */
public final class NotificationClickedActivity extends Activity {

    /* renamed from: a */
    private BroadcastReceiver f20870a;

    /* renamed from: a */
    private Handler f20871a;

    /* renamed from: a */
    private void m4051a(Intent intent) {
        if (intent != null) {
            try {
                Intent intent2 = (Intent) intent.getParcelableExtra("mipush_serviceIntent");
                if (intent2 != null) {
                    intent2.setComponent(new ComponentName(getPackageName(), "com.xiaomi.mipush.sdk.PushMessageHandler"));
                    intent2.putExtra("is_clicked_activity_call", true);
                    AbstractC5876b.m4141b("clicked activity start service.");
                    startService(intent2);
                }
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = 1;
        attributes.width = 1;
        attributes.gravity = BadgeDrawable.TOP_START;
        window.setAttributes(attributes);
        Handler handler = new Handler();
        this.f20871a = handler;
        handler.postDelayed(new RunnableC5916ac(this), 3000L);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("action_clicked_activity_finish");
        C5917ad c5917ad = new C5917ad(this);
        this.f20870a = c5917ad;
        try {
            registerReceiver(c5917ad, intentFilter, C5941d.m3888a(this), null);
        } catch (Exception unused) {
        }
        m4051a(getIntent());
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f20871a.removeCallbacksAndMessages(null);
        try {
            unregisterReceiver(this.f20870a);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m4051a(intent);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}
