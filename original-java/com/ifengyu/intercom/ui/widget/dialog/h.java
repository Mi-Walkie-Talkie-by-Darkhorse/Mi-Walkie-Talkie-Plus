package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.d;
import com.ifengyu.intercom.ui.widget.dialog.DialogPlus;
import java.util.Arrays;

/* compiled from: DialogPlusBuilder.java */
/* loaded from: classes2.dex */
public class h {
    private BaseAdapter e;
    private Context f;
    private View g;
    private View h;
    private m i;
    private DialogPlus.k k;
    private DialogPlus.i l;
    private DialogPlus.j m;
    private DialogPlus.h n;
    private DialogPlus.g o;
    private boolean v;
    private int w;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f6946a = new int[4];

    /* renamed from: b  reason: collision with root package name */
    private final int[] f6947b = new int[4];

    /* renamed from: c  reason: collision with root package name */
    private final int[] f6948c = new int[4];
    private final FrameLayout.LayoutParams d = new FrameLayout.LayoutParams(-1, -2, 80);
    private int j = 80;
    private boolean p = true;
    private int q = -1;
    private int r = -1;
    private int s = -1;
    private int t = -1;
    private int u = -1;
    private int x = R.color.dialog_black_overlay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context) {
        if (context != null) {
            this.f = context;
            Arrays.fill(this.f6946a, -1);
            return;
        }
        throw new NullPointerException("Context may not be null");
    }

    private int a(int i, int i2, int i3) {
        if (i == 17 || i == 80) {
            return i2 == -1 ? i3 : i2;
        }
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    public h a(boolean z) {
        this.p = z;
        return this;
    }

    public h b(int i) {
        this.s = i;
        return this;
    }

    public h c(int i) {
        this.r = i;
        return this;
    }

    public int[] d() {
        int dimensionPixelSize = this.f.getResources().getDimensionPixelSize(this.j == 17 ? R.dimen.dialog_center_margin : R.dimen.dialog_bottom_margin);
        int i = 0;
        while (true) {
            int[] iArr = this.f6946a;
            if (i >= iArr.length) {
                return iArr;
            }
            iArr[i] = a(this.j, iArr[i], dimensionPixelSize);
            i++;
        }
    }

    public int[] e() {
        return this.f6947b;
    }

    public FrameLayout.LayoutParams f() {
        if (this.v) {
            this.d.height = h();
        }
        return this.d;
    }

    public Context g() {
        return this.f;
    }

    public int h() {
        int height = ((Activity) this.f).getWindowManager().getDefaultDisplay().getHeight() - d.a();
        if (this.w == 0) {
            this.w = (height * 2) / 5;
        }
        return this.w;
    }

    public View i() {
        return b0.a(this.f, this.s, this.g);
    }

    public View j() {
        return b0.a(this.f, this.r, this.h);
    }

    public m k() {
        if (this.i == null) {
            this.i = new r();
        }
        return this.i;
    }

    public Animation l() {
        int i = this.t;
        if (i == -1) {
            i = b0.a(this.j, true);
        }
        return AnimationUtils.loadAnimation(this.f, i);
    }

    public DialogPlus.g m() {
        return this.o;
    }

    public DialogPlus.h n() {
        return this.n;
    }

    public DialogPlus.i o() {
        return this.l;
    }

    public DialogPlus.j p() {
        return this.m;
    }

    public DialogPlus.k q() {
        return this.k;
    }

    public Animation r() {
        int i = this.u;
        if (i == -1) {
            i = b0.a(this.j, false);
        }
        return AnimationUtils.loadAnimation(this.f, i);
    }

    public FrameLayout.LayoutParams s() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        int[] iArr = this.f6948c;
        layoutParams.setMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
        return layoutParams;
    }

    public int t() {
        return this.x;
    }

    public boolean u() {
        return this.p;
    }

    public boolean v() {
        return this.v;
    }

    public h a(m mVar) {
        this.i = mVar;
        return this;
    }

    public BaseAdapter b() {
        return this.e;
    }

    public int c() {
        return this.q;
    }

    public h a(DialogPlus.i iVar) {
        this.l = iVar;
        return this;
    }

    public h a(int i) {
        this.d.height = i;
        return this;
    }

    public DialogPlus a() {
        if (c() != -1) {
            k().a(c());
        }
        return new DialogPlus(this);
    }
}
