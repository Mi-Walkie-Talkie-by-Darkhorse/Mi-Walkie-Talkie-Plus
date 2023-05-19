package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.Variables;
import com.ifengyu.intercom.p216ui.widget.dialog.DialogPlus;
import java.util.Arrays;
import java.util.Objects;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.f */
/* loaded from: classes2.dex */
public class DialogPlusBuilder {

    /* renamed from: a */
    private final int[] f15892a;

    /* renamed from: e */
    private BaseAdapter f15896e;

    /* renamed from: f */
    private Context f15897f;

    /* renamed from: g */
    private View f15898g;

    /* renamed from: h */
    private View f15899h;

    /* renamed from: i */
    private Holder f15900i;

    /* renamed from: k */
    private DialogPlus.InterfaceC4889k f15902k;

    /* renamed from: l */
    private DialogPlus.InterfaceC4887i f15903l;

    /* renamed from: m */
    private DialogPlus.InterfaceC4888j f15904m;

    /* renamed from: n */
    private DialogPlus.InterfaceC4886h f15905n;

    /* renamed from: o */
    private DialogPlus.InterfaceC4885g f15906o;

    /* renamed from: v */
    private boolean f15913v;

    /* renamed from: w */
    private int f15914w;

    /* renamed from: b */
    private final int[] f15893b = new int[4];

    /* renamed from: c */
    private final int[] f15894c = new int[4];

    /* renamed from: d */
    private final FrameLayout.LayoutParams f15895d = new FrameLayout.LayoutParams(-1, -2, 80);

    /* renamed from: j */
    private int f15901j = 80;

    /* renamed from: p */
    private boolean f15907p = true;

    /* renamed from: q */
    private int f15908q = -1;

    /* renamed from: r */
    private int f15909r = -1;

    /* renamed from: s */
    private int f15910s = -1;

    /* renamed from: t */
    private int f15911t = -1;

    /* renamed from: u */
    private int f15912u = -1;

    /* renamed from: x */
    private int f15915x = R.color.dialog_black_overlay;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogPlusBuilder(Context context) {
        int[] iArr = new int[4];
        this.f15892a = iArr;
        Objects.requireNonNull(context, "Context may not be null");
        this.f15897f = context;
        Arrays.fill(iArr, -1);
    }

    /* renamed from: m */
    private int m8999m(int i, int i2, int i3) {
        if (i == 17 || i == 80) {
            return i2 == -1 ? i3 : i2;
        } else if (i2 == -1) {
            return 0;
        } else {
            return i2;
        }
    }

    /* renamed from: A */
    public DialogPlusBuilder m9014A(int i) {
        this.f15910s = i;
        return this;
    }

    /* renamed from: B */
    public DialogPlusBuilder m9013B(int i) {
        this.f15909r = i;
        return this;
    }

    /* renamed from: C */
    public DialogPlusBuilder m9012C(DialogPlus.InterfaceC4887i interfaceC4887i) {
        this.f15903l = interfaceC4887i;
        return this;
    }

    /* renamed from: a */
    public DialogPlus m9011a() {
        if (m9009c() != -1) {
            m9001k().mo8909c(m9009c());
        }
        return new DialogPlus(this);
    }

    /* renamed from: b */
    public BaseAdapter m9010b() {
        return this.f15896e;
    }

    /* renamed from: c */
    public int m9009c() {
        return this.f15908q;
    }

    /* renamed from: d */
    public int[] m9008d() {
        int dimensionPixelSize = this.f15897f.getResources().getDimensionPixelSize(this.f15901j == 17 ? R.dimen.dialog_center_margin : R.dimen.dialog_bottom_margin);
        int i = 0;
        while (true) {
            int[] iArr = this.f15892a;
            if (i >= iArr.length) {
                return iArr;
            }
            iArr[i] = m8999m(this.f15901j, iArr[i], dimensionPixelSize);
            i++;
        }
    }

    /* renamed from: e */
    public int[] m9007e() {
        return this.f15893b;
    }

    /* renamed from: f */
    public FrameLayout.LayoutParams m9006f() {
        if (this.f15913v) {
            this.f15895d.height = m9004h();
        }
        return this.f15895d;
    }

    /* renamed from: g */
    public Context m9005g() {
        return this.f15897f;
    }

    /* renamed from: h */
    public int m9004h() {
        int height = ((Activity) this.f15897f).getWindowManager().getDefaultDisplay().getHeight() - Variables.m12428a();
        if (this.f15914w == 0) {
            this.f15914w = (height * 2) / 5;
        }
        return this.f15914w;
    }

    /* renamed from: i */
    public View m9003i() {
        return C4934w.m8912c(this.f15897f, this.f15910s, this.f15898g);
    }

    /* renamed from: j */
    public View m9002j() {
        return C4934w.m8912c(this.f15897f, this.f15909r, this.f15899h);
    }

    /* renamed from: k */
    public Holder m9001k() {
        if (this.f15900i == null) {
            this.f15900i = new ListHolder();
        }
        return this.f15900i;
    }

    /* renamed from: l */
    public Animation m9000l() {
        int i = this.f15911t;
        if (i == -1) {
            i = C4934w.m8913b(this.f15901j, true);
        }
        return AnimationUtils.loadAnimation(this.f15897f, i);
    }

    /* renamed from: n */
    public DialogPlus.InterfaceC4885g m8998n() {
        return this.f15906o;
    }

    /* renamed from: o */
    public DialogPlus.InterfaceC4886h m8997o() {
        return this.f15905n;
    }

    /* renamed from: p */
    public DialogPlus.InterfaceC4887i m8996p() {
        return this.f15903l;
    }

    /* renamed from: q */
    public DialogPlus.InterfaceC4888j m8995q() {
        return this.f15904m;
    }

    /* renamed from: r */
    public DialogPlus.InterfaceC4889k m8994r() {
        return this.f15902k;
    }

    /* renamed from: s */
    public Animation m8993s() {
        int i = this.f15912u;
        if (i == -1) {
            i = C4934w.m8913b(this.f15901j, false);
        }
        return AnimationUtils.loadAnimation(this.f15897f, i);
    }

    /* renamed from: t */
    public FrameLayout.LayoutParams m8992t() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        int[] iArr = this.f15894c;
        layoutParams.setMargins(iArr[0], iArr[1], iArr[2], iArr[3]);
        return layoutParams;
    }

    /* renamed from: u */
    public int m8991u() {
        return this.f15915x;
    }

    /* renamed from: v */
    public boolean m8990v() {
        return this.f15907p;
    }

    /* renamed from: w */
    public boolean m8989w() {
        return this.f15913v;
    }

    /* renamed from: x */
    public DialogPlusBuilder m8988x(boolean z) {
        this.f15907p = z;
        return this;
    }

    /* renamed from: y */
    public DialogPlusBuilder m8987y(int i) {
        this.f15895d.height = i;
        return this;
    }

    /* renamed from: z */
    public DialogPlusBuilder m8986z(Holder holder) {
        this.f15900i = holder;
        return this;
    }
}
