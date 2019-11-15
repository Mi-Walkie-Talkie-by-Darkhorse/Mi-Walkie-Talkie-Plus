package me.zhanghai.android.materialprogressbar;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

public interface TintableDrawable {
    void setTint(@ColorInt int i);

    void setTintList(@Nullable ColorStateList colorStateList);

    void setTintMode(@NonNull Mode mode);
}
