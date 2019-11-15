package com.ifengyu.intercom.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapUtil */
public class g {
    public static byte[] a(Bitmap bitmap, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        if (z) {
            bitmap.recycle();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
        return byteArray;
    }
}
