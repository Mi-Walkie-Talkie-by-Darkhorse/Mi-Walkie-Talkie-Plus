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
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.aj;
import java.util.Map;

/* loaded from: classes2.dex */
public class fe extends ff {

    /* renamed from: a  reason: collision with other field name */
    private PendingIntent f334a;

    /* renamed from: b  reason: collision with other field name */
    private Bitmap f335b;

    /* renamed from: c  reason: collision with other field name */
    private CharSequence f336c;

    /* renamed from: a  reason: collision with root package name */
    private int f8935a = 16777216;

    /* renamed from: b  reason: collision with root package name */
    private int f8936b = 16777216;

    /* renamed from: c  reason: collision with root package name */
    private int f8937c = 16777216;

    public fe(Context context, int i, String str) {
        super(context, i, str);
    }

    private Drawable a(int i, int i2, int i3, float f) {
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setShape(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i);
        shapeDrawable.getPaint().setStyle(Paint.Style.FILL);
        shapeDrawable.setIntrinsicWidth(i2);
        shapeDrawable.setIntrinsicHeight(i3);
        return shapeDrawable;
    }

    private void a(RemoteViews remoteViews, int i, int i2, int i3, boolean z) {
        int a2 = a(6.0f);
        remoteViews.setViewPadding(i, a2, 0, a2, 0);
        int i4 = z ? -1 : -16777216;
        remoteViews.setTextColor(i2, i4);
        remoteViews.setTextColor(i3, i4);
    }

    @Override // com.xiaomi.push.ff
    /* renamed from: a */
    public fe mo261a(Bitmap bitmap) {
        if (m272b() && bitmap != null) {
            if (bitmap.getWidth() != 984 || bitmap.getHeight() < 177 || bitmap.getHeight() > 207) {
                b.m1a("colorful notification bg image resolution error, must [984*177, 984*207]");
            } else {
                this.f335b = bitmap;
            }
        }
        return this;
    }

    public fe a(CharSequence charSequence, PendingIntent pendingIntent) {
        if (m272b()) {
            super.addAction(0, charSequence, pendingIntent);
            this.f336c = charSequence;
            this.f334a = pendingIntent;
        }
        return this;
    }

    @Override // com.xiaomi.push.fd
    public fe a(String str) {
        if (m272b() && !TextUtils.isEmpty(str)) {
            try {
                this.f8936b = Color.parseColor(str);
            } catch (Exception unused) {
                b.m1a("parse colorful notification button bg color error");
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a */
    public String mo269a() {
        return "notification_colorful";
    }

    @Override // com.xiaomi.push.fd
    /* renamed from: a  reason: collision with other method in class */
    public void mo269a() {
        Bitmap bitmap;
        RemoteViews remoteViews;
        boolean z;
        RemoteViews a2;
        Drawable drawable;
        RemoteViews remoteViews2;
        if (m272b()) {
            super.mo269a();
            Resources resources = mo269a().getResources();
            String packageName = mo269a().getPackageName();
            int a3 = a(resources, "icon", "id", packageName);
            if (((ff) this).f337a == null) {
                a(a3);
            } else {
                mo269a().setImageViewBitmap(a3, ((ff) this).f337a);
            }
            int a4 = a(resources, "title", "id", packageName);
            int a5 = a(resources, "content", "id", packageName);
            mo269a().setTextViewText(a4, ((ff) this).f339a);
            mo269a().setTextViewText(a5, ((ff) this).f344b);
            if (!TextUtils.isEmpty(this.f336c)) {
                int a6 = a(resources, "buttonContainer", "id", packageName);
                int a7 = a(resources, "button", "id", packageName);
                int a8 = a(resources, "buttonBg", "id", packageName);
                mo269a().setViewVisibility(a6, 0);
                mo269a().setTextViewText(a7, this.f336c);
                mo269a().setOnClickPendingIntent(a6, this.f334a);
                if (this.f8936b != 16777216) {
                    int a9 = a(70.0f);
                    int a10 = a(29.0f);
                    mo269a().setImageViewBitmap(a8, aj.a(a(this.f8936b, a9, a10, a10 / 2.0f)));
                    mo269a().setTextColor(a7, m270a(this.f8936b) ? -1 : -16777216);
                }
            }
            int a11 = a(resources, "bg", "id", packageName);
            int a12 = a(resources, "container", "id", packageName);
            if (this.f8935a != 16777216) {
                if (l.a(mo269a()) >= 10) {
                    remoteViews2 = mo269a();
                    drawable = a(this.f8935a, 984, 192, 30.0f);
                } else {
                    remoteViews2 = mo269a();
                    drawable = a(this.f8935a, 984, 192, 0.0f);
                }
                remoteViews2.setImageViewBitmap(a11, aj.a(drawable));
                a2 = mo269a();
                z = m270a(this.f8935a);
            } else if (this.f335b != null) {
                if (l.a(mo269a()) >= 10) {
                    remoteViews = mo269a();
                    bitmap = a(this.f335b, 30.0f);
                } else {
                    remoteViews = mo269a();
                    bitmap = this.f335b;
                }
                remoteViews.setImageViewBitmap(a11, bitmap);
                Map<String, String> map = ((ff) this).f342a;
                if (map != null && this.f8937c == 16777216) {
                    c(map.get("notification_image_text_color"));
                }
                int i = this.f8937c;
                z = i == 16777216 || !m270a(i);
                a2 = mo269a();
            } else {
                if (Build.VERSION.SDK_INT >= 24) {
                    mo269a().setViewVisibility(a3, 8);
                    mo269a().setViewVisibility(a11, 8);
                    try {
                        bj.a((Object) this, "setStyle", u.a(mo269a(), "android.app.Notification$DecoratedCustomViewStyle").getConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        b.m1a("load class DecoratedCustomViewStyle failed");
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putBoolean("miui.customHeight", true);
                addExtras(bundle);
                setCustomContentView(mo269a());
                return;
            }
            a(a2, a12, a4, a5, z);
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("miui.customHeight", true);
            addExtras(bundle2);
            setCustomContentView(mo269a());
            return;
        }
        m271b();
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
        return (a(resources, "icon", "id", packageName) == 0 || a(resources, "title", "id", packageName) == 0 || a(resources, "content", "id", packageName) == 0) ? false : true;
    }

    public fe b(String str) {
        if (m272b() && !TextUtils.isEmpty(str)) {
            try {
                this.f8935a = Color.parseColor(str);
            } catch (Exception unused) {
                b.m1a("parse colorful notification bg color error");
            }
        }
        return this;
    }

    @Override // com.xiaomi.push.ff
    protected String b() {
        return "notification_colorful_copy";
    }

    public fe c(String str) {
        if (m272b() && !TextUtils.isEmpty(str)) {
            try {
                this.f8937c = Color.parseColor(str);
            } catch (Exception unused) {
                b.m1a("parse colorful notification image text color error");
            }
        }
        return this;
    }
}
