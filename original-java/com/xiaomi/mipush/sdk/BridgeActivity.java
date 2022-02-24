package com.xiaomi.mipush.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
public class BridgeActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = 1;
        attributes.width = 1;
        attributes.gravity = 51;
        window.setAttributes(attributes);
    }

    @Override // android.app.Activity
    protected void onResume() {
        Intent intent;
        super.onResume();
        try {
            try {
                Intent intent2 = getIntent();
                if (!(intent2 == null || (intent = (Intent) intent2.getParcelableExtra("mipush_serviceIntent")) == null)) {
                    PushMessageHandler.a(getApplicationContext(), intent);
                }
            } catch (Exception e) {
                b.a(e);
            }
        } finally {
            finish();
        }
    }
}
