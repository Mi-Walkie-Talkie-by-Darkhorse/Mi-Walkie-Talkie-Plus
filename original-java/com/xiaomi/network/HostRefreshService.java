package com.xiaomi.network;

import android.app.IntentService;
import android.content.Intent;

public class HostRefreshService extends IntentService {
    /* access modifiers changed from: protected */
    public void onHandleIntent(Intent intent) {
        HostManager.getInstance().refreshFallbacks();
    }
}
