package com.xiaomi.push;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.Map;

/* renamed from: com.xiaomi.push.fc */
/* loaded from: classes2.dex */
public class Notification$BuilderC6147fc extends AbstractNotification$BuilderC6150ff {

    /* renamed from: a */
    private int f21509a;

    /* renamed from: b */
    private Bitmap f21510b;

    /* renamed from: c */
    private Bitmap f21511c;

    public Notification$BuilderC6147fc(Context context, String str) {
        super(context, str);
        this.f21509a = 16777216;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    public Notification$BuilderC6147fc mo2951a(Bitmap bitmap) {
        if (m2945b() && bitmap != null) {
            if (bitmap.getWidth() != 984 || 184 > bitmap.getHeight() || bitmap.getHeight() > 1678) {
                AbstractC5876b.m4147a("colorful notification banner image resolution error, must belong to [984*184, 984*1678]");
            } else {
                this.f21510b = bitmap;
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public Notification$BuilderC6147fc mo2965a(String str) {
        if (m2945b() && !TextUtils.isEmpty(str)) {
            try {
                this.f21509a = Color.parseColor(str);
            } catch (Exception unused) {
                AbstractC5876b.m4147a("parse banner notification image text color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff, android.app.Notification.Builder
    /* renamed from: a */
    public AbstractNotification$BuilderC6150ff setLargeIcon(Bitmap bitmap) {
        return this;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    protected String mo2960a() {
        return "notification_banner";
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff, com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public void mo2959a() {
        RemoteViews m2961a;
        Bitmap bitmap;
        if (!m2945b() || this.f21510b == null) {
            m2946b();
            return;
        }
        super.mo2959a();
        Resources resources = m2973a().getResources();
        String packageName = m2973a().getPackageName();
        int m2972a = m2972a(resources, "bg", "id", packageName);
        if (C6306l.m1852a(m2973a()) >= 10) {
            m2961a = m2961a();
            bitmap = m2950a(this.f21510b, 30.0f);
        } else {
            m2961a = m2961a();
            bitmap = this.f21510b;
        }
        m2961a.setImageViewBitmap(m2972a, bitmap);
        int m2972a2 = m2972a(resources, "icon", "id", packageName);
        if (this.f21511c != null) {
            m2961a().setImageViewBitmap(m2972a2, this.f21511c);
        } else {
            m2956a(m2972a2);
        }
        int m2972a3 = m2972a(resources, "title", "id", packageName);
        m2961a().setTextViewText(m2972a3, ((AbstractNotification$BuilderC6150ff) this).f21522a);
        Map<String, String> map = ((AbstractNotification$BuilderC6150ff) this).f21525a;
        if (map != null && this.f21509a == 16777216) {
            mo2965a(map.get("notification_image_text_color"));
        }
        RemoteViews m2961a2 = m2961a();
        int i = this.f21509a;
        m2961a2.setTextColor(m2972a3, (i == 16777216 || !m2955a(i)) ? -1 : -16777216);
        setCustomContentView(m2961a());
        Bundle bundle = new Bundle();
        bundle.putBoolean("miui.customHeight", true);
        addExtras(bundle);
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    protected boolean mo2958a() {
        if (C6306l.m1853a()) {
            Resources resources = m2973a().getResources();
            String packageName = m2973a().getPackageName();
            return (m2972a(m2973a().getResources(), "bg", "id", m2973a().getPackageName()) == 0 || m2972a(resources, "icon", "id", packageName) == 0 || m2972a(resources, "title", "id", packageName) == 0 || C6306l.m1852a(m2973a()) < 9) ? false : true;
        }
        return false;
    }

    /* renamed from: b */
    public Notification$BuilderC6147fc m2974b(Bitmap bitmap) {
        if (m2945b() && bitmap != null) {
            this.f21511c = bitmap;
        }
        return this;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: b */
    protected String mo2947b() {
        return null;
    }
}
