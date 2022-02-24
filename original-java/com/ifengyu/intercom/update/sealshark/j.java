package com.ifengyu.intercom.update.sealshark;

import android.content.Context;
import com.ifengyu.intercom.update.sealshark.UpdateHelper;

/* compiled from: UpdateManager.java */
/* loaded from: classes2.dex */
public class j {

    /* renamed from: b  reason: collision with root package name */
    public static volatile j f7164b;

    /* renamed from: a  reason: collision with root package name */
    private UpdateHelper f7165a;

    public static j a() {
        if (f7164b == null) {
            synchronized (j.class) {
                if (f7164b == null) {
                    f7164b = new j();
                }
            }
        }
        return f7164b;
    }

    public static void b() {
        if (f7164b != null) {
            f7164b = null;
        }
    }

    public void a(Context context, Integer num, String str, UpdateHelper.e eVar) {
        UpdateHelper updateHelper = new UpdateHelper(context);
        this.f7165a = updateHelper;
        updateHelper.a(num.intValue(), str, eVar);
    }
}
