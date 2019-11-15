package com.github.mikephil.charting.c;

import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.g.j;
import java.text.DecimalFormat;

/* compiled from: DefaultValueFormatter */
public class c implements f {
    protected DecimalFormat a;
    protected int b;

    public c(int i) {
        a(i);
    }

    public void a(int i) {
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

    public String a(float f, Entry entry, int i, j jVar) {
        return this.a.format((double) f);
    }
}
