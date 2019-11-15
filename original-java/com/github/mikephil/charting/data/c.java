package com.github.mikephil.charting.data;

import android.graphics.Color;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.b.b;
import java.util.List;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: BarLineScatterCandleBubbleDataSet */
public abstract class c<T extends Entry> extends DataSet<T> implements b<T> {
    protected int a = Color.rgb(255, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 115);

    public c(List<T> list, String str) {
        super(list, str);
    }

    public int a() {
        return this.a;
    }
}
