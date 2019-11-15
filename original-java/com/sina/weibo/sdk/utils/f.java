package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.TextUtils;
import android.util.StateSet;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
import org.apache.http.util.EncodingUtils;

/* compiled from: ResourceManager */
public class f {
    private static final String a = f.class.getName();
    private static final String[] b = {"drawable-xxhdpi", "drawable-xhdpi", "drawable-hdpi", "drawable-mdpi", "drawable-ldpi", "drawable"};

    public static String a(Context context, String str, String str2, String str3) {
        Locale a2 = a();
        if (Locale.SIMPLIFIED_CHINESE.equals(a2)) {
            return str2;
        }
        if (Locale.TRADITIONAL_CHINESE.equals(a2)) {
            return str3;
        }
        return str;
    }

    public static Drawable a(Context context, String str) {
        return a(context, d(context, str), false);
    }

    public static Drawable b(Context context, String str) {
        return a(context, d(context, str), true);
    }

    public static Locale a() {
        Locale locale = Locale.getDefault();
        return (Locale.SIMPLIFIED_CHINESE.equals(locale) || Locale.TRADITIONAL_CHINESE.equals(locale)) ? locale : Locale.ENGLISH;
    }

    private static String d(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            c.c(a, "id is NOT correct!");
            return null;
        }
        String a2 = a(context);
        c.a(a, "find Appropriate path...");
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            if (i >= b.length) {
                i = -1;
                break;
            }
            if (b[i].equals(a2)) {
                i2 = i;
            }
            String sb = new StringBuilder(String.valueOf(b[i])).append("/").append(str).toString();
            if (e(context, sb)) {
                if (i2 != i) {
                    if (i2 >= 0) {
                        break;
                    }
                    i3 = i;
                } else {
                    return sb;
                }
            }
            i++;
        }
        if (i3 <= 0 || i <= 0) {
            if (i3 <= 0 || i >= 0) {
                if (i3 >= 0 || i <= 0) {
                    c.c(a, "Not find the appropriate path for drawable");
                    i3 = -1;
                } else {
                    i3 = i;
                }
            }
        } else if (Math.abs(i2 - i) <= Math.abs(i2 - i3)) {
            i3 = i;
        }
        if (i3 >= 0) {
            return new StringBuilder(String.valueOf(b[i3])).append("/").append(str).toString();
        }
        c.c(a, "Not find the appropriate path for drawable");
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:0x0067 A[SYNTHETIC, Splitter:B:26:0x0067] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static android.graphics.drawable.Drawable a(android.content.Context r11, java.lang.String r12, boolean r13) {
        /*
            r6 = 0
            android.content.res.AssetManager r0 = r11.getAssets()
            java.io.InputStream r7 = r0.open(r12)     // Catch:{ IOException -> 0x007a, all -> 0x0063 }
            if (r7 == 0) goto L_0x007f
            android.graphics.Bitmap r2 = android.graphics.BitmapFactory.decodeStream(r7)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.content.res.Resources r0 = r11.getResources()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.util.DisplayMetrics r0 = r0.getDisplayMetrics()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            if (r13 == 0) goto L_0x0043
            android.content.res.Resources r1 = r11.getResources()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.content.res.Configuration r3 = r1.getConfiguration()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.content.res.Resources r1 = new android.content.res.Resources     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.content.res.AssetManager r4 = r11.getAssets()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            r1.<init>(r4, r0, r3)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.graphics.drawable.NinePatchDrawable r0 = new android.graphics.drawable.NinePatchDrawable     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            byte[] r3 = r2.getNinePatchChunk()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.graphics.Rect r4 = new android.graphics.Rect     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            r5 = 0
            r8 = 0
            r9 = 0
            r10 = 0
            r4.<init>(r5, r8, r9, r10)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            r5 = 0
            r0.<init>(r1, r2, r3, r4, r5)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
        L_0x003d:
            if (r7 == 0) goto L_0x0042
            r7.close()     // Catch:{ IOException -> 0x0070 }
        L_0x0042:
            return r0
        L_0x0043:
            int r0 = r0.densityDpi     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            r2.setDensity(r0)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.graphics.drawable.BitmapDrawable r0 = new android.graphics.drawable.BitmapDrawable     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            android.content.res.Resources r1 = r11.getResources()     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            r0.<init>(r1, r2)     // Catch:{ IOException -> 0x0052, all -> 0x0075 }
            goto L_0x003d
        L_0x0052:
            r0 = move-exception
            r1 = r7
        L_0x0054:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x0077 }
            if (r1 == 0) goto L_0x007d
            r1.close()     // Catch:{ IOException -> 0x005e }
        L_0x005c:
            r0 = r6
            goto L_0x0042
        L_0x005e:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x005c
        L_0x0063:
            r0 = move-exception
            r7 = r6
        L_0x0065:
            if (r7 == 0) goto L_0x006a
            r7.close()     // Catch:{ IOException -> 0x006b }
        L_0x006a:
            throw r0
        L_0x006b:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x006a
        L_0x0070:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0042
        L_0x0075:
            r0 = move-exception
            goto L_0x0065
        L_0x0077:
            r0 = move-exception
            r7 = r1
            goto L_0x0065
        L_0x007a:
            r0 = move-exception
            r1 = r6
            goto L_0x0054
        L_0x007d:
            r0 = r6
            goto L_0x0042
        L_0x007f:
            r0 = r6
            goto L_0x003d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sina.weibo.sdk.utils.f.a(android.content.Context, java.lang.String, boolean):android.graphics.drawable.Drawable");
    }

    private static boolean e(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        InputStream inputStream = null;
        try {
            inputStream = context.getAssets().open(str);
            c.a(a, "file [" + str + "] existed");
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
            return true;
        } catch (IOException e2) {
            c.a(a, "file [" + str + "] NOT existed");
            if (inputStream == null) {
                return false;
            }
            try {
                inputStream.close();
                return false;
            } catch (IOException e3) {
                ThrowableExtension.printStackTrace(e3);
                return false;
            }
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    ThrowableExtension.printStackTrace(e4);
                }
            }
        }
    }

    private static String a(Context context) {
        int i = context.getResources().getDisplayMetrics().densityDpi;
        if (i <= 120) {
            return "drawable-ldpi";
        }
        if (i > 120 && i <= 160) {
            return "drawable-mdpi";
        }
        if (i > 160 && i <= 240) {
            return "drawable-hdpi";
        }
        if (i <= 240 || i > 320) {
            return "drawable-xxhdpi";
        }
        return "drawable-xhdpi";
    }

    public static int a(Context context, int i) {
        return (int) (((double) (context.getResources().getDisplayMetrics().density * ((float) i))) + 0.5d);
    }

    public static ColorStateList a(int i, int i2) {
        return new ColorStateList(new int[][]{new int[]{16842919}, new int[]{16842913}, new int[]{16842908}, StateSet.WILD_CARD}, new int[]{i2, i2, i2, i});
    }

    public static StateListDrawable a(Context context, String str, String str2) {
        Drawable a2;
        Drawable a3;
        if (str.indexOf(".9") > -1) {
            a2 = b(context, str);
        } else {
            a2 = a(context, str);
        }
        if (str2.indexOf(".9") > -1) {
            a3 = b(context, str2);
        } else {
            a3 = a(context, str2);
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, a3);
        stateListDrawable.addState(new int[]{16842913}, a3);
        stateListDrawable.addState(new int[]{16842908}, a3);
        stateListDrawable.addState(StateSet.WILD_CARD, a2);
        return stateListDrawable;
    }

    public static StateListDrawable b(Context context, String str, String str2, String str3) {
        Drawable a2;
        Drawable a3;
        Drawable a4;
        if (str.indexOf(".9") > -1) {
            a2 = b(context, str);
        } else {
            a2 = a(context, str);
        }
        if (str3.indexOf(".9") > -1) {
            a3 = b(context, str3);
        } else {
            a3 = a(context, str3);
        }
        if (str2.indexOf(".9") > -1) {
            a4 = b(context, str2);
        } else {
            a4 = a(context, str2);
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{16842919}, a4);
        stateListDrawable.addState(new int[]{16842913}, a4);
        stateListDrawable.addState(new int[]{16842908}, a4);
        stateListDrawable.addState(new int[]{16842766}, a3);
        stateListDrawable.addState(StateSet.WILD_CARD, a2);
        return stateListDrawable;
    }

    public static String c(Context context, String str) {
        String str2 = "";
        try {
            InputStream open = context.getAssets().open(str);
            if (open == null) {
                return str2;
            }
            DataInputStream dataInputStream = new DataInputStream(open);
            byte[] bArr = new byte[dataInputStream.available()];
            dataInputStream.read(bArr);
            String string = EncodingUtils.getString(bArr, "UTF-8");
            open.close();
            return string;
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
            return str2;
        }
    }
}
