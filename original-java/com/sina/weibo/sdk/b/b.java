package com.sina.weibo.sdk.b;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Pair;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.c;
import com.sina.weibo.sdk.net.f;
import com.sina.weibo.sdk.utils.d;
import com.sina.weibo.sdk.utils.e;
import java.io.File;
import java.util.Iterator;
import java.util.List;

/* compiled from: AppInstallCmdExecutor */
class b {
    private static final String a = (Environment.getExternalStorageDirectory() + "/Android/org_share_data/");
    private static final String b = b.class.getName();
    private Context c;
    private HandlerThread d;
    /* access modifiers changed from: private */
    public Looper e;
    private a f;
    /* access modifiers changed from: private */
    public boolean g = false;

    /* compiled from: AppInstallCmdExecutor */
    private class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    b.this.b((a) message.obj);
                    return;
                case 2:
                    b.this.e.quit();
                    b.this.g = false;
                    return;
                default:
                    return;
            }
        }
    }

    public b(Context context) {
        this.c = context.getApplicationContext();
    }

    /* access modifiers changed from: private */
    public void b(a aVar) {
        if (a(this.c, aVar)) {
            String str = a;
            String d2 = aVar.d();
            long a2 = aVar.a();
            Pair a3 = a(this.c, str, aVar);
            if (a3 != null && a3.second != null && ((long) ((Integer) a3.first).intValue()) >= a2) {
                a(this.c, aVar, ((File) a3.second).getAbsolutePath());
            } else if (e.b(this.c) && !TextUtils.isEmpty(d2)) {
                String str2 = "";
                try {
                    String a4 = c.a(this.c, d2, "GET", new f(""));
                    String a5 = a(a4);
                    if (TextUtils.isEmpty(a5) || !a5.endsWith(".apk")) {
                        com.sina.weibo.sdk.utils.c.c(b, "redirectDownloadUrl is illeagle");
                        if (!TextUtils.isEmpty(str2)) {
                            a(this.c, aVar, str2);
                            return;
                        }
                        return;
                    }
                    String a6 = c.a(this.c, a4, str, a5);
                    if (!TextUtils.isEmpty(a6)) {
                        a(this.c, aVar, a6);
                    }
                } catch (WeiboException e2) {
                    ThrowableExtension.printStackTrace(e2);
                    if (!TextUtils.isEmpty(str2)) {
                        a(this.c, aVar, str2);
                    }
                } catch (Throwable th) {
                    if (!TextUtils.isEmpty(str2)) {
                        a(this.c, aVar, str2);
                    }
                    throw th;
                }
            }
        }
    }

    private static boolean a(Context context, a aVar) {
        List<String> b2 = aVar.b();
        if (b2 == null || b2.size() == 0 || TextUtils.isEmpty(aVar.c()) || TextUtils.isEmpty(aVar.d()) || TextUtils.isEmpty(aVar.e())) {
            return false;
        }
        if (b2.contains("com.sina.weibo")) {
            com.sina.weibo.sdk.b.a a2 = com.sina.weibo.sdk.b.a(context).a();
            return a2 == null || !a2.c();
        }
        for (String a3 : b2) {
            if (a(context, a3)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (context.getPackageManager().getPackageInfo(str, 1) != null) {
                return true;
            }
            return false;
        } catch (NameNotFoundException e2) {
            return false;
        }
    }

    public void a() {
        if (!this.g) {
            this.g = true;
            this.d = new HandlerThread("");
            this.d.start();
            this.e = this.d.getLooper();
            this.f = new a(this.e);
        }
    }

    public void b() {
        if (this.d == null || this.f == null) {
            com.sina.weibo.sdk.utils.c.d(b, "no thread running. please call start method first!");
            return;
        }
        Message obtainMessage = this.f.obtainMessage();
        obtainMessage.what = 2;
        this.f.sendMessage(obtainMessage);
    }

    public boolean a(a aVar) {
        if (this.d == null || this.f == null) {
            throw new RuntimeException("no thread running. please call start method first!");
        }
        if (aVar != null) {
            Message obtainMessage = this.f.obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = aVar;
            this.f.sendMessage(obtainMessage);
        }
        return false;
    }

    private static Pair<Integer, File> a(Context context, String str, a aVar) {
        int i;
        File file = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file2 = new File(str);
        if (!file2.exists() || !file2.isDirectory()) {
            return null;
        }
        File[] listFiles = file2.listFiles();
        if (listFiles == null) {
            return null;
        }
        int length = listFiles.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            File file3 = listFiles[i2];
            String name = file3.getName();
            if (file3.isFile() && name.endsWith(".apk")) {
                PackageInfo packageArchiveInfo = context.getPackageManager().getPackageArchiveInfo(file3.getAbsolutePath(), 64);
                if (!a(packageArchiveInfo, aVar.b(), aVar.c())) {
                    i = i3;
                } else if (packageArchiveInfo.versionCode > i3) {
                    File file4 = file3;
                    i = packageArchiveInfo.versionCode;
                    file = file4;
                }
                i2++;
                i3 = i;
            }
            i = i3;
            i2++;
            i3 = i;
        }
        return new Pair(Integer.valueOf(i3), file);
    }

    private static boolean a(PackageInfo packageInfo, List<String> list, String str) {
        boolean z;
        Iterator it = list.iterator();
        while (true) {
            if (it.hasNext()) {
                if (a(packageInfo, (String) it.next())) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        boolean b2 = b(packageInfo, str);
        if (!z || !b2) {
            return false;
        }
        return true;
    }

    private static boolean a(PackageInfo packageInfo, String str) {
        if (packageInfo == null) {
            return false;
        }
        return str.equals(packageInfo.packageName);
    }

    private static boolean b(PackageInfo packageInfo, String str) {
        if (packageInfo == null) {
            return false;
        }
        if (packageInfo.signatures != null) {
            String str2 = "";
            for (Signature byteArray : packageInfo.signatures) {
                byte[] byteArray2 = byteArray.toByteArray();
                if (byteArray2 != null) {
                    str2 = d.a(byteArray2);
                }
            }
            if (str2 != null) {
                return str2.equals(str);
            }
            return false;
        } else if (VERSION.SDK_INT < 11) {
            return true;
        } else {
            return false;
        }
    }

    private static String a(String str) {
        String str2 = "";
        int lastIndexOf = str.lastIndexOf("/");
        if (lastIndexOf != -1) {
            return str.substring(lastIndexOf + 1, str.length());
        }
        return str2;
    }

    private static void a(Context context, a aVar, String str) {
        com.sina.weibo.sdk.utils.g.a.a().c(aVar.e()).a(b(context, str)).b(c(context, aVar.f())).a(aVar.e()).a(context).a(1);
    }

    private static PendingIntent b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return PendingIntent.getActivity(context, 0, new Intent(), 16);
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        return PendingIntent.getActivity(context, 0, intent, 16);
    }

    private static String c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return com.sina.weibo.sdk.utils.f.a(context, "Weibo", "微博", "微博");
        }
        return str;
    }
}
