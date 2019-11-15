package com.afollestad.materialdialogs.internal;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import com.afollestad.materialdialogs.GravityEnum;

/* compiled from: ThemeSingleton */
public class d {
    private static d w;
    public boolean a = false;
    @ColorInt
    public int b = 0;
    @ColorInt
    public int c = 0;
    public ColorStateList d = null;
    public ColorStateList e = null;
    public ColorStateList f = null;
    @ColorInt
    public int g = 0;
    @ColorInt
    public int h = 0;
    public Drawable i = null;
    @ColorInt
    public int j = 0;
    @ColorInt
    public int k = 0;
    public ColorStateList l = null;
    @DrawableRes
    public int m = 0;
    @DrawableRes
    public int n = 0;
    @DrawableRes
    public int o = 0;
    @DrawableRes
    public int p = 0;
    @DrawableRes
    public int q = 0;
    public GravityEnum r = GravityEnum.START;
    public GravityEnum s = GravityEnum.START;
    public GravityEnum t = GravityEnum.END;
    public GravityEnum u = GravityEnum.START;
    public GravityEnum v = GravityEnum.START;

    public static d a(boolean z) {
        if (w == null && z) {
            w = new d();
        }
        return w;
    }

    public static d a() {
        return a(true);
    }
}
