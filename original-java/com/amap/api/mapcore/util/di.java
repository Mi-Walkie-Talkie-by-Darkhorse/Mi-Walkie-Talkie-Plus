package com.amap.api.mapcore.util;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

/* compiled from: AndroidAssets */
public class di {
    static di b;
    Context a;

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        InputStream b2 = b.b(str);
        if (b2 == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(b2, "utf-8"));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine).append(10);
            }
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return sb.toString();
    }

    public static void a(Context context) {
        b = new di(context);
    }

    private di(Context context) {
        this.a = context;
    }

    public InputStream b(String str) {
        try {
            return this.a.getAssets().open(str);
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
