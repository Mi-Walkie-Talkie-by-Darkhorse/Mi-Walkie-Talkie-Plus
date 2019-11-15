package com.yalantis.ucrop.c;

import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;

/* compiled from: SelectedStateListDrawable */
public class i extends StateListDrawable {
    private int a;

    public i(Drawable drawable, int i) {
        this.a = i;
        addState(new int[]{16842913}, drawable);
        addState(new int[0], drawable);
    }

    /* access modifiers changed from: protected */
    public boolean onStateChange(int[] iArr) {
        boolean z = false;
        for (int i : iArr) {
            if (i == 16842913) {
                z = true;
            }
        }
        if (z) {
            super.setColorFilter(this.a, Mode.SRC_ATOP);
        } else {
            super.clearColorFilter();
        }
        return super.onStateChange(iArr);
    }

    public boolean isStateful() {
        return true;
    }
}
