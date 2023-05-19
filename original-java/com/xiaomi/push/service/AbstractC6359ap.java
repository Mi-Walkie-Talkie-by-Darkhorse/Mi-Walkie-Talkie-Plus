package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.Notification$BuilderC6148fd;
import java.util.Map;

/* renamed from: com.xiaomi.push.service.ap */
/* loaded from: classes2.dex */
public abstract class AbstractC6359ap {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract Notification$BuilderC6148fd m1627a(Context context, int i, String str, Map<String, String> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void m1625a(C6260ir c6260ir, Map<String, String> map, int i, Notification notification);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void m1624a(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract boolean m1626a(Context context, int i, String str, Map<String, String> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract boolean m1623a(Map<String, String> map, int i, Notification notification);
}
