package com.xiaomi.mipush.sdk.help;

import android.app.Activity;
import android.os.Bundle;
import com.xiaomi.mipush.sdk.o;

/* loaded from: classes2.dex */
public class HelpActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o.a(this, getIntent(), null);
        finish();
    }
}
