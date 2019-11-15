package com.ifengyu.intercom.ui.imui.ui.drop;

import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.text.TextPaint;
import android.view.View;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;

/* compiled from: DropManager */
public class a {
    static final int a = l.b(12.0f);
    static final int b = l.a(10.0f);
    private static a c;
    private boolean d;
    private int e;
    private DropCover f;
    private Object g;
    private TextPaint h;
    private float i;
    private Paint j;
    private C0034a k;
    private boolean l;
    private int[] m = {R.drawable.explosion_one, R.drawable.explosion_two, R.drawable.explosion_three, R.drawable.explosion_four, R.drawable.explosion_five};

    /* renamed from: com.ifengyu.intercom.ui.imui.ui.drop.a$a reason: collision with other inner class name */
    /* compiled from: DropManager */
    public interface C0034a {
        void a();

        void b();
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            if (c == null) {
                c = new a();
            }
            aVar = c;
        }
        return aVar;
    }

    public void a(DropCover dropCover, com.ifengyu.intercom.ui.imui.ui.drop.DropCover.a aVar) {
        this.d = true;
        this.e = 0;
        this.f = dropCover;
        this.f.a(aVar);
        this.k = null;
        this.l = true;
        c.b("DropManager", "init DropManager, statusBarHeight=" + this.e);
    }

    public void b() {
        h();
        i();
    }

    public boolean c() {
        return this.l;
    }

    public boolean d() {
        if (!this.l) {
            return true;
        }
        return this.d;
    }

    public void a(boolean z) {
        this.d = z;
        if (this.k == null) {
            return;
        }
        if (!z) {
            this.k.a();
        } else {
            this.k.b();
        }
    }

    public int e() {
        return this.e;
    }

    public void a(View view, String str) {
        if (this.f != null) {
            this.f.a(view, str);
        }
    }

    public void a(float f2, float f3) {
        if (this.f != null) {
            this.f.a(f2, f3);
        }
    }

    public void f() {
        if (this.f != null) {
            this.f.a();
        }
    }

    public void a(Object obj) {
        this.g = obj;
    }

    public Object g() {
        return this.g;
    }

    public Paint h() {
        if (this.j == null) {
            this.j = new Paint();
            this.j.setColor(l.b((int) R.color.colorAccent));
            this.j.setAntiAlias(true);
        }
        return this.j;
    }

    public TextPaint i() {
        if (this.h == null) {
            this.h = new TextPaint();
            this.h.setAntiAlias(true);
            this.h.setColor(l.b((int) R.color.black80));
            this.h.setTextAlign(Align.CENTER);
            this.h.setTextSize((float) a);
            FontMetrics fontMetrics = this.h.getFontMetrics();
            this.i = (-fontMetrics.ascent) - ((fontMetrics.descent + (-fontMetrics.ascent)) / 2.0f);
        }
        return this.h;
    }

    public float j() {
        i();
        return this.i;
    }

    public int[] k() {
        return this.m;
    }

    public void a(C0034a aVar) {
        this.k = aVar;
    }
}
