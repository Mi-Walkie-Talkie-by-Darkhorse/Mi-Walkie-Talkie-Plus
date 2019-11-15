package com.github.mikephil.charting.c;

import java.text.DecimalFormat;

/* compiled from: DefaultAxisValueFormatter */
public class a implements d {
    protected DecimalFormat a;
    protected int b = 0;

    public a(int i) {
        this.b = i;
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 == 0) {
                stringBuffer.append(".");
            }
            stringBuffer.append("0");
        }
        this.a = new DecimalFormat("###,###,###,##0" + stringBuffer.toString());
    }

    public String a(float f, com.github.mikephil.charting.components.a aVar) {
        return this.a.format((double) f);
    }

    public int a() {
        return this.b;
    }
}
