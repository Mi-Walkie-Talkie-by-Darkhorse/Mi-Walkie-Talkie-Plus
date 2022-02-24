package com.xiaomi.push;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.au;
import com.xiaomi.push.service.av;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class ff extends fd {

    /* renamed from: a  reason: collision with root package name */
    private int f8938a;

    /* renamed from: a  reason: collision with other field name */
    protected Bitmap f337a;

    /* renamed from: a  reason: collision with other field name */
    private RemoteViews f338a;

    /* renamed from: a  reason: collision with other field name */
    protected CharSequence f339a;

    /* renamed from: a  reason: collision with other field name */
    private String f340a;

    /* renamed from: a  reason: collision with other field name */
    private ArrayList<Notification.Action> f341a;

    /* renamed from: a  reason: collision with other field name */
    protected Map<String, String> f342a;

    /* renamed from: a  reason: collision with other field name */
    private boolean f343a;

    /* renamed from: b  reason: collision with root package name */
    private int f8939b;

    /* renamed from: b  reason: collision with other field name */
    protected CharSequence f344b;

    /* renamed from: b  reason: collision with other field name */
    private boolean f345b;

    public ff(Context context, int i, String str) {
        super(context);
        this.f341a = new ArrayList<>();
        this.f8939b = 0;
        this.f340a = str;
        this.f8938a = i;
        m265c();
    }

    public ff(Context context, String str) {
        this(context, 0, str);
    }

    private Bitmap a() {
        return aj.a(g.m300a(mo269a(), this.f340a));
    }

    private String c() {
        boolean e = e();
        this.f345b = e;
        return e ? b() : mo269a();
    }

    /* renamed from: c  reason: collision with other method in class */
    private void m265c() {
        int a2 = a(mo269a().getResources(), c(), "layout", mo269a().getPackageName());
        if (a2 != 0) {
            this.f338a = new RemoteViews(mo269a().getPackageName(), a2);
            this.f343a = mo269a();
            return;
        }
        b.m1a("create RemoteViews failed, no such layout resource was found");
    }

    /* renamed from: c  reason: collision with other method in class */
    private boolean m266c() {
        Map<String, String> map = this.f342a;
        return map != null && Boolean.parseBoolean(map.get("custom_builder_set_title"));
    }

    private void d() {
        super.setContentTitle(this.f339a);
        super.setContentText(this.f344b);
    }

    /* renamed from: d  reason: collision with other method in class */
    private boolean m267d() {
        return !TextUtils.isEmpty(b()) && !TextUtils.isEmpty(this.f340a);
    }

    private boolean e() {
        return m267d() && f();
    }

    private boolean f() {
        List<StatusBarNotification> b2;
        if (Build.VERSION.SDK_INT >= 20 && (b2 = au.a(mo269a(), this.f340a).m605b()) != null && !b2.isEmpty()) {
            for (StatusBarNotification statusBarNotification : b2) {
                if (statusBarNotification.getId() == this.f8938a) {
                    Notification notification = statusBarNotification.getNotification();
                    if (notification == null) {
                        return false;
                    }
                    return !notification.extras.getBoolean("mipush.customCopyLayout", true);
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int a(float f) {
        return (int) ((f * mo269a().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Bitmap a(Bitmap bitmap, float f) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawRoundRect(new RectF(rect), f, f, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return createBitmap;
    }

    @Override // com.xiaomi.push.fd
    /* renamed from: a */
    public final RemoteViews mo269a() {
        return this.f338a;
    }

    @Override // com.xiaomi.push.fd
    public fd a(Map<String, String> map) {
        this.f342a = map;
        return this;
    }

    /* renamed from: a */
    public ff addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        addAction(new Notification.Action(i, charSequence, pendingIntent));
        return this;
    }

    /* renamed from: a */
    public ff addAction(Notification.Action action) {
        if (action != null) {
            this.f341a.add(action);
        }
        int i = this.f8939b;
        this.f8939b = i + 1;
        a(i, action);
        return this;
    }

    /* renamed from: a */
    public ff setLargeIcon(Bitmap bitmap) {
        this.f337a = bitmap;
        return this;
    }

    /* renamed from: a */
    public ff setContentTitle(CharSequence charSequence) {
        this.f339a = charSequence;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a  reason: collision with other method in class */
    public abstract String mo269a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a */
    public void mo269a() {
        super.a();
        Bundle bundle = new Bundle();
        if (m267d()) {
            bundle.putBoolean("mipush.customCopyLayout", this.f345b);
        } else {
            bundle.putBoolean("mipush.customCopyLayout", false);
        }
        bundle.putBoolean("miui.customHeight", false);
        bundle.putBoolean("mipush.customNotification", true);
        bundle.putInt("mipush.customLargeIconId", a("large_icon"));
        if (this.f341a.size() > 0) {
            Notification.Action[] actionArr = new Notification.Action[this.f341a.size()];
            this.f341a.toArray(actionArr);
            bundle.putParcelableArray("mipush.customActions", actionArr);
        }
        if (m266c() || !av.m607a(mo269a().getContentResolver())) {
            d();
        } else {
            bundle.putCharSequence("mipush.customTitle", this.f339a);
            bundle.putCharSequence("mipush.customContent", this.f344b);
        }
        addExtras(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        Bitmap a2 = a();
        if (a2 != null) {
            mo269a().setImageViewBitmap(i, a2);
            return;
        }
        int b2 = g.b(mo269a(), this.f340a);
        if (b2 != 0) {
            mo269a().setImageViewResource(i, b2);
        }
    }

    protected void a(int i, Notification.Action action) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.fd
    /* renamed from: a  reason: collision with other method in class */
    public abstract boolean mo269a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a  reason: collision with other method in class */
    public final boolean m270a(int i) {
        return ((((double) Color.red(i)) * 0.299d) + (((double) Color.green(i)) * 0.587d)) + (((double) Color.blue(i)) * 0.114d) < 192.0d;
    }

    /* renamed from: b */
    public ff setContentText(CharSequence charSequence) {
        this.f344b = charSequence;
        return this;
    }

    protected abstract String b();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b  reason: collision with other method in class */
    public final void m271b() {
        super.setContentTitle(this.f339a);
        super.setContentText(this.f344b);
        Bitmap bitmap = this.f337a;
        if (bitmap != null) {
            super.setLargeIcon(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b  reason: collision with other method in class */
    public final boolean m272b() {
        return this.f343a;
    }
}
