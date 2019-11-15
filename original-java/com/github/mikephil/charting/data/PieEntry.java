package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import android.util.Log;

@SuppressLint({"ParcelCreator"})
public class PieEntry extends Entry {
    private String a;

    public String a() {
        return this.a;
    }

    @Deprecated
    public float h() {
        Log.i("DEPRECATED", "Pie entries do not have x values");
        return super.h();
    }
}
