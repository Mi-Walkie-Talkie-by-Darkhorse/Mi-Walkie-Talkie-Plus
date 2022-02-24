package com.ifengyu.intercom.i;

import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;

/* compiled from: BitmapUtil.java */
/* loaded from: classes2.dex */
public class l {
    public static byte[] a(Bitmap bitmap, boolean z) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        if (z) {
            bitmap.recycle();
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return byteArray;
    }
}
