package com.bumptech.glide.manager;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import com.bumptech.glide.manager.c.a;

/* compiled from: DefaultConnectivityMonitorFactory */
public class f implements d {
    @NonNull
    public c a(@NonNull Context context, @NonNull a aVar) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0 ? new e(context, aVar) : new j();
    }
}
