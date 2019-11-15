package android.support.v4.widget;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.widget.TextView;

@TargetApi(17)
@RequiresApi(17)
class TextViewCompatJbMr1 {
    TextViewCompatJbMr1() {
    }

    public static void setCompoundDrawablesRelative(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Drawable drawable5;
        boolean z = textView.getLayoutDirection() == 1;
        if (z) {
            drawable5 = drawable3;
        } else {
            drawable5 = drawable;
        }
        if (!z) {
            drawable = drawable3;
        }
        textView.setCompoundDrawables(drawable5, drawable2, drawable, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @Nullable Drawable drawable4) {
        Drawable drawable5;
        boolean z = textView.getLayoutDirection() == 1;
        if (z) {
            drawable5 = drawable3;
        } else {
            drawable5 = drawable;
        }
        if (!z) {
            drawable = drawable3;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(drawable5, drawable2, drawable, drawable4);
    }

    public static void setCompoundDrawablesRelativeWithIntrinsicBounds(@NonNull TextView textView, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = textView.getLayoutDirection() == 1;
        if (z) {
            i5 = i3;
        } else {
            i5 = i;
        }
        if (!z) {
            i = i3;
        }
        textView.setCompoundDrawablesWithIntrinsicBounds(i5, i2, i, i4);
    }

    public static Drawable[] getCompoundDrawablesRelative(@NonNull TextView textView) {
        boolean z = true;
        if (textView.getLayoutDirection() != 1) {
            z = false;
        }
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        if (z) {
            Drawable drawable = compoundDrawables[2];
            Drawable drawable2 = compoundDrawables[0];
            compoundDrawables[0] = drawable;
            compoundDrawables[2] = drawable2;
        }
        return compoundDrawables;
    }
}
