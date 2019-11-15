package com.tencent.connect.share;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.open.a.f;
import com.tencent.open.utils.c;
import com.tencent.open.utils.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class a {
    public static final void a(Context context, final String str, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "scaleCompressImage");
        if (TextUtils.isEmpty(str)) {
            cVar.a(1, (String) null);
        } else if (!i.b()) {
            cVar.a(2, (String) null);
        } else {
            final AnonymousClass1 r0 = new Handler(context.getMainLooper()) {
                public void handleMessage(Message message) {
                    switch (message.what) {
                        case 101:
                            cVar.a(0, (String) message.obj);
                            return;
                        case 102:
                            cVar.a(message.arg1, (String) null);
                            return;
                        default:
                            super.handleMessage(message);
                            return;
                    }
                }
            };
            new Thread(new Runnable() {
                public void run() {
                    String a2;
                    Bitmap a3 = a.a(str, 140);
                    if (a3 != null) {
                        String str = Environment.getExternalStorageDirectory() + "/tmp/";
                        String str2 = "share2qq_temp" + i.f(str) + ".jpg";
                        if (!a.b(str, 140, 140)) {
                            f.b("openSDK_LOG.AsynScaleCompressImage", "not out of bound,not compress!");
                            a2 = str;
                        } else {
                            f.b("openSDK_LOG.AsynScaleCompressImage", "out of bound,compress!");
                            a2 = a.a(a3, str, str2);
                        }
                        f.b("openSDK_LOG.AsynScaleCompressImage", "-->destFilePath: " + a2);
                        if (a2 != null) {
                            Message obtainMessage = r0.obtainMessage(101);
                            obtainMessage.obj = a2;
                            r0.sendMessage(obtainMessage);
                            return;
                        }
                    }
                    Message obtainMessage2 = r0.obtainMessage(102);
                    obtainMessage2.arg1 = 3;
                    r0.sendMessage(obtainMessage2);
                }
            }).start();
        }
    }

    public static final void a(Context context, final ArrayList<String> arrayList, final c cVar) {
        f.b("openSDK_LOG.AsynScaleCompressImage", "batchScaleCompressImage");
        if (arrayList == null) {
            cVar.a(1, (String) null);
            return;
        }
        final AnonymousClass3 r0 = new Handler(context.getMainLooper()) {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 101:
                        cVar.a(0, message.getData().getStringArrayList("images"));
                        return;
                    default:
                        super.handleMessage(message);
                        return;
                }
            }
        };
        new Thread(new Runnable() {
            public void run() {
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 < arrayList.size()) {
                        String str = (String) arrayList.get(i2);
                        if (!i.g(str) && i.h(str)) {
                            Bitmap a2 = a.a(str, 10000);
                            if (a2 != null) {
                                String str2 = Environment.getExternalStorageDirectory() + "/tmp/";
                                String str3 = "share2qzone_temp" + i.f(str) + ".jpg";
                                if (!a.b(str, 640, 10000)) {
                                    f.b("openSDK_LOG.AsynScaleCompressImage", "not out of bound,not compress!");
                                } else {
                                    f.b("openSDK_LOG.AsynScaleCompressImage", "out of bound, compress!");
                                    str = a.a(a2, str2, str3);
                                }
                                if (str != null) {
                                    arrayList.set(i2, str);
                                }
                            }
                        }
                        i = i2 + 1;
                    } else {
                        Message obtainMessage = r0.obtainMessage(101);
                        Bundle bundle = new Bundle();
                        bundle.putStringArrayList("images", arrayList);
                        obtainMessage.setData(bundle);
                        r0.sendMessage(obtainMessage);
                        return;
                    }
                }
            }
        }).start();
    }

    private static Bitmap a(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            width = height;
        }
        float f = ((float) i) / ((float) width);
        matrix.postScale(f, f);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    protected static final String a(Bitmap bitmap, String str, String str2) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String stringBuffer = new StringBuffer(str).append(str2).toString();
        File file2 = new File(stringBuffer);
        if (file2.exists()) {
            file2.delete();
        }
        if (bitmap != null) {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                bitmap.compress(CompressFormat.JPEG, 80, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                bitmap.recycle();
                return stringBuffer;
            } catch (FileNotFoundException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (IOException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    public static final boolean b(String str, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            ThrowableExtension.printStackTrace(e);
        }
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return false;
        }
        int i5 = i3 > i4 ? i3 : i4;
        if (i3 >= i4) {
            i3 = i4;
        }
        f.b("openSDK_LOG.AsynScaleCompressImage", "longSide=" + i5 + "shortSide=" + i3);
        options.inPreferredConfig = Config.RGB_565;
        if (i5 > i2 || i3 > i) {
            return true;
        }
        return false;
    }

    public static final Bitmap a(String str, int i) {
        Bitmap bitmap;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Options options = new Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e) {
            ThrowableExtension.printStackTrace(e);
        }
        int i2 = options.outWidth;
        int i3 = options.outHeight;
        if (options.mCancel || options.outWidth == -1 || options.outHeight == -1) {
            return null;
        }
        if (i2 <= i3) {
            i2 = i3;
        }
        options.inPreferredConfig = Config.RGB_565;
        if (i2 > i) {
            options.inSampleSize = a(options, -1, i * i);
        }
        options.inJustDecodeBounds = false;
        try {
            bitmap = BitmapFactory.decodeFile(str, options);
        } catch (OutOfMemoryError e2) {
            ThrowableExtension.printStackTrace(e2);
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        int i4 = options.outWidth;
        int i5 = options.outHeight;
        if (i4 <= i5) {
            i4 = i5;
        }
        if (i4 > i) {
            return a(bitmap, i);
        }
        return bitmap;
    }

    public static final int a(Options options, int i, int i2) {
        int b = b(options, i, i2);
        if (b > 8) {
            return ((b + 7) / 8) * 8;
        }
        int i3 = 1;
        while (i3 < b) {
            i3 <<= 1;
        }
        return i3;
    }

    private static int b(Options options, int i, int i2) {
        double d = (double) options.outWidth;
        double d2 = (double) options.outHeight;
        int ceil = i2 == -1 ? 1 : (int) Math.ceil(Math.sqrt((d * d2) / ((double) i2)));
        int min = i == -1 ? 128 : (int) Math.min(Math.floor(d / ((double) i)), Math.floor(d2 / ((double) i)));
        if (min < ceil) {
            return ceil;
        }
        if (i2 == -1 && i == -1) {
            return 1;
        }
        if (i != -1) {
            return min;
        }
        return ceil;
    }
}
