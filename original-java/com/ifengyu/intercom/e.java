package com.ifengyu.intercom;

import android.content.Context;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.z;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.Thread;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: WorkaroundUncaughtExceptionHandler.java */
/* loaded from: classes.dex */
public class e implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5225a;

    /* renamed from: b  reason: collision with root package name */
    private final Thread.UncaughtExceptionHandler f5226b;

    private e(Context context, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.f5225a = context;
        this.f5226b = uncaughtExceptionHandler;
    }

    public static void a(Context context) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (!(defaultUncaughtExceptionHandler instanceof e)) {
            Thread.setDefaultUncaughtExceptionHandler(new e(context, defaultUncaughtExceptionHandler));
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Throwable th2;
        BufferedInputStream bufferedInputStream;
        InvocationTargetException e;
        Exception e2;
        Method method;
        File file;
        if ("SharedPreferencesImpl-load".equals(thread.getName()) && (th instanceof ArrayIndexOutOfBoundsException)) {
            z.c("WorkaroundUncaughtExceptionHandler", "Deleting corrupt shared preferences files");
            try {
                String[] list = new File(this.f5225a.getApplicationInfo().dataDir, "share_prefs").list();
                if (list.length == 0) {
                    z.b("WorkaroundUncaughtExceptionHandler", "No files in the shared_prefs folder.");
                } else {
                    for (String str : list) {
                        if (str.endsWith(".xml")) {
                            File file2 = null;
                            BufferedInputStream bufferedInputStream2 = null;
                            BufferedInputStream bufferedInputStream3 = null;
                            try {
                                try {
                                    try {
                                        method = thread.getContextClassLoader().loadClass("com.android.internal.util.XmlUtils").getMethod("readMapXml", InputStream.class);
                                        file = new File(str);
                                        try {
                                            bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                                        } catch (InvocationTargetException e3) {
                                            e = e3;
                                            bufferedInputStream = null;
                                        }
                                    } catch (Throwable th3) {
                                        th2 = th3;
                                    }
                                } catch (InvocationTargetException e4) {
                                    e = e4;
                                    bufferedInputStream = null;
                                }
                            } catch (Exception e5) {
                                e2 = e5;
                            }
                            try {
                                try {
                                    method.invoke(this.f5226b, bufferedInputStream);
                                    z.c("WorkaroundUncaughtExceptionHandler", "Keeping good file: " + str);
                                } catch (Throwable th4) {
                                    th2 = th4;
                                    bufferedInputStream2 = bufferedInputStream;
                                    d0.a(bufferedInputStream2);
                                    throw th2;
                                }
                            } catch (InvocationTargetException e6) {
                                e = e6;
                                file2 = file;
                                z.c("WorkaroundUncaughtExceptionHandler", "Deleting corrupt shared pref file: " + file2.getName());
                                file2.delete();
                                if (e.getCause() != null) {
                                    z.a("WorkaroundUncaughtExceptionHandler", "Caught unexpected exception trying to read file: " + file2.getName(), e.getCause());
                                }
                                d0.a(bufferedInputStream);
                            } catch (Exception e7) {
                                e2 = e7;
                                bufferedInputStream3 = bufferedInputStream;
                                z.a("WorkaroundUncaughtExceptionHandler", "Caught exception when call method readMapXml.", e2);
                                d0.a(bufferedInputStream3);
                            }
                            d0.a(bufferedInputStream);
                        } else {
                            z.e("WorkaroundUncaughtExceptionHandler", "Non-XML file: " + str);
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        this.f5226b.uncaughtException(thread, th);
    }
}
