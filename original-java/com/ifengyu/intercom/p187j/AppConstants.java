package com.ifengyu.intercom.p187j;

import android.graphics.Typeface;
import com.ifengyu.intercom.R;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.j.a */
/* loaded from: classes2.dex */
public class AppConstants {

    /* renamed from: a */
    public static final Typeface f13907a = Typeface.createFromAsset(UIUtils.m8613e().getAssets(), "fonts/MI Lan Pro_Regular.TTF");

    /* renamed from: b */
    public static final Typeface f13908b;

    /* renamed from: c */
    public static final Typeface f13909c;

    /* renamed from: d */
    public static final Typeface f13910d;

    /* renamed from: e */
    public static final Typeface f13911e;

    /* renamed from: f */
    public static final String[] f13912f;

    static {
        Typeface.createFromAsset(UIUtils.m8613e().getAssets(), "fonts/MI Lan Pro_Medium.TTF");
        f13908b = Typeface.createFromAsset(UIUtils.m8613e().getAssets(), "fonts/Klight_Light.ttf");
        Typeface createFromAsset = Typeface.createFromAsset(UIUtils.m8613e().getAssets(), "fonts/Kmedium.ttf");
        f13909c = createFromAsset;
        f13910d = Typeface.create(createFromAsset, 0);
        f13911e = Typeface.create(createFromAsset, 1);
        f13912f = UIUtils.m8601q(R.array.dolphin_all_css_tone);
    }
}
