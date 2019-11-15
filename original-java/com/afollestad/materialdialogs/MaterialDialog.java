package com.afollestad.materialdialogs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnShowListener;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.annotation.UiThread;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.text.Editable;
import android.text.Html;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager.BadTokenException;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class MaterialDialog extends b implements OnClickListener, b {
    protected final a b;
    protected ImageView c;
    protected TextView d;
    protected TextView e;
    EditText f;
    RecyclerView g;
    View h;
    FrameLayout i;
    ProgressBar j;
    TextView k;
    TextView l;
    TextView m;
    CheckBox n;
    MDButton o;
    MDButton p;
    MDButton q;
    ListType r;
    List<Integer> s;
    private final Handler t = new Handler();

    private static class DialogException extends BadTokenException {
        DialogException(String str) {
            super(str);
        }
    }

    enum ListType {
        REGULAR,
        SINGLE,
        MULTI;

        public static int a(ListType listType) {
            switch (listType) {
                case REGULAR:
                    return R.layout.md_listitem;
                case SINGLE:
                    return R.layout.md_listitem_singlechoice;
                case MULTI:
                    return R.layout.md_listitem_multichoice;
                default:
                    throw new IllegalArgumentException("Not a valid list type");
            }
        }
    }

    public static class a {
        protected h A;
        protected h B;
        protected h C;
        protected h D;
        protected d E;
        protected g F;
        protected f G;
        protected e H;
        protected boolean I = false;
        protected boolean J = false;
        protected Theme K = Theme.LIGHT;
        protected boolean L = true;
        protected boolean M = true;
        protected float N = 1.2f;
        protected int O = -1;
        protected Integer[] P = null;
        protected Integer[] Q = null;
        protected boolean R = true;
        protected Typeface S;
        protected Typeface T;
        protected Drawable U;
        protected boolean V;
        protected int W = -1;
        protected Adapter<?> X;
        protected LayoutManager Y;
        protected OnDismissListener Z;
        protected final Context a;
        protected NumberFormat aA;
        protected boolean aB;
        protected boolean aC = false;
        protected boolean aD = false;
        protected boolean aE = false;
        protected boolean aF = false;
        protected boolean aG = false;
        protected boolean aH = false;
        protected boolean aI = false;
        protected boolean aJ = false;
        @DrawableRes
        protected int aK;
        @DrawableRes
        protected int aL;
        @DrawableRes
        protected int aM;
        @DrawableRes
        protected int aN;
        @DrawableRes
        protected int aO;
        protected OnCancelListener aa;
        protected OnKeyListener ab;
        protected OnShowListener ac;
        protected StackingBehavior ad;
        protected boolean ae;
        protected int af;
        protected int ag;
        protected int ah;
        protected boolean ai;
        protected boolean aj;
        protected int ak = -2;
        protected int al = 0;
        protected CharSequence am;
        protected CharSequence an;
        protected c ao;
        protected boolean ap;
        protected int aq = -1;
        protected boolean ar;
        protected int as = -1;
        protected int at = -1;
        protected int au = 0;
        protected int[] av;
        protected CharSequence aw;
        protected boolean ax;
        protected OnCheckedChangeListener ay;
        protected String az;
        protected CharSequence b;
        protected GravityEnum c = GravityEnum.START;
        protected GravityEnum d = GravityEnum.START;
        protected GravityEnum e = GravityEnum.END;
        protected GravityEnum f = GravityEnum.START;
        protected GravityEnum g = GravityEnum.START;
        protected int h = 0;
        protected int i = -1;
        protected int j = -1;
        protected CharSequence k;
        protected ArrayList<CharSequence> l;
        protected CharSequence m;
        protected CharSequence n;
        protected CharSequence o;
        protected boolean p;
        protected boolean q;
        protected boolean r;
        protected View s;
        protected int t;
        protected ColorStateList u;
        protected ColorStateList v;
        protected ColorStateList w;
        protected ColorStateList x;
        protected ColorStateList y;
        protected b z;

        public a(@NonNull Context context) {
            int i2 = 0;
            this.a = context;
            this.t = com.afollestad.materialdialogs.a.a.a(context, R.attr.colorAccent, com.afollestad.materialdialogs.a.a.c(context, R.color.md_material_blue_600));
            if (VERSION.SDK_INT >= 21) {
                this.t = com.afollestad.materialdialogs.a.a.a(context, 16843829, this.t);
            }
            this.v = com.afollestad.materialdialogs.a.a.h(context, this.t);
            this.w = com.afollestad.materialdialogs.a.a.h(context, this.t);
            this.x = com.afollestad.materialdialogs.a.a.h(context, this.t);
            this.y = com.afollestad.materialdialogs.a.a.h(context, com.afollestad.materialdialogs.a.a.a(context, R.attr.md_link_color, this.t));
            if (VERSION.SDK_INT >= 21) {
                i2 = com.afollestad.materialdialogs.a.a.a(context, 16843820);
            }
            this.h = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_btn_ripple_color, com.afollestad.materialdialogs.a.a.a(context, R.attr.colorControlHighlight, i2));
            this.aA = NumberFormat.getPercentInstance();
            this.az = "%1d/%2d";
            this.K = com.afollestad.materialdialogs.a.a.a(com.afollestad.materialdialogs.a.a.a(context, 16842806)) ? Theme.LIGHT : Theme.DARK;
            d();
            this.c = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_title_gravity, this.c);
            this.d = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_content_gravity, this.d);
            this.e = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_btnstacked_gravity, this.e);
            this.f = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_items_gravity, this.f);
            this.g = com.afollestad.materialdialogs.a.a.a(context, R.attr.md_buttons_gravity, this.g);
            try {
                a(com.afollestad.materialdialogs.a.a.d(context, R.attr.md_medium_font), com.afollestad.materialdialogs.a.a.d(context, R.attr.md_regular_font));
            } catch (Throwable th) {
            }
            if (this.T == null) {
                try {
                    if (VERSION.SDK_INT >= 21) {
                        this.T = Typeface.create("sans-serif-medium", 0);
                    } else {
                        this.T = Typeface.create("sans-serif", 1);
                    }
                } catch (Throwable th2) {
                    this.T = Typeface.DEFAULT_BOLD;
                }
            }
            if (this.S == null) {
                try {
                    this.S = Typeface.create("sans-serif", 0);
                } catch (Throwable th3) {
                    this.S = Typeface.SANS_SERIF;
                    if (this.S == null) {
                        this.S = Typeface.DEFAULT;
                    }
                }
            }
        }

        public final Context a() {
            return this.a;
        }

        private void d() {
            if (com.afollestad.materialdialogs.internal.d.a(false) != null) {
                com.afollestad.materialdialogs.internal.d a2 = com.afollestad.materialdialogs.internal.d.a();
                if (a2.a) {
                    this.K = Theme.DARK;
                }
                if (a2.b != 0) {
                    this.i = a2.b;
                }
                if (a2.c != 0) {
                    this.j = a2.c;
                }
                if (a2.d != null) {
                    this.v = a2.d;
                }
                if (a2.e != null) {
                    this.x = a2.e;
                }
                if (a2.f != null) {
                    this.w = a2.f;
                }
                if (a2.h != 0) {
                    this.ah = a2.h;
                }
                if (a2.i != null) {
                    this.U = a2.i;
                }
                if (a2.j != 0) {
                    this.ag = a2.j;
                }
                if (a2.k != 0) {
                    this.af = a2.k;
                }
                if (a2.n != 0) {
                    this.aL = a2.n;
                }
                if (a2.m != 0) {
                    this.aK = a2.m;
                }
                if (a2.o != 0) {
                    this.aM = a2.o;
                }
                if (a2.p != 0) {
                    this.aN = a2.p;
                }
                if (a2.q != 0) {
                    this.aO = a2.q;
                }
                if (a2.g != 0) {
                    this.t = a2.g;
                }
                if (a2.l != null) {
                    this.y = a2.l;
                }
                this.c = a2.r;
                this.d = a2.s;
                this.e = a2.t;
                this.f = a2.u;
                this.g = a2.v;
            }
        }

        public a a(@NonNull CharSequence charSequence) {
            this.b = charSequence;
            return this;
        }

        public a a(@Nullable String str, @Nullable String str2) {
            if (str != null && !str.trim().isEmpty()) {
                this.T = com.afollestad.materialdialogs.a.c.a(this.a, str);
                if (this.T == null) {
                    throw new IllegalArgumentException("No font asset found for \"" + str + "\"");
                }
            }
            if (str2 != null && !str2.trim().isEmpty()) {
                this.S = com.afollestad.materialdialogs.a.c.a(this.a, str2);
                if (this.S == null) {
                    throw new IllegalArgumentException("No font asset found for \"" + str2 + "\"");
                }
            }
            return this;
        }

        public a a(@StringRes int i2) {
            return a(i2, false);
        }

        public a a(@StringRes int i2, boolean z2) {
            CharSequence text = this.a.getText(i2);
            if (z2) {
                text = Html.fromHtml(text.toString().replace("\n", "<br/>"));
            }
            return b(text);
        }

        public a b(@NonNull CharSequence charSequence) {
            if (this.s != null) {
                throw new IllegalStateException("You cannot set content() when you're using a custom view.");
            }
            this.k = charSequence;
            return this;
        }

        public a b(@ColorInt int i2) {
            this.j = i2;
            this.aD = true;
            return this;
        }

        public a c(@ColorRes int i2) {
            b(com.afollestad.materialdialogs.a.a.c(this.a, i2));
            return this;
        }

        public a d(@StringRes int i2) {
            if (i2 != 0) {
                c(this.a.getText(i2));
            }
            return this;
        }

        public a c(@NonNull CharSequence charSequence) {
            this.m = charSequence;
            return this;
        }

        public a e(@ColorRes int i2) {
            return a(com.afollestad.materialdialogs.a.a.b(this.a, i2));
        }

        public a a(@NonNull ColorStateList colorStateList) {
            this.v = colorStateList;
            this.aF = true;
            return this;
        }

        public a f(@ColorRes int i2) {
            return b(com.afollestad.materialdialogs.a.a.b(this.a, i2));
        }

        public a b(@NonNull ColorStateList colorStateList) {
            this.w = colorStateList;
            this.aH = true;
            return this;
        }

        public a g(@StringRes int i2) {
            return i2 == 0 ? this : d(this.a.getText(i2));
        }

        public a d(@NonNull CharSequence charSequence) {
            this.o = charSequence;
            return this;
        }

        public a a(boolean z2, int i2) {
            if (this.s != null) {
                throw new IllegalStateException("You cannot set progress() when you're using a custom view.");
            }
            if (z2) {
                this.ai = true;
                this.ak = -2;
            } else {
                this.aB = false;
                this.ai = false;
                this.ak = -1;
                this.al = i2;
            }
            return this;
        }

        public a h(@ColorInt int i2) {
            this.t = i2;
            this.aI = true;
            return this;
        }

        public a i(@ColorRes int i2) {
            return h(com.afollestad.materialdialogs.a.a.c(this.a, i2));
        }

        public a a(@NonNull h hVar) {
            this.A = hVar;
            return this;
        }

        public a b(@NonNull h hVar) {
            this.B = hVar;
            return this;
        }

        public a a(boolean z2) {
            this.L = z2;
            this.M = z2;
            return this;
        }

        public a b(boolean z2) {
            this.M = z2;
            return this;
        }

        public a c(boolean z2) {
            this.R = z2;
            return this;
        }

        @UiThread
        public MaterialDialog b() {
            return new MaterialDialog(this);
        }

        @UiThread
        public MaterialDialog c() {
            MaterialDialog b2 = b();
            b2.show();
            return b2;
        }
    }

    @Deprecated
    public static abstract class b {
        @Deprecated
        public void a(MaterialDialog materialDialog) {
        }

        @Deprecated
        public void b(MaterialDialog materialDialog) {
        }

        @Deprecated
        public void c(MaterialDialog materialDialog) {
        }

        @Deprecated
        public void d(MaterialDialog materialDialog) {
        }

        /* access modifiers changed from: protected */
        public final Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public final boolean equals(Object obj) {
            return super.equals(obj);
        }

        /* access modifiers changed from: protected */
        public final void finalize() throws Throwable {
            super.finalize();
        }

        public final int hashCode() {
            return super.hashCode();
        }

        public final String toString() {
            return super.toString();
        }
    }

    public interface c {
        void a(@NonNull MaterialDialog materialDialog, CharSequence charSequence);
    }

    public interface d {
        void a(MaterialDialog materialDialog, View view, int i, CharSequence charSequence);
    }

    public interface e {
        boolean a(MaterialDialog materialDialog, Integer[] numArr, CharSequence[] charSequenceArr);
    }

    public interface f {
        boolean a(MaterialDialog materialDialog, View view, int i, CharSequence charSequence);
    }

    public interface g {
        boolean a(MaterialDialog materialDialog, View view, int i, CharSequence charSequence);
    }

    public interface h {
        void a(@NonNull MaterialDialog materialDialog, @NonNull DialogAction dialogAction);
    }

    public /* bridge */ /* synthetic */ View findViewById(int i2) {
        return super.findViewById(i2);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setContentView(int i2) throws IllegalAccessError {
        super.setContentView(i2);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setContentView(@NonNull View view) throws IllegalAccessError {
        super.setContentView(view);
    }

    @Deprecated
    public /* bridge */ /* synthetic */ void setContentView(@NonNull View view, LayoutParams layoutParams) throws IllegalAccessError {
        super.setContentView(view, layoutParams);
    }

    @SuppressLint({"InflateParams"})
    protected MaterialDialog(a aVar) {
        super(aVar.a, c.a(aVar));
        this.b = aVar;
        this.a = (MDRootLayout) LayoutInflater.from(aVar.a).inflate(c.b(aVar), null);
        c.a(this);
    }

    public final a b() {
        return this.b;
    }

    public final void a(TextView textView, Typeface typeface) {
        if (typeface != null) {
            textView.setPaintFlags(textView.getPaintFlags() | 128);
            textView.setTypeface(typeface);
        }
    }

    /* access modifiers changed from: 0000 */
    public final void c() {
        if (this.g != null) {
            this.g.getViewTreeObserver().addOnGlobalLayoutListener(new OnGlobalLayoutListener() {
                public void onGlobalLayout() {
                    final int intValue;
                    if (VERSION.SDK_INT < 16) {
                        MaterialDialog.this.g.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                        MaterialDialog.this.g.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    if (MaterialDialog.this.r == ListType.SINGLE || MaterialDialog.this.r == ListType.MULTI) {
                        if (MaterialDialog.this.r == ListType.SINGLE) {
                            if (MaterialDialog.this.b.O >= 0) {
                                intValue = MaterialDialog.this.b.O;
                            } else {
                                return;
                            }
                        } else if (MaterialDialog.this.s != null && MaterialDialog.this.s.size() != 0) {
                            Collections.sort(MaterialDialog.this.s);
                            intValue = ((Integer) MaterialDialog.this.s.get(0)).intValue();
                        } else {
                            return;
                        }
                        MaterialDialog.this.g.post(new Runnable() {
                            public void run() {
                                MaterialDialog.this.g.requestFocus();
                                MaterialDialog.this.b.Y.scrollToPosition(intValue);
                            }
                        });
                    }
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public final void d() {
        if (this.g != null) {
            if ((this.b.l != null && this.b.l.size() != 0) || this.b.X != null) {
                if (this.b.Y == null) {
                    this.b.Y = new LinearLayoutManager(getContext());
                }
                this.g.setLayoutManager(this.b.Y);
                this.g.setAdapter(this.b.X);
                if (this.r != null) {
                    ((a) this.b.X).a((b) this);
                }
            }
        }
    }

    public boolean a(MaterialDialog materialDialog, View view, int i2, CharSequence charSequence, boolean z) {
        boolean z2 = false;
        if (!view.isEnabled()) {
            return false;
        }
        if (this.r == null || this.r == ListType.REGULAR) {
            if (this.b.R) {
                dismiss();
            }
            if (!z && this.b.E != null) {
                this.b.E.a(this, view, i2, (CharSequence) this.b.l.get(i2));
            }
            if (z && this.b.F != null) {
                return this.b.F.a(this, view, i2, (CharSequence) this.b.l.get(i2));
            }
        } else if (this.r == ListType.MULTI) {
            CheckBox checkBox = (CheckBox) view.findViewById(R.id.md_control);
            if (!checkBox.isEnabled()) {
                return false;
            }
            if (!this.s.contains(Integer.valueOf(i2))) {
                this.s.add(Integer.valueOf(i2));
                if (!this.b.I) {
                    checkBox.setChecked(true);
                } else if (j()) {
                    checkBox.setChecked(true);
                } else {
                    this.s.remove(Integer.valueOf(i2));
                }
            } else {
                this.s.remove(Integer.valueOf(i2));
                if (!this.b.I) {
                    checkBox.setChecked(false);
                } else if (j()) {
                    checkBox.setChecked(false);
                } else {
                    this.s.add(Integer.valueOf(i2));
                }
            }
        } else if (this.r == ListType.SINGLE) {
            RadioButton radioButton = (RadioButton) view.findViewById(R.id.md_control);
            if (!radioButton.isEnabled()) {
                return false;
            }
            int i3 = this.b.O;
            if (this.b.R && this.b.m == null) {
                dismiss();
                this.b.O = i2;
                b(view);
            } else if (this.b.J) {
                this.b.O = i2;
                z2 = b(view);
                this.b.O = i3;
            } else {
                z2 = true;
            }
            if (z2) {
                this.b.O = i2;
                radioButton.setChecked(true);
                this.b.X.notifyItemChanged(i3);
                this.b.X.notifyItemChanged(i2);
            }
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public final Drawable e() {
        if (this.b.aK != 0) {
            return ResourcesCompat.getDrawable(this.b.a.getResources(), this.b.aK, null);
        }
        Drawable e2 = com.afollestad.materialdialogs.a.a.e(this.b.a, R.attr.md_list_selector);
        return e2 == null ? com.afollestad.materialdialogs.a.a.e(getContext(), R.attr.md_list_selector) : e2;
    }

    /* access modifiers changed from: 0000 */
    public Drawable a(DialogAction dialogAction, boolean z) {
        if (!z) {
            switch (dialogAction) {
                case NEUTRAL:
                    if (this.b.aN != 0) {
                        return ResourcesCompat.getDrawable(this.b.a.getResources(), this.b.aN, null);
                    }
                    Drawable e2 = com.afollestad.materialdialogs.a.a.e(this.b.a, R.attr.md_btn_neutral_selector);
                    if (e2 != null) {
                        return e2;
                    }
                    Drawable e3 = com.afollestad.materialdialogs.a.a.e(getContext(), R.attr.md_btn_neutral_selector);
                    if (VERSION.SDK_INT < 21) {
                        return e3;
                    }
                    com.afollestad.materialdialogs.a.b.a(e3, this.b.h);
                    return e3;
                case NEGATIVE:
                    if (this.b.aO != 0) {
                        return ResourcesCompat.getDrawable(this.b.a.getResources(), this.b.aO, null);
                    }
                    Drawable e4 = com.afollestad.materialdialogs.a.a.e(this.b.a, R.attr.md_btn_negative_selector);
                    if (e4 != null) {
                        return e4;
                    }
                    Drawable e5 = com.afollestad.materialdialogs.a.a.e(getContext(), R.attr.md_btn_negative_selector);
                    if (VERSION.SDK_INT < 21) {
                        return e5;
                    }
                    com.afollestad.materialdialogs.a.b.a(e5, this.b.h);
                    return e5;
                default:
                    if (this.b.aM != 0) {
                        return ResourcesCompat.getDrawable(this.b.a.getResources(), this.b.aM, null);
                    }
                    Drawable e6 = com.afollestad.materialdialogs.a.a.e(this.b.a, R.attr.md_btn_positive_selector);
                    if (e6 != null) {
                        return e6;
                    }
                    Drawable e7 = com.afollestad.materialdialogs.a.a.e(getContext(), R.attr.md_btn_positive_selector);
                    if (VERSION.SDK_INT < 21) {
                        return e7;
                    }
                    com.afollestad.materialdialogs.a.b.a(e7, this.b.h);
                    return e7;
            }
        } else if (this.b.aL != 0) {
            return ResourcesCompat.getDrawable(this.b.a.getResources(), this.b.aL, null);
        } else {
            Drawable e8 = com.afollestad.materialdialogs.a.a.e(this.b.a, R.attr.md_btn_stacked_selector);
            if (e8 == null) {
                return com.afollestad.materialdialogs.a.a.e(getContext(), R.attr.md_btn_stacked_selector);
            }
            return e8;
        }
    }

    private boolean b(View view) {
        if (this.b.G == null) {
            return false;
        }
        CharSequence charSequence = null;
        if (this.b.O >= 0 && this.b.O < this.b.l.size()) {
            charSequence = (CharSequence) this.b.l.get(this.b.O);
        }
        return this.b.G.a(this, view, this.b.O, charSequence);
    }

    private boolean j() {
        if (this.b.H == null) {
            return false;
        }
        Collections.sort(this.s);
        ArrayList arrayList = new ArrayList();
        for (Integer num : this.s) {
            if (num.intValue() >= 0 && num.intValue() <= this.b.l.size() - 1) {
                arrayList.add(this.b.l.get(num.intValue()));
            }
        }
        return this.b.H.a(this, (Integer[]) this.s.toArray(new Integer[this.s.size()]), (CharSequence[]) arrayList.toArray(new CharSequence[arrayList.size()]));
    }

    public final void onClick(View view) {
        DialogAction dialogAction = (DialogAction) view.getTag();
        switch (dialogAction) {
            case NEUTRAL:
                if (this.b.z != null) {
                    this.b.z.a(this);
                    this.b.z.d(this);
                }
                if (this.b.C != null) {
                    this.b.C.a(this, dialogAction);
                }
                if (this.b.R) {
                    dismiss();
                    break;
                }
                break;
            case NEGATIVE:
                if (this.b.z != null) {
                    this.b.z.a(this);
                    this.b.z.c(this);
                }
                if (this.b.B != null) {
                    this.b.B.a(this, dialogAction);
                }
                if (this.b.R) {
                    cancel();
                    break;
                }
                break;
            case POSITIVE:
                if (this.b.z != null) {
                    this.b.z.a(this);
                    this.b.z.b(this);
                }
                if (this.b.A != null) {
                    this.b.A.a(this, dialogAction);
                }
                if (!this.b.J) {
                    b(view);
                }
                if (!this.b.I) {
                    j();
                }
                if (!(this.b.ao == null || this.f == null || this.b.ar)) {
                    this.b.ao.a(this, this.f.getText());
                }
                if (this.b.R) {
                    dismiss();
                    break;
                }
                break;
        }
        if (this.b.D != null) {
            this.b.D.a(this, dialogAction);
        }
    }

    @UiThread
    public void show() {
        try {
            super.show();
        } catch (BadTokenException e2) {
            throw new DialogException("Bad window token, you cannot show a dialog before an Activity is created or after it's hidden.");
        }
    }

    public final MDButton a(@NonNull DialogAction dialogAction) {
        switch (dialogAction) {
            case NEUTRAL:
                return this.p;
            case NEGATIVE:
                return this.q;
            default:
                return this.o;
        }
    }

    public final View f() {
        return this.a;
    }

    @Nullable
    public final EditText g() {
        return this.f;
    }

    @UiThread
    public final void setTitle(CharSequence charSequence) {
        this.d.setText(charSequence);
    }

    @UiThread
    public final void setTitle(@StringRes int i2) {
        setTitle((CharSequence) this.b.a.getString(i2));
    }

    @UiThread
    public final void a(CharSequence charSequence) {
        this.e.setText(charSequence);
        this.e.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    @UiThread
    public final void a(@StringRes int i2) {
        a((CharSequence) this.b.a.getString(i2));
    }

    public final boolean h() {
        return !isShowing();
    }

    public final void onShow(DialogInterface dialogInterface) {
        if (this.f != null) {
            com.afollestad.materialdialogs.a.a.a((DialogInterface) this, this.b);
            if (this.f.getText().length() > 0) {
                this.f.setSelection(this.f.getText().length());
            }
        }
        super.onShow(dialogInterface);
    }

    /* access modifiers changed from: 0000 */
    public void i() {
        if (this.f != null) {
            this.f.addTextChangedListener(new TextWatcher() {
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    boolean z;
                    boolean z2 = true;
                    int length = charSequence.toString().length();
                    if (!MaterialDialog.this.b.ap) {
                        z = length == 0;
                        MDButton a2 = MaterialDialog.this.a(DialogAction.POSITIVE);
                        if (z) {
                            z2 = false;
                        }
                        a2.setEnabled(z2);
                    } else {
                        z = false;
                    }
                    MaterialDialog.this.a(length, z);
                    if (MaterialDialog.this.b.ar) {
                        MaterialDialog.this.b.ao.a(MaterialDialog.this, charSequence);
                    }
                }

                public void afterTextChanged(Editable editable) {
                }
            });
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(int i2, boolean z) {
        boolean z2;
        boolean z3;
        if (this.m != null) {
            if (this.b.at > 0) {
                this.m.setText(String.format(Locale.getDefault(), "%d/%d", new Object[]{Integer.valueOf(i2), Integer.valueOf(this.b.at)}));
                this.m.setVisibility(0);
            } else {
                this.m.setVisibility(8);
            }
            if ((!z || i2 != 0) && ((this.b.at <= 0 || i2 <= this.b.at) && i2 >= this.b.as)) {
                z2 = false;
            } else {
                z2 = true;
            }
            int i3 = z2 ? this.b.au : this.b.j;
            int i4 = z2 ? this.b.au : this.b.t;
            if (this.b.at > 0) {
                this.m.setTextColor(i3);
            }
            com.afollestad.materialdialogs.internal.c.a(this.f, i4);
            MDButton a2 = a(DialogAction.POSITIVE);
            if (!z2) {
                z3 = true;
            } else {
                z3 = false;
            }
            a2.setEnabled(z3);
        }
    }

    public void dismiss() {
        if (this.f != null) {
            com.afollestad.materialdialogs.a.a.b((DialogInterface) this, this.b);
        }
        super.dismiss();
    }
}
