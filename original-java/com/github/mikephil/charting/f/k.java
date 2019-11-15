package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;

/* compiled from: LineRadarRenderer */
public abstract class k extends l {
    public k(a aVar, j jVar) {
        super(aVar, jVar);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, Path path, Drawable drawable) {
        if (b()) {
            int save = canvas.save();
            canvas.clipPath(path);
            drawable.setBounds((int) this.o.f(), (int) this.o.e(), (int) this.o.g(), (int) this.o.h());
            drawable.draw(canvas);
            canvas.restoreToCount(save);
            return;
        }
        throw new RuntimeException("Fill-drawables not (yet) supported below API level 18, this code was run on API level " + i.d() + ".");
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, Path path, int i, int i2) {
        int i3 = (i2 << 24) | (16777215 & i);
        if (b()) {
            int save = canvas.save();
            canvas.clipPath(path);
            canvas.drawColor(i3);
            canvas.restoreToCount(save);
            return;
        }
        Style style = this.h.getStyle();
        int color = this.h.getColor();
        this.h.setStyle(Style.FILL);
        this.h.setColor(i3);
        canvas.drawPath(path, this.h);
        this.h.setColor(color);
        this.h.setStyle(style);
    }

    private boolean b() {
        return i.d() >= 18;
    }
}
