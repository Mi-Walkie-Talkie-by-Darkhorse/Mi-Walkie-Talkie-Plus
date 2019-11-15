package com.github.mikephil.charting.data;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import com.github.mikephil.charting.c.b;
import com.github.mikephil.charting.c.e;
import com.github.mikephil.charting.e.b.f;
import java.util.ArrayList;
import java.util.List;

public class LineDataSet extends k<Entry> implements f {
    private DashPathEffect A = null;
    private e B = new b();
    private boolean C = true;
    private boolean D = true;
    private Mode u = Mode.LINEAR;
    private List<Integer> v = null;
    private int w = -1;
    private float x = 8.0f;
    private float y = 4.0f;
    private float z = 0.2f;

    public enum Mode {
        LINEAR,
        STEPPED,
        CUBIC_BEZIER,
        HORIZONTAL_BEZIER
    }

    public LineDataSet(List<Entry> list, String str) {
        super(list, str);
        if (this.v == null) {
            this.v = new ArrayList();
        }
        this.v.clear();
        this.v.add(Integer.valueOf(Color.rgb(140, 234, 255)));
    }

    public Mode y() {
        return this.u;
    }

    public void a(Mode mode) {
        this.u = mode;
    }

    public void b(float f) {
        float f2 = 1.0f;
        float f3 = 0.05f;
        if (f <= 1.0f) {
            f2 = f;
        }
        if (f2 >= 0.05f) {
            f3 = f2;
        }
        this.z = f3;
    }

    public float z() {
        return this.z;
    }

    public float A() {
        return this.x;
    }

    public float B() {
        return this.y;
    }

    public boolean C() {
        return this.A != null;
    }

    public DashPathEffect D() {
        return this.A;
    }

    public void b(boolean z2) {
        this.C = z2;
    }

    public boolean E() {
        return this.C;
    }

    @Deprecated
    public boolean F() {
        return this.u == Mode.STEPPED;
    }

    public int e(int i) {
        return ((Integer) this.v.get(i)).intValue();
    }

    public int G() {
        return this.v.size();
    }

    public int H() {
        return this.w;
    }

    public boolean I() {
        return this.D;
    }

    public e J() {
        return this.B;
    }
}
