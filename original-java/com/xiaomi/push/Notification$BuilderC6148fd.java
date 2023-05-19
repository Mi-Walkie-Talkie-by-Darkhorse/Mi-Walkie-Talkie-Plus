package com.xiaomi.push;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Map;

@SuppressLint({"NewApi"})
/* renamed from: com.xiaomi.push.fd */
/* loaded from: classes2.dex */
public class Notification$BuilderC6148fd extends Notification.Builder {

    /* renamed from: a */
    private Context f21512a;

    public Notification$BuilderC6148fd(Context context) {
        super(context);
        this.f21512a = context;
    }

    /* renamed from: a */
    public int m2972a(Resources resources, String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return 0;
        }
        return resources.getIdentifier(str, str2, str3);
    }

    /* renamed from: a */
    public final int m2969a(String str) {
        return m2972a(m2973a().getResources(), str, "id", m2973a().getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Context m2973a() {
        return this.f21512a;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public Notification$BuilderC6148fd addExtras(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 20) {
            super.addExtras(bundle);
        }
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public Notification$BuilderC6148fd setCustomContentView(RemoteViews remoteViews) {
        if (Build.VERSION.SDK_INT >= 24) {
            super.setCustomContentView(remoteViews);
        } else {
            super.setContent(remoteViews);
        }
        return this;
    }

    /* renamed from: a */
    public Notification$BuilderC6148fd mo2965a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                C6016bj.m3648a((Object) this, "setColor", Integer.valueOf(Color.parseColor(str)));
            } catch (Exception e) {
                AbstractC5876b.m4138d("fail to set color. " + e);
            }
        }
        return this;
    }

    /* renamed from: a */
    public Notification$BuilderC6148fd mo2948a(Map<String, String> map) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo2959a() {
    }

    @Override // android.app.Notification.Builder
    public Notification build() {
        mo2959a();
        return super.build();
    }
}
