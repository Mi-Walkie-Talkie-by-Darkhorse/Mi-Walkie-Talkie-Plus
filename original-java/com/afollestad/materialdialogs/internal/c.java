package com.afollestad.materialdialogs.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.widget.AppCompatEditText;
import android.util.Log;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.TextView;
import com.afollestad.materialdialogs.R;
import com.afollestad.materialdialogs.a.a;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.lang.reflect.Field;

@SuppressLint({"PrivateResource"})
/* compiled from: MDTintHelper */
public class c {
    public static void a(@NonNull RadioButton radioButton, @NonNull ColorStateList colorStateList) {
        if (VERSION.SDK_INT >= 21) {
            radioButton.setButtonTintList(colorStateList);
            return;
        }
        Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(radioButton.getContext(), R.drawable.abc_btn_radio_material));
        DrawableCompat.setTintList(wrap, colorStateList);
        radioButton.setButtonDrawable(wrap);
    }

    public static void a(@NonNull RadioButton radioButton, @ColorInt int i) {
        int a = a.a(radioButton.getContext());
        a(radioButton, new ColorStateList(new int[][]{new int[]{16842910, -16842912}, new int[]{16842910, 16842912}, new int[]{-16842910, -16842912}, new int[]{-16842910, 16842912}}, new int[]{a.a(radioButton.getContext(), R.attr.colorControlNormal), i, a, a}));
    }

    public static void a(@NonNull CheckBox checkBox, @NonNull ColorStateList colorStateList) {
        if (VERSION.SDK_INT >= 21) {
            checkBox.setButtonTintList(colorStateList);
            return;
        }
        Drawable wrap = DrawableCompat.wrap(ContextCompat.getDrawable(checkBox.getContext(), R.drawable.abc_btn_check_material));
        DrawableCompat.setTintList(wrap, colorStateList);
        checkBox.setButtonDrawable(wrap);
    }

    public static void a(@NonNull CheckBox checkBox, @ColorInt int i) {
        int a = a.a(checkBox.getContext());
        a(checkBox, new ColorStateList(new int[][]{new int[]{16842910, -16842912}, new int[]{16842910, 16842912}, new int[]{-16842910, -16842912}, new int[]{-16842910, 16842912}}, new int[]{a.a(checkBox.getContext(), R.attr.colorControlNormal), i, a, a}));
    }

    public static void a(@NonNull ProgressBar progressBar, @ColorInt int i) {
        a(progressBar, i, false);
    }

    private static void a(@NonNull ProgressBar progressBar, @ColorInt int i, boolean z) {
        ColorStateList valueOf = ColorStateList.valueOf(i);
        if (VERSION.SDK_INT >= 21) {
            progressBar.setProgressTintList(valueOf);
            progressBar.setSecondaryProgressTintList(valueOf);
            if (!z) {
                progressBar.setIndeterminateTintList(valueOf);
                return;
            }
            return;
        }
        Mode mode = Mode.SRC_IN;
        if (VERSION.SDK_INT <= 10) {
            mode = Mode.MULTIPLY;
        }
        if (!z && progressBar.getIndeterminateDrawable() != null) {
            progressBar.getIndeterminateDrawable().setColorFilter(i, mode);
        }
        if (progressBar.getProgressDrawable() != null) {
            progressBar.getProgressDrawable().setColorFilter(i, mode);
        }
    }

    private static ColorStateList a(@NonNull Context context, @ColorInt int i) {
        return new ColorStateList(new int[][]{new int[]{-16842910}, new int[]{-16842919, -16842908}, new int[0]}, new int[]{a.a(context, R.attr.colorControlNormal), a.a(context, R.attr.colorControlNormal), i});
    }

    public static void a(@NonNull EditText editText, @ColorInt int i) {
        ColorStateList a = a(editText.getContext(), i);
        if (editText instanceof AppCompatEditText) {
            ((AppCompatEditText) editText).setSupportBackgroundTintList(a);
        } else if (VERSION.SDK_INT >= 21) {
            editText.setBackgroundTintList(a);
        }
        b(editText, i);
    }

    private static void b(@NonNull EditText editText, @ColorInt int i) {
        try {
            Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
            declaredField.setAccessible(true);
            int i2 = declaredField.getInt(editText);
            Field declaredField2 = TextView.class.getDeclaredField("mEditor");
            declaredField2.setAccessible(true);
            Object obj = declaredField2.get(editText);
            Field declaredField3 = obj.getClass().getDeclaredField("mCursorDrawable");
            declaredField3.setAccessible(true);
            Drawable[] drawableArr = {ContextCompat.getDrawable(editText.getContext(), i2), ContextCompat.getDrawable(editText.getContext(), i2)};
            drawableArr[0].setColorFilter(i, Mode.SRC_IN);
            drawableArr[1].setColorFilter(i, Mode.SRC_IN);
            declaredField3.set(obj, drawableArr);
        } catch (NoSuchFieldException e) {
            Log.d("MDTintHelper", "Device issue with cursor tinting: " + e.getMessage());
            ThrowableExtension.printStackTrace(e);
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }
}
