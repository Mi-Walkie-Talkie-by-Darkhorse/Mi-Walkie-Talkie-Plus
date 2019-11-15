package com.xiaomi.channel.commonutils.android;

import android.content.Context;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.xiaomi.channel.commonutils.file.a;
import com.xiaomi.channel.commonutils.string.d;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class c {
    public static boolean a(Context context, String str, String str2) {
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3;
        byte[] b;
        File file;
        InputStream inputStream4;
        FileOutputStream fileOutputStream = null;
        try {
            inputStream = context.getAssets().open(str);
            try {
                b = a.b(inputStream);
                file = new File(str2);
                if (file.exists()) {
                    inputStream2 = new FileInputStream(file);
                    try {
                        String a = d.a(a.b(inputStream2));
                        String a2 = d.a(b);
                        if (TextUtils.isEmpty(a) || !a.equals(a2)) {
                            inputStream4 = inputStream2;
                        } else {
                            a.a(inputStream);
                            a.a(inputStream2);
                            a.a((OutputStream) null);
                            return false;
                        }
                    } catch (Exception e) {
                        e = e;
                        inputStream3 = inputStream;
                        try {
                            ThrowableExtension.printStackTrace(e);
                            a.a(inputStream3);
                            a.a(inputStream2);
                            a.a((OutputStream) fileOutputStream);
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStream3;
                            a.a(inputStream);
                            a.a(inputStream2);
                            a.a((OutputStream) fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        a.a(inputStream);
                        a.a(inputStream2);
                        a.a((OutputStream) fileOutputStream);
                        throw th;
                    }
                } else {
                    inputStream4 = null;
                }
            } catch (Exception e2) {
                e = e2;
                inputStream2 = null;
                inputStream3 = inputStream;
                ThrowableExtension.printStackTrace(e);
                a.a(inputStream3);
                a.a(inputStream2);
                a.a((OutputStream) fileOutputStream);
                return false;
            } catch (Throwable th3) {
                th = th3;
                inputStream2 = null;
                a.a(inputStream);
                a.a(inputStream2);
                a.a((OutputStream) fileOutputStream);
                throw th;
            }
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(b);
                    fileOutputStream2.flush();
                    a.a(inputStream);
                    a.a(inputStream4);
                    a.a((OutputStream) fileOutputStream2);
                    return true;
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = fileOutputStream2;
                    inputStream2 = inputStream4;
                    inputStream3 = inputStream;
                    ThrowableExtension.printStackTrace(e);
                    a.a(inputStream3);
                    a.a(inputStream2);
                    a.a((OutputStream) fileOutputStream);
                    return false;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = fileOutputStream2;
                    inputStream2 = inputStream4;
                    a.a(inputStream);
                    a.a(inputStream2);
                    a.a((OutputStream) fileOutputStream);
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                inputStream2 = inputStream4;
                inputStream3 = inputStream;
                ThrowableExtension.printStackTrace(e);
                a.a(inputStream3);
                a.a(inputStream2);
                a.a((OutputStream) fileOutputStream);
                return false;
            } catch (Throwable th5) {
                th = th5;
                inputStream2 = inputStream4;
                a.a(inputStream);
                a.a(inputStream2);
                a.a((OutputStream) fileOutputStream);
                throw th;
            }
        } catch (Exception e5) {
            e = e5;
            inputStream2 = null;
            inputStream3 = null;
        } catch (Throwable th6) {
            th = th6;
            inputStream2 = null;
            inputStream = null;
            a.a(inputStream);
            a.a(inputStream2);
            a.a((OutputStream) fileOutputStream);
            throw th;
        }
    }
}
