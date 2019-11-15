package com.afollestad.materialdialogs.a;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.util.SimpleArrayMap;

/* compiled from: TypefaceHelper */
public class c {
    private static final SimpleArrayMap<String, Typeface> a = new SimpleArrayMap<>();

    public static Typeface a(Context context, String str) {
        Typeface typeface;
        synchronized (a) {
            if (!a.containsKey(str)) {
                try {
                    typeface = Typeface.createFromAsset(context.getAssets(), String.format("fonts/%s", new Object[]{str}));
                    a.put(str, typeface);
                } catch (RuntimeException e) {
                    typeface = null;
                }
            } else {
                typeface = (Typeface) a.get(str);
            }
        }
        return typeface;
    }
}
