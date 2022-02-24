package com.xiaomi.push;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.xiaomi.channel.commonutils.logger.b;
import java.util.Map;

/* loaded from: classes2.dex */
public class fc extends ff {

    /* renamed from: a  reason: collision with root package name */
    private int f8931a = 16777216;

    /* renamed from: b  reason: collision with root package name */
    private Bitmap f8932b;

    /* renamed from: c  reason: collision with root package name */
    private Bitmap f8933c;

    public fc(Context context, String str) {
        super(context, str);
    }

    @Override // com.xiaomi.push.ff
    /* renamed from: a */
    public fc mo261a(Bitmap bitmap) {
        if (m272b() && bitmap != null) {
            if (bitmap.getWidth() != 984 || 184 > bitmap.getHeight() || bitmap.getHeight() > 1678) {
                b.m1a("colorful notification banner image resolution error, must belong to [984*184, 984*1678]");
            } else {
                this.f8932b = bitmap;
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.fd
    public fc a(String str) {
        if (m272b() && !TextUtils.isEmpty(str)) {
            try {
                this.f8931a = Color.parseColor(str);
            } catch (Exception unused) {
                b.m1a("parse banner notification image text color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.ff
    /* renamed from: a  reason: collision with other method in class */
    public ff setLargeIcon(Bitmap bitmap) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a */
    public String mo269a() {
        return "notification_banner";
    }

    @Override // com.xiaomi.push.fd
    /* renamed from: a  reason: collision with other method in class */
    public void mo269a() {
        Bitmap bitmap;
        RemoteViews remoteViews;
        if (!m272b() || this.f8932b == null) {
            m271b();
            return;
        }
        super.mo269a();
        Resources resources = mo269a().getResources();
        String packageName = mo269a().getPackageName();
        int a2 = a(resources, "bg", "id", packageName);
        if (l.a(mo269a()) >= 10) {
            remoteViews = mo269a();
            bitmap = a(this.f8932b, 30.0f);
        } else {
            remoteViews = mo269a();
            bitmap = this.f8932b;
        }
        remoteViews.setImageViewBitmap(a2, bitmap);
        int a3 = a(resources, "icon", "id", packageName);
        if (this.f8933c != null) {
            mo269a().setImageViewBitmap(a3, this.f8933c);
        } else {
            a(a3);
        }
        int a4 = a(resources, "title", "id", packageName);
        mo269a().setTextViewText(a4, ((ff) this).f339a);
        Map<String, String> map = ((ff) this).f342a;
        if (map != null && this.f8931a == 16777216) {
            a(map.get("notification_image_text_color"));
        }
        RemoteViews a5 = mo269a();
        int i = this.f8931a;
        a5.setTextColor(a4, (i == 16777216 || !m270a(i)) ? -1 : -16777216);
        setCustomContentView(mo269a());
        Bundle bundle = new Bundle();
        bundle.putBoolean("miui.customHeight", true);
        addExtras(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a */
    public boolean mo269a() {
        if (!l.m527a()) {
            return false;
        }
        Resources resources = mo269a().getResources();
        String packageName = mo269a().getPackageName();
        return (a(mo269a().getResources(), "bg", "id", mo269a().getPackageName()) == 0 || a(resources, "icon", "id", packageName) == 0 || a(resources, "title", "id", packageName) == 0 || l.a(mo269a()) < 9) ? false : true;
    }

    public fc b(Bitmap bitmap) {
        if (m272b() && bitmap != null) {
            this.f8933c = bitmap;
        }
        return this;
    }

    @Override // com.xiaomi.push.ff
    protected String b() {
        return null;
    }
}
