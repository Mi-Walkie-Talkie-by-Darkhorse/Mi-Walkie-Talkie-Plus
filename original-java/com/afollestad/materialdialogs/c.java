package com.afollestad.materialdialogs;

import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import android.support.annotation.UiThread;
import android.support.v7.widget.RecyclerView;
import android.text.method.LinkMovementMethod;
import android.text.method.PasswordTransformationMethod;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.afollestad.materialdialogs.MaterialDialog.a;
import com.afollestad.materialdialogs.internal.MDButton;
import com.afollestad.materialdialogs.internal.MDRootLayout;
import com.afollestad.materialdialogs.internal.b;
import java.util.ArrayList;
import java.util.Arrays;
import me.zhanghai.android.materialprogressbar.HorizontalProgressDrawable;
import me.zhanghai.android.materialprogressbar.IndeterminateCircularProgressDrawable;
import me.zhanghai.android.materialprogressbar.IndeterminateHorizontalProgressDrawable;

/* compiled from: DialogInit */
class c {
    @StyleRes
    static int a(@NonNull a aVar) {
        boolean a = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_dark_theme, aVar.K == Theme.DARK);
        aVar.K = a ? Theme.DARK : Theme.LIGHT;
        return a ? R.style.MD_Dark : R.style.MD_Light;
    }

    @LayoutRes
    static int b(a aVar) {
        if (aVar.s != null) {
            return R.layout.md_dialog_custom;
        }
        if (aVar.l == null && aVar.X == null) {
            if (aVar.ak > -2) {
                return R.layout.md_dialog_progress;
            }
            if (aVar.ai) {
                if (aVar.aB) {
                    return R.layout.md_dialog_progress_indeterminate_horizontal;
                }
                return R.layout.md_dialog_progress_indeterminate;
            } else if (aVar.ao != null) {
                if (aVar.aw != null) {
                    return R.layout.md_dialog_input_check;
                }
                return R.layout.md_dialog_input;
            } else if (aVar.aw != null) {
                return R.layout.md_dialog_basic_check;
            } else {
                return R.layout.md_dialog_basic;
            }
        } else if (aVar.aw != null) {
            return R.layout.md_dialog_list_check;
        } else {
            return R.layout.md_dialog_list;
        }
    }

    @UiThread
    public static void a(MaterialDialog materialDialog) {
        int i;
        int i2;
        boolean a;
        View view;
        a aVar = materialDialog.b;
        materialDialog.setCancelable(aVar.L);
        materialDialog.setCanceledOnTouchOutside(aVar.M);
        if (aVar.ag == 0) {
            aVar.ag = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_background_color, com.afollestad.materialdialogs.a.a.a(materialDialog.getContext(), R.attr.colorBackgroundFloating));
        }
        if (aVar.ag != 0) {
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setCornerRadius(aVar.a.getResources().getDimension(R.dimen.md_bg_corner_radius));
            gradientDrawable.setColor(aVar.ag);
            materialDialog.getWindow().setBackgroundDrawable(gradientDrawable);
        }
        if (!aVar.aF) {
            aVar.v = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_positive_color, aVar.v);
        }
        if (!aVar.aG) {
            aVar.x = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_neutral_color, aVar.x);
        }
        if (!aVar.aH) {
            aVar.w = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_negative_color, aVar.w);
        }
        if (!aVar.aI) {
            aVar.t = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_widget_color, aVar.t);
        }
        if (!aVar.aC) {
            aVar.i = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_title_color, com.afollestad.materialdialogs.a.a.a(materialDialog.getContext(), 16842806));
        }
        if (!aVar.aD) {
            aVar.j = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_content_color, com.afollestad.materialdialogs.a.a.a(materialDialog.getContext(), 16842808));
        }
        if (!aVar.aE) {
            aVar.ah = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_item_color, aVar.j);
        }
        materialDialog.d = (TextView) materialDialog.a.findViewById(R.id.md_title);
        materialDialog.c = (ImageView) materialDialog.a.findViewById(R.id.md_icon);
        materialDialog.h = materialDialog.a.findViewById(R.id.md_titleFrame);
        materialDialog.e = (TextView) materialDialog.a.findViewById(R.id.md_content);
        materialDialog.g = (RecyclerView) materialDialog.a.findViewById(R.id.md_contentRecyclerView);
        materialDialog.n = (CheckBox) materialDialog.a.findViewById(R.id.md_promptCheckbox);
        materialDialog.o = (MDButton) materialDialog.a.findViewById(R.id.md_buttonDefaultPositive);
        materialDialog.p = (MDButton) materialDialog.a.findViewById(R.id.md_buttonDefaultNeutral);
        materialDialog.q = (MDButton) materialDialog.a.findViewById(R.id.md_buttonDefaultNegative);
        if (aVar.ao != null && aVar.m == null) {
            aVar.m = aVar.a.getText(17039370);
        }
        materialDialog.o.setVisibility(aVar.m != null ? 0 : 8);
        MDButton mDButton = materialDialog.p;
        if (aVar.n != null) {
            i = 0;
        } else {
            i = 8;
        }
        mDButton.setVisibility(i);
        MDButton mDButton2 = materialDialog.q;
        if (aVar.o != null) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        mDButton2.setVisibility(i2);
        materialDialog.o.setFocusable(true);
        materialDialog.p.setFocusable(true);
        materialDialog.q.setFocusable(true);
        if (aVar.p) {
            materialDialog.o.requestFocus();
        }
        if (aVar.q) {
            materialDialog.p.requestFocus();
        }
        if (aVar.r) {
            materialDialog.q.requestFocus();
        }
        if (aVar.U != null) {
            materialDialog.c.setVisibility(0);
            materialDialog.c.setImageDrawable(aVar.U);
        } else {
            Drawable e = com.afollestad.materialdialogs.a.a.e(aVar.a, R.attr.md_icon);
            if (e != null) {
                materialDialog.c.setVisibility(0);
                materialDialog.c.setImageDrawable(e);
            } else {
                materialDialog.c.setVisibility(8);
            }
        }
        int i3 = aVar.W;
        if (i3 == -1) {
            i3 = com.afollestad.materialdialogs.a.a.f(aVar.a, R.attr.md_icon_max_size);
        }
        if (aVar.V || com.afollestad.materialdialogs.a.a.g(aVar.a, R.attr.md_icon_limit_icon_to_default_size)) {
            i3 = aVar.a.getResources().getDimensionPixelSize(R.dimen.md_icon_max_size);
        }
        if (i3 > -1) {
            materialDialog.c.setAdjustViewBounds(true);
            materialDialog.c.setMaxHeight(i3);
            materialDialog.c.setMaxWidth(i3);
            materialDialog.c.requestLayout();
        }
        if (!aVar.aJ) {
            aVar.af = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.md_divider_color, com.afollestad.materialdialogs.a.a.a(materialDialog.getContext(), R.attr.md_divider));
        }
        materialDialog.a.setDividerColor(aVar.af);
        if (materialDialog.d != null) {
            materialDialog.a(materialDialog.d, aVar.T);
            materialDialog.d.setTextColor(aVar.i);
            materialDialog.d.setGravity(aVar.c.a());
            if (VERSION.SDK_INT >= 17) {
                materialDialog.d.setTextAlignment(aVar.c.b());
            }
            if (aVar.b == null) {
                materialDialog.h.setVisibility(8);
            } else {
                materialDialog.d.setText(aVar.b);
                materialDialog.h.setVisibility(0);
            }
        }
        if (materialDialog.e != null) {
            materialDialog.e.setMovementMethod(new LinkMovementMethod());
            materialDialog.a(materialDialog.e, aVar.S);
            materialDialog.e.setLineSpacing(0.0f, aVar.N);
            if (aVar.y == null) {
                materialDialog.e.setLinkTextColor(com.afollestad.materialdialogs.a.a.a(materialDialog.getContext(), 16842806));
            } else {
                materialDialog.e.setLinkTextColor(aVar.y);
            }
            materialDialog.e.setTextColor(aVar.j);
            materialDialog.e.setGravity(aVar.d.a());
            if (VERSION.SDK_INT >= 17) {
                materialDialog.e.setTextAlignment(aVar.d.b());
            }
            if (aVar.k != null) {
                materialDialog.e.setText(aVar.k);
                materialDialog.e.setVisibility(0);
            } else {
                materialDialog.e.setVisibility(8);
            }
        }
        if (materialDialog.n != null) {
            materialDialog.n.setText(aVar.aw);
            materialDialog.n.setChecked(aVar.ax);
            materialDialog.n.setOnCheckedChangeListener(aVar.ay);
            materialDialog.a((TextView) materialDialog.n, aVar.S);
            materialDialog.n.setTextColor(aVar.j);
            com.afollestad.materialdialogs.internal.c.a(materialDialog.n, aVar.t);
        }
        materialDialog.a.setButtonGravity(aVar.g);
        materialDialog.a.setButtonStackedGravity(aVar.e);
        materialDialog.a.setStackingBehavior(aVar.ad);
        if (VERSION.SDK_INT >= 14) {
            a = com.afollestad.materialdialogs.a.a.a(aVar.a, 16843660, true);
            if (a) {
                a = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.textAllCaps, true);
            }
        } else {
            a = com.afollestad.materialdialogs.a.a.a(aVar.a, R.attr.textAllCaps, true);
        }
        MDButton mDButton3 = materialDialog.o;
        materialDialog.a((TextView) mDButton3, aVar.T);
        mDButton3.setAllCapsCompat(a);
        mDButton3.setText(aVar.m);
        mDButton3.setTextColor(aVar.v);
        materialDialog.o.setStackedSelector(materialDialog.a(DialogAction.POSITIVE, true));
        materialDialog.o.setDefaultSelector(materialDialog.a(DialogAction.POSITIVE, false));
        materialDialog.o.setTag(DialogAction.POSITIVE);
        materialDialog.o.setOnClickListener(materialDialog);
        materialDialog.o.setVisibility(0);
        MDButton mDButton4 = materialDialog.q;
        materialDialog.a((TextView) mDButton4, aVar.T);
        mDButton4.setAllCapsCompat(a);
        mDButton4.setText(aVar.o);
        mDButton4.setTextColor(aVar.w);
        materialDialog.q.setStackedSelector(materialDialog.a(DialogAction.NEGATIVE, true));
        materialDialog.q.setDefaultSelector(materialDialog.a(DialogAction.NEGATIVE, false));
        materialDialog.q.setTag(DialogAction.NEGATIVE);
        materialDialog.q.setOnClickListener(materialDialog);
        materialDialog.q.setVisibility(0);
        MDButton mDButton5 = materialDialog.p;
        materialDialog.a((TextView) mDButton5, aVar.T);
        mDButton5.setAllCapsCompat(a);
        mDButton5.setText(aVar.n);
        mDButton5.setTextColor(aVar.x);
        materialDialog.p.setStackedSelector(materialDialog.a(DialogAction.NEUTRAL, true));
        materialDialog.p.setDefaultSelector(materialDialog.a(DialogAction.NEUTRAL, false));
        materialDialog.p.setTag(DialogAction.NEUTRAL);
        materialDialog.p.setOnClickListener(materialDialog);
        materialDialog.p.setVisibility(0);
        if (aVar.H != null) {
            materialDialog.s = new ArrayList();
        }
        if (materialDialog.g != null) {
            if (aVar.X == null) {
                if (aVar.G != null) {
                    materialDialog.r = ListType.SINGLE;
                } else if (aVar.H != null) {
                    materialDialog.r = ListType.MULTI;
                    if (aVar.P != null) {
                        materialDialog.s = new ArrayList(Arrays.asList(aVar.P));
                        aVar.P = null;
                    }
                } else {
                    materialDialog.r = ListType.REGULAR;
                }
                aVar.X = new a(materialDialog, ListType.a(materialDialog.r));
            } else if (aVar.X instanceof b) {
                ((b) aVar.X).a(materialDialog);
            }
        }
        b(materialDialog);
        c(materialDialog);
        if (aVar.s != null) {
            ((MDRootLayout) materialDialog.a.findViewById(R.id.md_root)).a();
            FrameLayout frameLayout = (FrameLayout) materialDialog.a.findViewById(R.id.md_customViewFrame);
            materialDialog.i = frameLayout;
            View view2 = aVar.s;
            if (view2.getParent() != null) {
                ((ViewGroup) view2.getParent()).removeView(view2);
            }
            if (aVar.ae) {
                Resources resources = materialDialog.getContext().getResources();
                int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.md_dialog_frame_margin);
                ScrollView scrollView = new ScrollView(materialDialog.getContext());
                int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.md_content_padding_top);
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.md_content_padding_bottom);
                scrollView.setClipToPadding(false);
                if (view2 instanceof EditText) {
                    scrollView.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
                } else {
                    scrollView.setPadding(0, dimensionPixelSize2, 0, dimensionPixelSize3);
                    view2.setPadding(dimensionPixelSize, 0, dimensionPixelSize, 0);
                }
                scrollView.addView(view2, new LayoutParams(-1, -2));
                view = scrollView;
            } else {
                view = view2;
            }
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -2));
        }
        if (aVar.ac != null) {
            materialDialog.setOnShowListener(aVar.ac);
        }
        if (aVar.aa != null) {
            materialDialog.setOnCancelListener(aVar.aa);
        }
        if (aVar.Z != null) {
            materialDialog.setOnDismissListener(aVar.Z);
        }
        if (aVar.ab != null) {
            materialDialog.setOnKeyListener(aVar.ab);
        }
        materialDialog.a();
        materialDialog.d();
        materialDialog.a(materialDialog.a);
        materialDialog.c();
        Display defaultDisplay = materialDialog.getWindow().getWindowManager().getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i4 = point.x;
        int i5 = point.y;
        int dimensionPixelSize4 = aVar.a.getResources().getDimensionPixelSize(R.dimen.md_dialog_vertical_margin);
        int dimensionPixelSize5 = aVar.a.getResources().getDimensionPixelSize(R.dimen.md_dialog_horizontal_margin);
        int dimensionPixelSize6 = aVar.a.getResources().getDimensionPixelSize(R.dimen.md_dialog_max_width);
        int i6 = i4 - (dimensionPixelSize5 * 2);
        materialDialog.a.setMaxHeight(i5 - (dimensionPixelSize4 * 2));
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.copyFrom(materialDialog.getWindow().getAttributes());
        layoutParams.width = Math.min(dimensionPixelSize6, i6);
        materialDialog.getWindow().setAttributes(layoutParams);
    }

    private static void a(ProgressBar progressBar) {
        if (VERSION.SDK_INT < 18 && progressBar.isHardwareAccelerated() && progressBar.getLayerType() != 1) {
            progressBar.setLayerType(1, null);
        }
    }

    private static void b(MaterialDialog materialDialog) {
        boolean z;
        a aVar = materialDialog.b;
        if (aVar.ai || aVar.ak > -2) {
            materialDialog.j = (ProgressBar) materialDialog.a.findViewById(16908301);
            if (materialDialog.j != null) {
                if (VERSION.SDK_INT < 14) {
                    com.afollestad.materialdialogs.internal.c.a(materialDialog.j, aVar.t);
                } else if (!aVar.ai) {
                    HorizontalProgressDrawable horizontalProgressDrawable = new HorizontalProgressDrawable(aVar.a());
                    horizontalProgressDrawable.setTint(aVar.t);
                    materialDialog.j.setProgressDrawable(horizontalProgressDrawable);
                    materialDialog.j.setIndeterminateDrawable(horizontalProgressDrawable);
                } else if (aVar.aB) {
                    IndeterminateHorizontalProgressDrawable indeterminateHorizontalProgressDrawable = new IndeterminateHorizontalProgressDrawable(aVar.a());
                    indeterminateHorizontalProgressDrawable.setTint(aVar.t);
                    materialDialog.j.setProgressDrawable(indeterminateHorizontalProgressDrawable);
                    materialDialog.j.setIndeterminateDrawable(indeterminateHorizontalProgressDrawable);
                } else {
                    IndeterminateCircularProgressDrawable indeterminateCircularProgressDrawable = new IndeterminateCircularProgressDrawable(aVar.a());
                    indeterminateCircularProgressDrawable.setTint(aVar.t);
                    materialDialog.j.setProgressDrawable(indeterminateCircularProgressDrawable);
                    materialDialog.j.setIndeterminateDrawable(indeterminateCircularProgressDrawable);
                }
                if (!aVar.ai || aVar.aB) {
                    ProgressBar progressBar = materialDialog.j;
                    if (!aVar.ai || !aVar.aB) {
                        z = false;
                    } else {
                        z = true;
                    }
                    progressBar.setIndeterminate(z);
                    materialDialog.j.setProgress(0);
                    materialDialog.j.setMax(aVar.al);
                    materialDialog.k = (TextView) materialDialog.a.findViewById(R.id.md_label);
                    if (materialDialog.k != null) {
                        materialDialog.k.setTextColor(aVar.j);
                        materialDialog.a(materialDialog.k, aVar.T);
                        materialDialog.k.setText(aVar.aA.format(0));
                    }
                    materialDialog.l = (TextView) materialDialog.a.findViewById(R.id.md_minMax);
                    if (materialDialog.l != null) {
                        materialDialog.l.setTextColor(aVar.j);
                        materialDialog.a(materialDialog.l, aVar.S);
                        if (aVar.aj) {
                            materialDialog.l.setVisibility(0);
                            materialDialog.l.setText(String.format(aVar.az, new Object[]{Integer.valueOf(0), Integer.valueOf(aVar.al)}));
                            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) materialDialog.j.getLayoutParams();
                            marginLayoutParams.leftMargin = 0;
                            marginLayoutParams.rightMargin = 0;
                        } else {
                            materialDialog.l.setVisibility(8);
                        }
                    } else {
                        aVar.aj = false;
                    }
                }
            } else {
                return;
            }
        }
        if (materialDialog.j != null) {
            a(materialDialog.j);
        }
    }

    private static void c(MaterialDialog materialDialog) {
        a aVar = materialDialog.b;
        materialDialog.f = (EditText) materialDialog.a.findViewById(16908297);
        if (materialDialog.f != null) {
            materialDialog.a((TextView) materialDialog.f, aVar.S);
            if (aVar.am != null) {
                materialDialog.f.setText(aVar.am);
            }
            materialDialog.i();
            materialDialog.f.setHint(aVar.an);
            materialDialog.f.setSingleLine();
            materialDialog.f.setTextColor(aVar.j);
            materialDialog.f.setHintTextColor(com.afollestad.materialdialogs.a.a.a(aVar.j, 0.3f));
            com.afollestad.materialdialogs.internal.c.a(materialDialog.f, materialDialog.b.t);
            if (aVar.aq != -1) {
                materialDialog.f.setInputType(aVar.aq);
                if (aVar.aq != 144 && (aVar.aq & 128) == 128) {
                    materialDialog.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
            }
            materialDialog.m = (TextView) materialDialog.a.findViewById(R.id.md_minMax);
            if (aVar.as > 0 || aVar.at > -1) {
                materialDialog.a(materialDialog.f.getText().toString().length(), !aVar.ap);
                return;
            }
            materialDialog.m.setVisibility(8);
            materialDialog.m = null;
        }
    }
}
