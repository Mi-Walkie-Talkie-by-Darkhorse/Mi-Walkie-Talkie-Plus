package com.xiaomi.push;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6350aj;
import java.util.Map;

/* renamed from: com.xiaomi.push.fe */
/* loaded from: classes2.dex */
public class Notification$BuilderC6149fe extends AbstractNotification$BuilderC6150ff {

    /* renamed from: a */
    private int f21513a;

    /* renamed from: a */
    private PendingIntent f21514a;

    /* renamed from: b */
    private int f21515b;

    /* renamed from: b */
    private Bitmap f21516b;

    /* renamed from: c */
    private int f21517c;

    /* renamed from: c */
    private CharSequence f21518c;

    public Notification$BuilderC6149fe(Context context, int i, String str) {
        super(context, i, str);
        this.f21513a = 16777216;
        this.f21515b = 16777216;
        this.f21517c = 16777216;
    }

    /* renamed from: a */
    private Drawable m2968a(int i, int i2, int i3, float f) {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.setIntrinsicWidth(i2);
        shapeDrawable.setIntrinsicHeight(i3);
        return shapeDrawable;
    }

    /* renamed from: a */
    private void m2967a(RemoteViews remoteViews, int i, int i2, int i3, boolean z) {
        int m2957a = m2957a(6.0f);
        remoteViews.setViewPadding(i, m2957a, 0, m2957a, 0);
        int i4 = z ? -1 : -16777216;
        remoteViews.setTextColor(i2, i4);
        remoteViews.setTextColor(i3, i4);
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    public Notification$BuilderC6149fe mo2951a(Bitmap bitmap) {
        if (m2945b() && bitmap != null) {
            if (bitmap.getWidth() != 984 || bitmap.getHeight() < 177 || bitmap.getHeight() > 207) {
                AbstractC5876b.m4147a("colorful notification bg image resolution error, must [984*177, 984*207]");
            } else {
                this.f21516b = bitmap;
            }
        }
        return this;
    }

    /* renamed from: a */
    public Notification$BuilderC6149fe m2966a(CharSequence charSequence, PendingIntent pendingIntent) {
        if (m2945b()) {
            super.addAction(0, charSequence, pendingIntent);
            this.f21518c = charSequence;
            this.f21514a = pendingIntent;
        }
        return this;
    }

    @Override // com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public Notification$BuilderC6149fe mo2965a(String str) {
        if (m2945b() && !TextUtils.isEmpty(str)) {
            try {
                this.f21515b = Color.parseColor(str);
            } catch (Exception unused) {
                AbstractC5876b.m4147a("parse colorful notification button bg color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    protected String mo2960a() {
        return "notification_colorful";
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff, com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public void mo2959a() {
        RemoteViews m2961a;
        Bitmap bitmap;
        boolean z;
        RemoteViews m2961a2;
        RemoteViews m2961a3;
        Drawable m2968a;
        if (!m2945b()) {
            m2946b();
            return;
        }
        super.mo2959a();
        Resources resources = m2973a().getResources();
        String packageName = m2973a().getPackageName();
        int m2972a = m2972a(resources, "icon", "id", packageName);
        if (((AbstractNotification$BuilderC6150ff) this).f21520a == null) {
            m2956a(m2972a);
        } else {
            m2961a().setImageViewBitmap(m2972a, ((AbstractNotification$BuilderC6150ff) this).f21520a);
        }
        int m2972a2 = m2972a(resources, "title", "id", packageName);
        int m2972a3 = m2972a(resources, "content", "id", packageName);
        m2961a().setTextViewText(m2972a2, ((AbstractNotification$BuilderC6150ff) this).f21522a);
        m2961a().setTextViewText(m2972a3, ((AbstractNotification$BuilderC6150ff) this).f21528b);
        if (!TextUtils.isEmpty(this.f21518c)) {
            int m2972a4 = m2972a(resources, "buttonContainer", "id", packageName);
            int m2972a5 = m2972a(resources, "button", "id", packageName);
            int m2972a6 = m2972a(resources, "buttonBg", "id", packageName);
            m2961a().setViewVisibility(m2972a4, 0);
            m2961a().setTextViewText(m2972a5, this.f21518c);
            m2961a().setOnClickPendingIntent(m2972a4, this.f21514a);
            if (this.f21515b != 16777216) {
                int m2957a = m2957a(70.0f);
                int m2957a2 = m2957a(29.0f);
                m2961a().setImageViewBitmap(m2972a6, C6350aj.m1660a(m2968a(this.f21515b, m2957a, m2957a2, m2957a2 / 2.0f)));
                m2961a().setTextColor(m2972a5, m2955a(this.f21515b) ? -1 : -16777216);
            }
        }
        int m2972a7 = m2972a(resources, "bg", "id", packageName);
        int m2972a8 = m2972a(resources, "container", "id", packageName);
        if (this.f21513a != 16777216) {
            if (C6306l.m1852a(m2973a()) >= 10) {
                m2961a3 = m2961a();
                m2968a = m2968a(this.f21513a, 984, 192, 30.0f);
            } else {
                m2961a3 = m2961a();
                m2968a = m2968a(this.f21513a, 984, 192, BitmapDescriptorFactory.HUE_RED);
            }
            m2961a3.setImageViewBitmap(m2972a7, C6350aj.m1660a(m2968a));
            m2961a2 = m2961a();
            z = m2955a(this.f21513a);
        } else if (this.f21516b == null) {
            if (Build.VERSION.SDK_INT >= 24) {
                m2961a().setViewVisibility(m2972a, 8);
                m2961a().setViewVisibility(m2972a7, 8);
                try {
                    C6016bj.m3648a((Object) this, "setStyle", C6469u.m1234a(m2973a(), "android.app.Notification$DecoratedCustomViewStyle").getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                    AbstractC5876b.m4147a("load class DecoratedCustomViewStyle failed");
                }
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("miui.customHeight", true);
            addExtras(bundle);
            setCustomContentView(m2961a());
        } else {
            if (C6306l.m1852a(m2973a()) >= 10) {
                m2961a = m2961a();
                bitmap = m2950a(this.f21516b, 30.0f);
            } else {
                m2961a = m2961a();
                bitmap = this.f21516b;
            }
            m2961a.setImageViewBitmap(m2972a7, bitmap);
            Map<String, String> map = ((AbstractNotification$BuilderC6150ff) this).f21525a;
            if (map != null && this.f21517c == 16777216) {
                m2963c(map.get("notification_image_text_color"));
            }
            int i = this.f21517c;
            z = i == 16777216 || !m2955a(i);
            m2961a2 = m2961a();
        }
        m2967a(m2961a2, m2972a8, m2972a2, m2972a3, z);
        Bundle bundle2 = new Bundle();
        bundle2.putBoolean("miui.customHeight", true);
        addExtras(bundle2);
        setCustomContentView(m2961a());
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: a */
    protected boolean mo2958a() {
        if (C6306l.m1853a()) {
            Resources resources = m2973a().getResources();
            String packageName = m2973a().getPackageName();
            return (m2972a(resources, "icon", "id", packageName) == 0 || m2972a(resources, "title", "id", packageName) == 0 || m2972a(resources, "content", "id", packageName) == 0) ? false : true;
        }
        return false;
    }

    /* renamed from: b */
    public Notification$BuilderC6149fe m2964b(String str) {
        if (m2945b() && !TextUtils.isEmpty(str)) {
            try {
                this.f21513a = Color.parseColor(str);
            } catch (Exception unused) {
                AbstractC5876b.m4147a("parse colorful notification bg color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.AbstractNotification$BuilderC6150ff
    /* renamed from: b */
    protected String mo2947b() {
        return "notification_colorful_copy";
    }

    /* renamed from: c */
    public Notification$BuilderC6149fe m2963c(String str) {
        if (m2945b() && !TextUtils.isEmpty(str)) {
            try {
                this.f21517c = Color.parseColor(str);
            } catch (Exception unused) {
                AbstractC5876b.m4147a("parse colorful notification image text color error");
            }
        }
        return this;
    }
}
