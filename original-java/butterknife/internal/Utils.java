package butterknife.internal;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.annotation.AttrRes;
import android.support.annotation.ColorRes;
import android.support.annotation.DimenRes;
import android.support.annotation.DrawableRes;
import android.support.annotation.IdRes;
import android.support.annotation.UiThread;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.TypedValue;
import android.view.View;
import java.lang.reflect.Array;
import java.util.List;

public final class Utils {
    private static final boolean HAS_SUPPORT_V4 = hasSupportV4();
    private static final TypedValue VALUE = new TypedValue();

    static class SupportV4 {
        private static final TypedValue OUT_VALUE = new TypedValue();

        SupportV4() {
        }

        static Drawable getTintedDrawable(Resources resources, Theme theme, @DrawableRes int i, @AttrRes int i2) {
            if (!theme.resolveAttribute(i2, OUT_VALUE, true)) {
                throw new NotFoundException("Required tint color attribute with name " + resources.getResourceEntryName(i2) + " and attribute ID " + i2 + " was not found.");
            }
            Drawable wrap = DrawableCompat.wrap(Utils.getDrawable(resources, theme, i).mutate());
            DrawableCompat.setTint(wrap, Utils.getColor(resources, theme, OUT_VALUE.resourceId));
            return wrap;
        }
    }

    private static boolean hasSupportV4() {
        try {
            Class.forName("android.support.v4.graphics.drawable.DrawableCompat");
            return true;
        } catch (ClassNotFoundException | VerifyError e) {
            return false;
        }
    }

    public static Drawable getTintedDrawable(Resources resources, Theme theme, @DrawableRes int i, @AttrRes int i2) {
        if (HAS_SUPPORT_V4) {
            return SupportV4.getTintedDrawable(resources, theme, i, i2);
        }
        throw new RuntimeException("Android support-v4 library is required for @BindDrawable with tint.");
    }

    public static int getColor(Resources resources, Theme theme, @ColorRes int i) {
        if (VERSION.SDK_INT < 23) {
            return resources.getColor(i);
        }
        return resources.getColor(i, theme);
    }

    @UiThread
    public static float getFloat(Resources resources, @DimenRes int i) {
        TypedValue typedValue = VALUE;
        resources.getValue(i, typedValue, true);
        if (typedValue.type == 4) {
            return typedValue.getFloat();
        }
        throw new NotFoundException("Resource ID #0x" + Integer.toHexString(i) + " type #0x" + Integer.toHexString(typedValue.type) + " is not valid");
    }

    public static ColorStateList getColorStateList(Resources resources, Theme theme, @ColorRes int i) {
        if (VERSION.SDK_INT < 23) {
            return resources.getColorStateList(i);
        }
        return resources.getColorStateList(i, theme);
    }

    public static Drawable getDrawable(Resources resources, Theme theme, @DrawableRes int i) {
        if (VERSION.SDK_INT < 21) {
            return resources.getDrawable(i);
        }
        return resources.getDrawable(i, theme);
    }

    @SafeVarargs
    public static <T> T[] arrayOf(T... tArr) {
        return filterNull(tArr);
    }

    @SafeVarargs
    public static <T> List<T> listOf(T... tArr) {
        return new ImmutableList(filterNull(tArr));
    }

    private static <T> T[] filterNull(T[] tArr) {
        int i;
        int length = tArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            T t = tArr[i2];
            if (t != null) {
                i = i3 + 1;
                tArr[i3] = t;
            } else {
                i = i3;
            }
            i2++;
            i3 = i;
        }
        if (i3 == length) {
            return tArr;
        }
        Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i3);
        System.arraycopy(tArr, 0, objArr, 0, i3);
        return objArr;
    }

    public static <T> T findOptionalViewAsType(View view, @IdRes int i, String str, Class<T> cls) {
        return castView(view.findViewById(i), i, str, cls);
    }

    public static View findRequiredView(View view, @IdRes int i, String str) {
        View findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalStateException("Required view '" + getResourceEntryName(view, i) + "' with ID " + i + " for " + str + " was not found. If this view is optional add '@Nullable' (fields) or '@Optional' (methods) annotation.");
    }

    public static <T> T findRequiredViewAsType(View view, @IdRes int i, String str, Class<T> cls) {
        return castView(findRequiredView(view, i, str), i, str, cls);
    }

    public static <T> T castView(View view, @IdRes int i, String str, Class<T> cls) {
        try {
            return cls.cast(view);
        } catch (ClassCastException e) {
            throw new IllegalStateException("View '" + getResourceEntryName(view, i) + "' with ID " + i + " for " + str + " was of the wrong type. See cause for more info.", e);
        }
    }

    public static <T> T castParam(Object obj, String str, int i, String str2, int i2) {
        return obj;
    }

    private static String getResourceEntryName(View view, @IdRes int i) {
        if (view.isInEditMode()) {
            return "<unavailable while editing>";
        }
        return view.getContext().getResources().getResourceEntryName(i);
    }

    private Utils() {
        throw new AssertionError("No instances.");
    }
}
