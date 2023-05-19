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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6350aj;
import com.xiaomi.push.service.C6368au;
import com.xiaomi.push.service.C6369av;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* renamed from: com.xiaomi.push.ff */
/* loaded from: classes2.dex */
public abstract class AbstractNotification$BuilderC6150ff extends Notification$BuilderC6148fd {

    /* renamed from: a */
    private int f21519a;

    /* renamed from: a */
    protected Bitmap f21520a;

    /* renamed from: a */
    private RemoteViews f21521a;

    /* renamed from: a */
    protected CharSequence f21522a;

    /* renamed from: a */
    private String f21523a;

    /* renamed from: a */
    private ArrayList<Notification.Action> f21524a;

    /* renamed from: a */
    protected Map<String, String> f21525a;

    /* renamed from: a */
    private boolean f21526a;

    /* renamed from: b */
    private int f21527b;

    /* renamed from: b */
    protected CharSequence f21528b;

    /* renamed from: b */
    private boolean f21529b;

    public AbstractNotification$BuilderC6150ff(Context context, int i, String str) {
        super(context);
        this.f21524a = new ArrayList<>();
        this.f21527b = 0;
        this.f21523a = str;
        this.f21519a = i;
        m2942c();
    }

    public AbstractNotification$BuilderC6150ff(Context context, String str) {
        this(context, 0, str);
    }

    /* renamed from: a */
    private Bitmap m2962a() {
        return C6350aj.m1660a(C6175g.m2812a(m2973a(), this.f21523a));
    }

    /* renamed from: c */
    private String m2943c() {
        boolean m2938e = m2938e();
        this.f21529b = m2938e;
        return m2938e ? mo2947b() : mo2960a();
    }

    /* renamed from: c */
    private void m2942c() {
        int m2972a = m2972a(m2973a().getResources(), m2943c(), "layout", m2973a().getPackageName());
        if (m2972a == 0) {
            AbstractC5876b.m4147a("create RemoteViews failed, no such layout resource was found");
            return;
        }
        this.f21521a = new RemoteViews(m2973a().getPackageName(), m2972a);
        this.f21526a = mo2958a();
    }

    /* renamed from: c */
    private boolean m2941c() {
        Map<String, String> map = this.f21525a;
        return map != null && Boolean.parseBoolean(map.get("custom_builder_set_title"));
    }

    /* renamed from: d */
    private void m2940d() {
        super.setContentTitle(this.f21522a);
        super.setContentText(this.f21528b);
    }

    /* renamed from: d */
    private boolean m2939d() {
        return (TextUtils.isEmpty(mo2947b()) || TextUtils.isEmpty(this.f21523a)) ? false : true;
    }

    /* renamed from: e */
    private boolean m2938e() {
        return m2939d() && m2937f();
    }

    /* renamed from: f */
    private boolean m2937f() {
        List<StatusBarNotification> m1561b;
        if (Build.VERSION.SDK_INT >= 20 && (m1561b = C6368au.m1572a(m2973a(), this.f21523a).m1561b()) != null && !m1561b.isEmpty()) {
            for (StatusBarNotification statusBarNotification : m1561b) {
                if (statusBarNotification.getId() == this.f21519a) {
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
    /* renamed from: a */
    public int m2957a(float f) {
        return (int) ((f * m2973a().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public Bitmap m2950a(Bitmap bitmap, float f) {
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

    /* renamed from: a */
    public final RemoteViews m2961a() {
        return this.f21521a;
    }

    @Override // com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public Notification$BuilderC6148fd mo2948a(Map<String, String> map) {
        this.f21525a = map;
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public AbstractNotification$BuilderC6150ff addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
        addAction(new Notification.Action(i, charSequence, pendingIntent));
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public AbstractNotification$BuilderC6150ff addAction(Notification.Action action) {
        if (action != null) {
            this.f21524a.add(action);
        }
        int i = this.f21527b;
        this.f21527b = i + 1;
        m2954a(i, action);
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public AbstractNotification$BuilderC6150ff setLargeIcon(Bitmap bitmap) {
        this.f21520a = bitmap;
        return this;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: a */
    public AbstractNotification$BuilderC6150ff setContentTitle(CharSequence charSequence) {
        this.f21522a = charSequence;
        return this;
    }

    /* renamed from: a */
    protected abstract String mo2960a();

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.xiaomi.push.Notification$BuilderC6148fd
    /* renamed from: a */
    public void mo2959a() {
        super.mo2959a();
        Bundle bundle = new Bundle();
        if (m2939d()) {
            bundle.putBoolean("mipush.customCopyLayout", this.f21529b);
        } else {
            bundle.putBoolean("mipush.customCopyLayout", false);
        }
        bundle.putBoolean("miui.customHeight", false);
        bundle.putBoolean("mipush.customNotification", true);
        bundle.putInt("mipush.customLargeIconId", m2969a("large_icon"));
        if (this.f21524a.size() > 0) {
            Notification.Action[] actionArr = new Notification.Action[this.f21524a.size()];
            this.f21524a.toArray(actionArr);
            bundle.putParcelableArray("mipush.customActions", actionArr);
        }
        if (m2941c() || !C6369av.m1549a(m2973a().getContentResolver())) {
            m2940d();
        } else {
            bundle.putCharSequence("mipush.customTitle", this.f21522a);
            bundle.putCharSequence("mipush.customContent", this.f21528b);
        }
        addExtras(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m2956a(int i) {
        Bitmap m2962a = m2962a();
        if (m2962a != null) {
            m2961a().setImageViewBitmap(i, m2962a);
            return;
        }
        int m2807b = C6175g.m2807b(m2973a(), this.f21523a);
        if (m2807b != 0) {
            m2961a().setImageViewResource(i, m2807b);
        }
    }

    /* renamed from: a */
    protected void m2954a(int i, Notification.Action action) {
    }

    /* renamed from: a */
    protected abstract boolean mo2958a();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m2955a(int i) {
        return ((((double) Color.red(i)) * 0.299d) + (((double) Color.green(i)) * 0.587d)) + (((double) Color.blue(i)) * 0.114d) < 192.0d;
    }

    @Override // android.app.Notification.Builder
    /* renamed from: b */
    public AbstractNotification$BuilderC6150ff setContentText(CharSequence charSequence) {
        this.f21528b = charSequence;
        return this;
    }

    /* renamed from: b */
    protected abstract String mo2947b();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final void m2946b() {
        super.setContentTitle(this.f21522a);
        super.setContentText(this.f21528b);
        Bitmap bitmap = this.f21520a;
        if (bitmap != null) {
            super.setLargeIcon(bitmap);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m2945b() {
        return this.f21526a;
    }
}
