package com.ifengyu.library.util;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.Closeable;
import java.io.IOException;

/* compiled from: IOUtils */
public class b {
    private static final String a = b.class.getSimpleName();

    public static boolean a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        return true;
    }
}
