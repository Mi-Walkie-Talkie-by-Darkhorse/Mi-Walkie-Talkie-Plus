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
import com.xiaomi.channel.commonutils.logger.b;
import java.util.Map;

@SuppressLint({"NewApi"})
/* loaded from: classes2.dex */
public class fd extends Notification.Builder {

    /* renamed from: a  reason: collision with root package name */
    private Context f8934a;

    public fd(Context context) {
        super(context);
        this.f8934a = context;
    }

    public int a(Resources resources, String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str)) {
            return resources.getIdentifier(str, str2, str3);
        }
        return 0;
    }

    public final int a(String str) {
        return a(mo269a().getResources(), str, "id", mo269a().getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Context mo269a() {
        return this.f8934a;
    }

    /* renamed from: a */
    public fd addExtras(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 20) {
            super.addExtras(bundle);
        }
        return this;
    }

    /* renamed from: a */
    public fd setCustomContentView(RemoteViews remoteViews) {
        if (Build.VERSION.SDK_INT >= 24) {
            super.setCustomContentView(remoteViews);
        } else {
            super.setContent(remoteViews);
        }
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public fd m263a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                bj.a((Object) this, "setColor", Integer.valueOf(Color.parseColor(str)));
            } catch (Exception e) {
                b.d("fail to set color. " + e);
            }
        }
        return this;
    }

    public fd a(Map<String, String> map) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a() {
    }

    @Override // android.app.Notification.Builder
    public Notification build() {
        a();
        return super.build();
    }
}
