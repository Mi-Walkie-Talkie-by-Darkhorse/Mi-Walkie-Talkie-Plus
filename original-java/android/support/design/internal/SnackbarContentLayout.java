package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.design.R;
import android.support.design.widget.BaseTransientBottomBar.ContentViewCallback;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

@RestrictTo({Scope.LIBRARY_GROUP})
public class SnackbarContentLayout extends LinearLayout implements ContentViewCallback {
    private TextView a;
    private Button b;
    private int c;
    private int d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
        this.c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_android_maxWidth, -1);
        this.d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
        obtainStyledAttributes.recycle();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        this.a = (TextView) findViewById(R.id.snackbar_text);
        this.b = (Button) findViewById(R.id.snackbar_action);
    }

    public TextView getMessageView() {
        return this.a;
    }

    public Button getActionView() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i, int i2) {
        boolean z;
        super.onMeasure(i, i2);
        if (this.c > 0 && getMeasuredWidth() > this.c) {
            i = MeasureSpec.makeMeasureSpec(this.c, 1073741824);
            super.onMeasure(i, i2);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z2 = this.a.getLayout().getLineCount() > 1;
        if (!z2 || this.d <= 0 || this.b.getMeasuredWidth() <= this.d) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (a(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
            z = false;
        } else {
            if (a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                z = true;
            }
            z = false;
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.a.getPaddingTop() == i2 && this.a.getPaddingBottom() == i3) {
            return z;
        }
        a((View) this.a, i2, i3);
        return true;
    }

    private static void a(View view, int i, int i2) {
        if (ViewCompat.isPaddingRelative(view)) {
            ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    public void animateContentIn(int i, int i2) {
        ViewCompat.setAlpha(this.a, 0.0f);
        ViewCompat.animate(this.a).alpha(1.0f).setDuration((long) i2).setStartDelay((long) i).start();
        if (this.b.getVisibility() == 0) {
            ViewCompat.setAlpha(this.b, 0.0f);
            ViewCompat.animate(this.b).alpha(1.0f).setDuration((long) i2).setStartDelay((long) i).start();
        }
    }

    public void animateContentOut(int i, int i2) {
        ViewCompat.setAlpha(this.a, 1.0f);
        ViewCompat.animate(this.a).alpha(0.0f).setDuration((long) i2).setStartDelay((long) i).start();
        if (this.b.getVisibility() == 0) {
            ViewCompat.setAlpha(this.b, 1.0f);
            ViewCompat.animate(this.b).alpha(0.0f).setDuration((long) i2).setStartDelay((long) i).start();
        }
    }
}
