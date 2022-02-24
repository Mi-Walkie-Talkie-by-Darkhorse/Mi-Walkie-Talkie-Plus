package com.xiaomi.push.service;

import android.app.Notification;
import android.content.Context;
import com.xiaomi.push.fd;
import com.xiaomi.push.ir;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ap {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract fd a(Context context, int i, String str, Map<String, String> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(ir irVar, Map<String, String> map, int i, Notification notification);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(String str);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a  reason: collision with other method in class */
    public abstract boolean m590a(Context context, int i, String str, Map<String, String> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean a(Map<String, String> map, int i, Notification notification);
}
