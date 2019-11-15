package com.github.mikephil.charting.e.b;

import android.graphics.DashPathEffect;
import android.graphics.Typeface;
import com.github.mikephil.charting.c.f;
import com.github.mikephil.charting.components.Legend.LegendForm;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.data.DataSet.Rounding;
import com.github.mikephil.charting.data.Entry;
import java.util.List;

/* compiled from: IDataSet */
public interface e<T extends Entry> {
    int a(int i);

    T a(float f, float f2, Rounding rounding);

    List<T> a(float f);

    void a(float f, float f2);

    void a(f fVar);

    T b(float f, float f2);

    List<Integer> b();

    int c();

    int c(int i);

    int d(T t);

    T d(int i);

    String e();

    boolean f();

    f g();

    boolean h();

    Typeface i();

    float j();

    LegendForm k();

    float l();

    float m();

    DashPathEffect n();

    boolean o();

    boolean p();

    AxisDependency q();

    int s();

    float u();

    float v();

    float w();

    float x();
}
