package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.FrameLayout.LayoutParams;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.a;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.b;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.c;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.d;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus.e;
import java.util.Arrays;

/* compiled from: DialogPlusBuilder */
public class g {
    private final int[] a = new int[4];
    private final int[] b = new int[4];
    private final int[] c = new int[4];
    private final LayoutParams d = new LayoutParams(-1, -2, 80);
    private BaseAdapter e;
    private Context f;
    private View g;
    private View h;
    private m i;
    private int j = 80;
    private e k;
    private c l;
    private d m;
    private b n;
    private a o;
    private boolean p = true;
    private int q = -1;
    private int r = -1;
    private int s = -1;
    private int t = -1;
    private int u = -1;
    private boolean v;
    private int w;
    private int x = R.color.dialog_black_overlay;

    private g() {
    }

    g(Context context) {
        if (context == null) {
            throw new NullPointerException("Context may not be null");
        }
        this.f = context;
        Arrays.fill(this.a, -1);
    }

    public g a(int i2) {
        this.s = i2;
        return this;
    }

    public g b(int i2) {
        this.r = i2;
        return this;
    }

    public g a(boolean z) {
        this.p = z;
        return this;
    }

    public g a(m mVar) {
        this.i = mVar;
        return this;
    }

    public g a(c cVar) {
        this.l = cVar;
        return this;
    }

    public g c(int i2) {
        this.d.height = i2;
        return this;
    }

    public DialogPlus a() {
        if (v() != -1) {
            d().a(v());
        }
        return new DialogPlus(this);
    }

    public View b() {
        return ad.a(this.f, this.s, this.g);
    }

    public View c() {
        return ad.a(this.f, this.r, this.h);
    }

    public m d() {
        if (this.i == null) {
            this.i = new r();
        }
        return this.i;
    }

    public Context e() {
        return this.f;
    }

    public BaseAdapter f() {
        return this.e;
    }

    public Animation g() {
        return AnimationUtils.loadAnimation(this.f, this.t == -1 ? ad.a(this.j, true) : this.t);
    }

    public Animation h() {
        return AnimationUtils.loadAnimation(this.f, this.u == -1 ? ad.a(this.j, false) : this.u);
    }

    public LayoutParams i() {
        if (this.v) {
            this.d.height = t();
        }
        return this.d;
    }

    public boolean j() {
        return this.v;
    }

    public LayoutParams k() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.setMargins(this.c[0], this.c[1], this.c[2], this.c[3]);
        return layoutParams;
    }

    public boolean l() {
        return this.p;
    }

    public e m() {
        return this.k;
    }

    public c n() {
        return this.l;
    }

    public d o() {
        return this.m;
    }

    public b p() {
        return this.n;
    }

    public a q() {
        return this.o;
    }

    public int[] r() {
        int i2 = R.dimen.dialog_bottom_margin;
        if (this.j == 17) {
            i2 = R.dimen.dialog_center_margin;
        }
        int dimensionPixelSize = this.f.getResources().getDimensionPixelSize(i2);
        for (int i3 = 0; i3 < this.a.length; i3++) {
            this.a[i3] = a(this.j, this.a[i3], dimensionPixelSize);
        }
        return this.a;
    }

    public int[] s() {
        return this.b;
    }

    public int t() {
        int height = ((Activity) this.f).getWindowManager().getDefaultDisplay().getHeight() - com.ifengyu.intercom.a.a();
        if (this.w == 0) {
            this.w = (height * 2) / 5;
        }
        return this.w;
    }

    public int u() {
        return this.x;
    }

    public int v() {
        return this.q;
    }

    private int a(int i2, int i3, int i4) {
        switch (i2) {
            case 17:
            case 80:
                if (i3 != -1) {
                    return i3;
                }
                return i4;
            default:
                if (i3 == -1) {
                    i3 = 0;
                }
                return i3;
        }
    }
}
