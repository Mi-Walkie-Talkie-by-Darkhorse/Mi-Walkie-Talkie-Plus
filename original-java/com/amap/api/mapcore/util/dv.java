package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;

/* compiled from: NinePatchTool */
public class dv {
    public static Drawable a(Context context, String str) throws Exception {
        Bitmap b = b(context, str);
        if (b.getNinePatchChunk() == null) {
            return new BitmapDrawable(b);
        }
        Rect rect = new Rect();
        a(b.getNinePatchChunk(), rect);
        return new NinePatchDrawable(context.getResources(), b, b.getNinePatchChunk(), rect, null);
    }

    private static Bitmap a(InputStream inputStream) throws Exception {
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream);
        byte[] a = a(decodeStream);
        if (!NinePatch.isNinePatchChunk(a)) {
            return decodeStream;
        }
        Bitmap createBitmap = Bitmap.createBitmap(decodeStream, 1, 1, decodeStream.getWidth() - 2, decodeStream.getHeight() - 2);
        decodeStream.recycle();
        Field declaredField = createBitmap.getClass().getDeclaredField("mNinePatchChunk");
        declaredField.setAccessible(true);
        declaredField.set(createBitmap, a);
        return createBitmap;
    }

    private static Bitmap b(Context context, String str) throws Exception {
        InputStream open = dz.a(context).open(str);
        Bitmap a = a(open);
        open.close();
        return a;
    }

    private static void a(byte[] bArr, Rect rect) {
        rect.left = a(bArr, 12);
        rect.right = a(bArr, 16);
        rect.top = a(bArr, 20);
        rect.bottom = a(bArr, 24);
    }

    private static byte[] a(Bitmap bitmap) throws IOException {
        int i;
        int i2;
        int i3;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i4 = 0; i4 < 32; i4++) {
            byteArrayOutputStream.write(0);
        }
        int[] iArr = new int[(width - 2)];
        bitmap.getPixels(iArr, 0, width, 1, 0, width - 2, 1);
        boolean z = iArr[0] == -16777216;
        boolean z2 = iArr[iArr.length + -1] == -16777216;
        int length = iArr.length;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (i5 != iArr[i7]) {
                i6++;
                a((OutputStream) byteArrayOutputStream, i7);
                i5 = iArr[i7];
            }
        }
        if (z2) {
            i6++;
            a((OutputStream) byteArrayOutputStream, iArr.length);
        }
        int i8 = i6;
        int i9 = i8 + 1;
        if (z) {
            i = i9 - 1;
        } else {
            i = i9;
        }
        if (z2) {
            i2 = i - 1;
        } else {
            i2 = i;
        }
        int[] iArr2 = new int[(height - 2)];
        bitmap.getPixels(iArr2, 0, 1, 0, 1, 1, height - 2);
        boolean z3 = iArr2[0] == -16777216;
        boolean z4 = iArr2[iArr2.length + -1] == -16777216;
        int length2 = iArr2.length;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < length2; i12++) {
            if (i10 != iArr2[i12]) {
                i11++;
                a((OutputStream) byteArrayOutputStream, i12);
                i10 = iArr2[i12];
            }
        }
        if (z4) {
            i11++;
            a((OutputStream) byteArrayOutputStream, iArr2.length);
        }
        int i13 = i11 + 1;
        if (z3) {
            i3 = i13 - 1;
        } else {
            i3 = i13;
        }
        if (z4) {
            i3--;
        }
        for (int i14 = 0; i14 < i2 * i3; i14++) {
            a((OutputStream) byteArrayOutputStream, 1);
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        byteArray[0] = 1;
        byteArray[1] = (byte) i8;
        byteArray[2] = (byte) i11;
        byteArray[3] = (byte) (i3 * i2);
        a(bitmap, byteArray);
        return byteArray;
    }

    private static void a(Bitmap bitmap, byte[] bArr) {
        int i = 0;
        int[] iArr = new int[(bitmap.getWidth() - 2)];
        bitmap.getPixels(iArr, 0, iArr.length, 1, bitmap.getHeight() - 1, iArr.length, 1);
        int i2 = 0;
        while (true) {
            if (i2 >= iArr.length) {
                break;
            } else if (-16777216 == iArr[i2]) {
                a(bArr, 12, i2);
                break;
            } else {
                i2++;
            }
        }
        int length = iArr.length - 1;
        while (true) {
            if (length < 0) {
                break;
            } else if (-16777216 == iArr[length]) {
                a(bArr, 16, (iArr.length - length) - 2);
                break;
            } else {
                length--;
            }
        }
        int[] iArr2 = new int[(bitmap.getHeight() - 2)];
        bitmap.getPixels(iArr2, 0, 1, bitmap.getWidth() - 1, 0, 1, iArr2.length);
        while (true) {
            if (i >= iArr2.length) {
                break;
            } else if (-16777216 == iArr2[i]) {
                a(bArr, 20, i);
                break;
            } else {
                i++;
            }
        }
        for (int length2 = iArr2.length - 1; length2 >= 0; length2--) {
            if (-16777216 == iArr2[length2]) {
                a(bArr, 24, (iArr2.length - length2) - 2);
                return;
            }
        }
    }

    private static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    private static void a(byte[] bArr, int i, int i2) {
        bArr[i + 0] = (byte) (i2 >> 0);
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 >> 16);
        bArr[i + 3] = (byte) (i2 >> 24);
    }

    private static int a(byte[] bArr, int i) {
        return (bArr[i + 0] & 255) | (bArr[i + 1] << 8) | (bArr[i + 2] << Tnaf.POW_2_WIDTH) | (bArr[i + 3] << 24);
    }
}
