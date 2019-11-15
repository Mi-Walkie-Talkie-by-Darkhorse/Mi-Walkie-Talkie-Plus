package com.tencent.open.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;

/* compiled from: ProGuard */
public class a extends RelativeLayout {
    private static final String a = a.class.getName();
    private Rect b = null;
    private boolean c = false;
    private C0056a d = null;

    /* renamed from: com.tencent.open.c.a$a reason: collision with other inner class name */
    /* compiled from: ProGuard */
    public interface C0056a {
        void a();

        void a(int i);
    }

    public a(Context context) {
        super(context);
        if (this.b == null) {
            this.b = new Rect();
        }
    }

    public void a(C0056a aVar) {
        this.d = aVar;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        int size = MeasureSpec.getSize(i2);
        Activity activity = (Activity) getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
        int height = (activity.getWindowManager().getDefaultDisplay().getHeight() - this.b.top) - size;
        if (!(this.d == null || size == 0)) {
            if (height > 100) {
                this.d.a((Math.abs(this.b.height()) - getPaddingBottom()) - getPaddingTop());
            } else {
                this.d.a();
            }
        }
        super.onMeasure(i, i2);
    }
}
