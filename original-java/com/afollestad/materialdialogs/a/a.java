package com.afollestad.materialdialogs.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.afollestad.materialdialogs.GravityEnum;
import com.afollestad.materialdialogs.MaterialDialog;

/* compiled from: DialogUtils */
public class a {
    @ColorInt
    public static int a(Context context) {
        return a(a(a(context, 16842806)) ? ViewCompat.MEASURED_STATE_MASK : -1, 0.3f);
    }

    @ColorInt
    public static int a(@ColorInt int i, float f) {
        return Color.argb(Math.round(((float) Color.alpha(i)) * f), Color.red(i), Color.green(i), Color.blue(i));
    }

    @ColorInt
    public static int a(Context context, @AttrRes int i) {
        return a(context, i, 0);
    }

    @ColorInt
    public static int a(Context context, @AttrRes int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getColor(0, i2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList a(Context context, @AttrRes int i, ColorStateList colorStateList) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            TypedValue peekValue = obtainStyledAttributes.peekValue(0);
            if (peekValue == null) {
                return colorStateList;
            }
            if (peekValue.type < 28 || peekValue.type > 31) {
                ColorStateList colorStateList2 = obtainStyledAttributes.getColorStateList(0);
                if (colorStateList2 != null) {
                    obtainStyledAttributes.recycle();
                    return colorStateList2;
                }
                obtainStyledAttributes.recycle();
                return colorStateList;
            }
            ColorStateList h = h(context, peekValue.data);
            obtainStyledAttributes.recycle();
            return h;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList b(Context context, @ColorRes int i) {
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(i, typedValue, true);
        if (typedValue.type >= 28 && typedValue.type <= 31) {
            return h(context, typedValue.data);
        }
        if (VERSION.SDK_INT <= 22) {
            return context.getResources().getColorStateList(i);
        }
        return context.getColorStateList(i);
    }

    @ColorInt
    public static int c(Context context, @ColorRes int i) {
        return ContextCompat.getColor(context, i);
    }

    public static String d(Context context, @AttrRes int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return (String) typedValue.string;
    }

    private static int a(GravityEnum gravityEnum) {
        switch (gravityEnum) {
            case CENTER:
                return 1;
            case END:
                return 2;
            default:
                return 0;
        }
    }

    public static GravityEnum a(Context context, @AttrRes int i, GravityEnum gravityEnum) {
        GravityEnum gravityEnum2;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            switch (obtainStyledAttributes.getInt(0, a(gravityEnum))) {
                case 1:
                    gravityEnum2 = GravityEnum.CENTER;
                    obtainStyledAttributes.recycle();
                    break;
                case 2:
                    gravityEnum2 = GravityEnum.END;
                    obtainStyledAttributes.recycle();
                    break;
                default:
                    gravityEnum2 = GravityEnum.START;
                    break;
            }
            return gravityEnum2;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static Drawable e(Context context, @AttrRes int i) {
        return a(context, i, (Drawable) null);
    }

    private static Drawable a(Context context, @AttrRes int i, Drawable drawable) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            Drawable drawable2 = obtainStyledAttributes.getDrawable(0);
            if (drawable2 != null || drawable == null) {
                drawable = drawable2;
            }
            return drawable;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int f(Context context, @AttrRes int i) {
        return b(context, i, -1);
    }

    private static int b(Context context, @AttrRes int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getDimensionPixelSize(0, i2);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static boolean a(Context context, @AttrRes int i, boolean z) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i});
        try {
            return obtainStyledAttributes.getBoolean(0, z);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static boolean g(Context context, @AttrRes int i) {
        return a(context, i, false);
    }

    public static boolean a(@ColorInt int i) {
        return 1.0d - ((((0.299d * ((double) Color.red(i))) + (0.587d * ((double) Color.green(i)))) + (0.114d * ((double) Color.blue(i)))) / 255.0d) >= 0.5d;
    }

    public static void a(View view, Drawable drawable) {
        if (VERSION.SDK_INT < 16) {
            view.setBackgroundDrawable(drawable);
        } else {
            view.setBackground(drawable);
        }
    }

    public static void a(@NonNull DialogInterface dialogInterface, @NonNull final com.afollestad.materialdialogs.MaterialDialog.a aVar) {
        final MaterialDialog materialDialog = (MaterialDialog) dialogInterface;
        if (materialDialog.g() != null) {
            materialDialog.g().post(new Runnable() {
                public void run() {
                    materialDialog.g().requestFocus();
                    InputMethodManager inputMethodManager = (InputMethodManager) aVar.a().getSystemService("input_method");
                    if (inputMethodManager != null) {
                        inputMethodManager.showSoftInput(materialDialog.g(), 1);
                    }
                }
            });
        }
    }

    public static void b(@NonNull DialogInterface dialogInterface, @NonNull com.afollestad.materialdialogs.MaterialDialog.a aVar) {
        MaterialDialog materialDialog = (MaterialDialog) dialogInterface;
        if (materialDialog.g() != null) {
            InputMethodManager inputMethodManager = (InputMethodManager) aVar.a().getSystemService("input_method");
            if (inputMethodManager != null) {
                View currentFocus = materialDialog.getCurrentFocus();
                IBinder windowToken = currentFocus != null ? currentFocus.getWindowToken() : materialDialog.f().getWindowToken();
                if (windowToken != null) {
                    inputMethodManager.hideSoftInputFromWindow(windowToken, 0);
                }
            }
        }
    }

    public static ColorStateList h(Context context, int i) {
        int a = a(context, 16842806);
        if (i == 0) {
            i = a;
        }
        return new ColorStateList(new int[][]{new int[]{-16842910}, new int[0]}, new int[]{a(i, 0.4f), i});
    }

    public static <T> boolean a(@NonNull T t, @Nullable T[] tArr) {
        if (tArr == null || tArr.length == 0) {
            return false;
        }
        for (T equals : tArr) {
            if (equals.equals(t)) {
                return true;
            }
        }
        return false;
    }
}
