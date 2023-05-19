package com.xiaomi.push;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.manager.C5880a;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.xiaomi.push.bs */
/* loaded from: classes2.dex */
public class C6027bs {
    /* renamed from: a */
    public static String m3604a() {
        return Build.VERSION.RELEASE + Constants.ACCEPT_TIME_SEPARATOR_SERVER + Build.VERSION.INCREMENTAL;
    }

    /* renamed from: a */
    public static String m3603a(Context context) {
        String m3592a = C6030bv.m3595a(context).m3592a("sp_client_report_status", "sp_client_report_key", "");
        if (TextUtils.isEmpty(m3592a)) {
            String m3621a = C6023bo.m3621a(20);
            C6030bv.m3595a(context).m3591a("sp_client_report_status", "sp_client_report_key", m3621a);
            return m3621a;
        }
        return m3592a;
    }

    /* renamed from: a */
    public static void m3601a(Context context, String str) {
        Intent intent = new Intent("com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE");
        intent.putExtra("pkgname", context.getPackageName());
        intent.putExtra("category", "category_client_report_data");
        intent.putExtra("name", "quality_support");
        intent.putExtra("data", str);
        context.sendBroadcast(intent, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD");
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e4, code lost:
        if (r7 == null) goto L57;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m3598a(Context context, String str, String str2) {
        File file;
        RandomAccessFile randomAccessFile;
        Exception e;
        File externalFilesDir = context.getExternalFilesDir(str2);
        if (externalFilesDir != null) {
            if (!externalFilesDir.exists()) {
                externalFilesDir.mkdirs();
            }
            File externalFilesDir2 = context.getExternalFilesDir(str);
            if (externalFilesDir2 != null) {
                if (!externalFilesDir2.exists()) {
                    externalFilesDir2.mkdirs();
                    return;
                }
                File[] listFiles = externalFilesDir2.listFiles(new C6028bt());
                if (listFiles == null || listFiles.length <= 0) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                FileLock fileLock = null;
                RandomAccessFile randomAccessFile2 = null;
                File file2 = null;
                for (File file3 : listFiles) {
                    if (file3 != null) {
                        try {
                        } catch (Exception e2) {
                            file = file2;
                            randomAccessFile = randomAccessFile2;
                            e = e2;
                        } catch (Throwable th) {
                            th = th;
                        }
                        if (!TextUtils.isEmpty(file3.getAbsolutePath())) {
                            file = new File(file3.getAbsolutePath() + ".lock");
                            try {
                                C5968aa.m3808a(file);
                                randomAccessFile = new RandomAccessFile(file, "rw");
                            } catch (Exception e3) {
                                randomAccessFile = randomAccessFile2;
                                e = e3;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                            try {
                                try {
                                    fileLock = randomAccessFile.getChannel().lock();
                                    File file4 = new File(externalFilesDir.getAbsolutePath() + File.separator + file3.getName() + currentTimeMillis);
                                    try {
                                        C5968aa.m3803b(file3, file4);
                                    } catch (IOException e4) {
                                        e4.printStackTrace();
                                        file3.delete();
                                        file4.delete();
                                    }
                                    file3.delete();
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException e5) {
                                            AbstractC5876b.m4143a(e5);
                                        }
                                    }
                                    C5968aa.m3810a(randomAccessFile);
                                } catch (Throwable th3) {
                                    th = th3;
                                    randomAccessFile2 = randomAccessFile;
                                    file2 = file;
                                    if (fileLock != null && fileLock.isValid()) {
                                        try {
                                            fileLock.release();
                                        } catch (IOException e6) {
                                            AbstractC5876b.m4143a(e6);
                                        }
                                    }
                                    C5968aa.m3810a(randomAccessFile2);
                                    if (file2 != null) {
                                        file2.delete();
                                    }
                                    throw th;
                                }
                            } catch (Exception e7) {
                                e = e7;
                                AbstractC5876b.m4143a(e);
                                if (fileLock != null && fileLock.isValid()) {
                                    try {
                                        fileLock.release();
                                    } catch (IOException e8) {
                                        AbstractC5876b.m4143a(e8);
                                    }
                                }
                                C5968aa.m3810a(randomAccessFile);
                            }
                            file.delete();
                            randomAccessFile2 = randomAccessFile;
                            file2 = file;
                        }
                    }
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e9) {
                            AbstractC5876b.m4143a(e9);
                        }
                    }
                    C5968aa.m3810a(randomAccessFile2);
                    if (file2 != null) {
                        file2.delete();
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m3597a(Context context, List<String> list) {
        if (list == null || list.size() <= 0 || !m3602a(context)) {
            return;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str)) {
                m3601a(context, str);
            }
        }
    }

    /* renamed from: a */
    public static boolean m3602a(Context context) {
        try {
            return context.getApplicationContext().getPackageManager().getPackageInfo("com.xiaomi.xmsf", 0).versionCode >= 108;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m3600a(Context context, String str) {
        File file = new File(str);
        long maxFileLength = C5880a.m4132a(context).m4135a().getMaxFileLength();
        if (file.exists()) {
            try {
                if (file.length() > maxFileLength) {
                    return false;
                }
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
                return false;
            }
        } else {
            C5968aa.m3808a(file);
        }
        return true;
    }

    @TargetApi(9)
    /* renamed from: a */
    public static byte[] m3596a(String str) {
        byte[] copyOf = Arrays.copyOf(C6020bl.m3632a(str), 16);
        copyOf[0] = 68;
        copyOf[15] = 84;
        return copyOf;
    }

    /* renamed from: a */
    public static File[] m3599a(Context context, String str) {
        File externalFilesDir = context.getExternalFilesDir(str);
        if (externalFilesDir != null) {
            return externalFilesDir.listFiles(new C6029bu());
        }
        return null;
    }
}
