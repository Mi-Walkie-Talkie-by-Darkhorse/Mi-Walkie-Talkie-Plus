package com.ifengyu.intercom.log;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.os.StatFs;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

public class LogService extends Service {
    /* access modifiers changed from: private */
    public static final String a = LogService.class.getSimpleName();
    private static String b = "logcat -v time *:%s | grep MiTalk >> %s";
    private SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd HHmmss");
    private String d;
    private String e;
    /* access modifiers changed from: private */
    public String f;
    private Process g;
    /* access modifiers changed from: private */
    public WakeLock h;
    private PendingIntent i;
    private AlarmManager j;
    private BroadcastReceiver k = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            s.b(LogService.a, "mLogTaskReceiver： " + intent.getAction());
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction())) {
            }
        }
    };
    private BroadcastReceiver l = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            s.b(LogService.a, "mLogTaskReceiver： " + action);
            if ("MONITOR_LOG_SIZE".equals(action)) {
                LogService.this.d();
            } else if ("android.intent.action.TIME_SET".equals(action) && LogService.this.a(LogService.this.f, 7)) {
                s.b(LogService.a, "The log is out of date !");
                new b().start();
            }
        }
    };

    private class a implements Comparator<File> {
        private a() {
        }

        /* renamed from: a */
        public int compare(File file, File file2) {
            try {
                if (LogService.this.e(file.getName()).before(LogService.this.e(file2.getName()))) {
                    return -1;
                }
                return 1;
            } catch (ParseException e) {
                return 0;
            }
        }
    }

    class b extends Thread {
        public b() {
            super("LogCollectorThread");
            s.b(LogService.a, "LogCollectorThread is create");
        }

        public void run() {
            try {
                LogService.this.h.acquire();
                LogService.this.b();
                LogService.this.a(LogService.this.b(LogService.this.c()));
                LogService.this.f = LogService.this.a(new Date());
                LogService.this.a(LogService.this.f(LogService.this.f));
                Thread.sleep(1000);
                LogService.this.b(LogService.this.f);
                LogService.this.h.release();
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    class c {
        public String a;
        public String b;
        public String c;
        public String d;

        c() {
        }

        public String toString() {
            return "user=" + this.a + " pid=" + this.b + " ppid=" + this.c + " name=" + this.d;
        }
    }

    class d extends Thread {
        InputStream a;
        List<String> b;

        d(InputStream inputStream) {
            this.a = inputStream;
        }

        d(InputStream inputStream, List<String> list) {
            this.a = inputStream;
            this.b = list;
        }

        public void run() {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.a));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        return;
                    }
                    if (this.b != null) {
                        this.b.add(readLine);
                    }
                }
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onCreate() {
        super.onCreate();
        s.b(a, "-- onCreate() --");
        s.b(a, "日志统计服务开启");
        v.a((CharSequence) ad.a((int) R.string.toast_log_service_start), false);
        if (VERSION.SDK_INT > 9) {
            StrictMode.setThreadPolicy(new Builder().permitAll().build());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme(HttpPostBodyUtil.FILE);
        registerReceiver(this.k, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("MONITOR_LOG_SIZE");
        intentFilter2.addAction("android.intent.action.TIME_SET");
        registerReceiver(this.l, intentFilter2);
        this.i = PendingIntent.getBroadcast(this, 0, new Intent("MONITOR_LOG_SIZE"), 0);
        this.j = (AlarmManager) getSystemService("alarm");
        this.j.setRepeating(0, System.currentTimeMillis(), 60000, this.i);
        this.h = ((PowerManager) getApplicationContext().getSystemService("power")).newWakeLock(1, a);
        new b().start();
    }

    public void onDestroy() {
        super.onDestroy();
        s.b(a, "-- onDestroy() --");
        s.b(a, "日志统计服务关闭");
        v.a((CharSequence) ad.a((int) R.string.toast_log_service_close), false);
        if (this.g != null) {
            this.g.destroy();
        }
        this.j.cancel(this.i);
        unregisterReceiver(this.k);
        unregisterReceiver(this.l);
    }

    /* access modifiers changed from: private */
    public void b() {
        s.b(a, "-- clearLogCache() --");
        Process process = null;
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        arrayList.add("-c");
        try {
            process = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
            d dVar = new d(process.getErrorStream());
            d dVar2 = new d(process.getInputStream());
            dVar.start();
            dVar2.start();
            if (process.waitFor() != 0) {
                s.e(a, " clearLogCache proc.waitFor() != 0");
            }
            try {
            } catch (Exception e2) {
                s.b(a, "clearLogCache failed", e2);
            }
        } catch (Exception e3) {
            s.b(a, "clearLogCache failed", e3);
            try {
            } catch (Exception e4) {
                s.b(a, "clearLogCache failed", e4);
            }
        } finally {
            try {
                process.destroy();
            } catch (Exception e5) {
                s.b(a, "clearLogCache failed", e5);
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(List<c> list) {
        s.b(a, "-- killLogcatProc() --");
        if (this.g != null) {
            this.g.destroy();
        }
        String a2 = a(getPackageName(), list);
        for (c cVar : list) {
            if (cVar.d.toLowerCase().equals("logcat") && cVar.a.equals(a2)) {
                Process.killProcess(Integer.parseInt(cVar.b));
            }
        }
    }

    private String a(String str, List<c> list) {
        for (c cVar : list) {
            if (cVar.d.equals(str)) {
                return cVar.a;
            }
        }
        return null;
    }

    /* access modifiers changed from: private */
    public List<c> b(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 1; i2 < list.size(); i2++) {
            String[] split = ((String) list.get(i2)).split(Token.SEPARATOR);
            ArrayList arrayList2 = new ArrayList();
            for (String str : split) {
                if (!"".equals(str)) {
                    arrayList2.add(str);
                }
            }
            if (arrayList2.size() == 9) {
                c cVar = new c();
                cVar.a = (String) arrayList2.get(0);
                cVar.b = (String) arrayList2.get(1);
                cVar.c = (String) arrayList2.get(2);
                cVar.d = (String) arrayList2.get(8);
                arrayList.add(cVar);
            }
        }
        return arrayList;
    }

    /* access modifiers changed from: private */
    public List<String> c() {
        ArrayList arrayList = new ArrayList();
        Process process = null;
        try {
            process = Runtime.getRuntime().exec("ps");
            d dVar = new d(process.getErrorStream());
            d dVar2 = new d(process.getInputStream(), arrayList);
            dVar.start();
            dVar2.start();
            if (process.waitFor() != 0) {
                s.e(a, "getAllProcess proc.waitFor() != 0");
            }
            try {
            } catch (Exception e2) {
                s.b(a, "getAllProcess failed", e2);
            }
        } catch (Exception e3) {
            s.b(a, "getAllProcess failed", e3);
            try {
            } catch (Exception e4) {
                s.b(a, "getAllProcess failed", e4);
            }
        } finally {
            try {
                process.destroy();
            } catch (Exception e5) {
                s.b(a, "getAllProcess failed", e5);
            }
        }
        return arrayList;
    }

    private String a(String str, String str2) {
        s.b(a, "-- getLogFilterCommand() --");
        String str3 = "" + Process.myPid();
        for (int length = str3.length(); length < 5; length++) {
            str3 = Token.SEPARATOR + str3;
        }
        return String.format(b, new Object[]{str, str2});
    }

    public void a(String str) {
        s.b(a, "-- createLogCollector() --");
        String a2 = a(TraceFormat.STR_VERBOSE, str.replace(Token.SEPARATOR, "\\ "));
        s.b(a, a2);
        ArrayList arrayList = new ArrayList();
        arrayList.add("sh");
        arrayList.add("-c");
        arrayList.add(a2);
        try {
            this.g = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
        } catch (Exception e2) {
            s.b(a, "CollectorThread == >" + e2.getMessage(), e2);
        }
    }

    public void b(String str) {
        s.b(a, "-- handleLog() --");
        d(str);
        a(7);
        a(2, str);
    }

    /* access modifiers changed from: private */
    public void d() {
        s.b(a, "-- checkLogSize() --");
        if (this.f != null && !"".equals(this.f)) {
            File file = new File(f(this.f));
            if (file.exists() && file.length() >= 1048576) {
                s.b(a, "The log's size is too big!");
                new b().start();
            }
        }
    }

    private void d(String str) {
        File[] listFiles;
        s.b(a, "-- moveLogfile() --");
        if (f()) {
            File file = new File(h());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    String name = file2.getName();
                    if (!str.equals(name)) {
                        if (file2.length() >= g()) {
                            e();
                        }
                        if (file2.length() >= g()) {
                            return;
                        }
                        if (a(file2, new File(g(name)))) {
                            file2.delete();
                            s.b(a, "move file success, log name is:" + name);
                        }
                    }
                }
            }
        }
    }

    private void e() {
        File[] listFiles;
        s.b(a, "-- deleteSdcardAllLog() --");
        if (f()) {
            File file = new File(i());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                    s.b(a, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    private void a(int i2) {
        File[] listFiles;
        s.b(a, "-- deleteSdcardExpiredLog() --");
        if (f()) {
            for (File file : new File(i()).listFiles()) {
                if (a(file.getName(), i2)) {
                    file.delete();
                    s.b(a, "delete file success, file name is:" + file.getName());
                }
            }
        }
    }

    public boolean a(String str, int i2) {
        Calendar instance = Calendar.getInstance();
        instance.add(5, i2 * -1);
        try {
            return e(str).before(instance.getTime());
        } catch (ParseException e2) {
            s.b(a, e2.getMessage(), e2);
            return false;
        }
    }

    private void a(int i2, String str) {
        s.b(a, "-- deleteMemoryExpiredLog() --");
        File file = new File(h());
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            Arrays.sort(listFiles, new a());
            for (int i3 = 0; i3 < listFiles.length - i2; i3++) {
                File file2 = listFiles[i3];
                if (!file2.getName().equals(str)) {
                    file2.delete();
                    s.b(a, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x004e A[SYNTHETIC, Splitter:B:28:0x004e] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0053 A[Catch:{ IOException -> 0x0057 }] */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x007e A[SYNTHETIC, Splitter:B:46:0x007e] */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0083 A[Catch:{ IOException -> 0x0087 }] */
    /* JADX WARNING: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean a(java.io.File r7, java.io.File r8) {
        /*
            r6 = this;
            r2 = 0
            r0 = 0
            r1 = 0
            r3 = 0
            boolean r4 = r8.exists()     // Catch:{ Exception -> 0x009a, all -> 0x007a }
            if (r4 != 0) goto L_0x0026
            boolean r4 = r8.createNewFile()     // Catch:{ Exception -> 0x009a, all -> 0x007a }
            if (r4 != 0) goto L_0x0026
            if (r2 == 0) goto L_0x0015
            r1.close()     // Catch:{ IOException -> 0x001b }
        L_0x0015:
            if (r2 == 0) goto L_0x001a
            r3.close()     // Catch:{ IOException -> 0x001b }
        L_0x001a:
            return r0
        L_0x001b:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = r1.getMessage()
            com.ifengyu.intercom.b.s.b(r2, r3, r1)
            goto L_0x001a
        L_0x0026:
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch:{ Exception -> 0x009a, all -> 0x007a }
            r4.<init>(r7)     // Catch:{ Exception -> 0x009a, all -> 0x007a }
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x009d, all -> 0x0092 }
            r3.<init>(r8)     // Catch:{ Exception -> 0x009d, all -> 0x0092 }
            r1 = 8192(0x2000, float:1.14794E-41)
            byte[] r1 = new byte[r1]     // Catch:{ Exception -> 0x0040, all -> 0x0094 }
        L_0x0034:
            int r2 = r4.read(r1)     // Catch:{ Exception -> 0x0040, all -> 0x0094 }
            r5 = -1
            if (r2 == r5) goto L_0x0062
            r5 = 0
            r3.write(r1, r5, r2)     // Catch:{ Exception -> 0x0040, all -> 0x0094 }
            goto L_0x0034
        L_0x0040:
            r1 = move-exception
            r2 = r3
            r3 = r4
        L_0x0043:
            java.lang.String r4 = a     // Catch:{ all -> 0x0097 }
            java.lang.String r5 = r1.getMessage()     // Catch:{ all -> 0x0097 }
            com.ifengyu.intercom.b.s.b(r4, r5, r1)     // Catch:{ all -> 0x0097 }
            if (r3 == 0) goto L_0x0051
            r3.close()     // Catch:{ IOException -> 0x0057 }
        L_0x0051:
            if (r2 == 0) goto L_0x001a
            r2.close()     // Catch:{ IOException -> 0x0057 }
            goto L_0x001a
        L_0x0057:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = r1.getMessage()
            com.ifengyu.intercom.b.s.b(r2, r3, r1)
            goto L_0x001a
        L_0x0062:
            r1 = 1
            if (r4 == 0) goto L_0x0068
            r4.close()     // Catch:{ IOException -> 0x006f }
        L_0x0068:
            if (r3 == 0) goto L_0x006d
            r3.close()     // Catch:{ IOException -> 0x006f }
        L_0x006d:
            r0 = r1
            goto L_0x001a
        L_0x006f:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = r1.getMessage()
            com.ifengyu.intercom.b.s.b(r2, r3, r1)
            goto L_0x001a
        L_0x007a:
            r1 = move-exception
            r4 = r2
        L_0x007c:
            if (r4 == 0) goto L_0x0081
            r4.close()     // Catch:{ IOException -> 0x0087 }
        L_0x0081:
            if (r2 == 0) goto L_0x0086
            r2.close()     // Catch:{ IOException -> 0x0087 }
        L_0x0086:
            throw r1
        L_0x0087:
            r1 = move-exception
            java.lang.String r2 = a
            java.lang.String r3 = r1.getMessage()
            com.ifengyu.intercom.b.s.b(r2, r3, r1)
            goto L_0x001a
        L_0x0092:
            r1 = move-exception
            goto L_0x007c
        L_0x0094:
            r1 = move-exception
            r2 = r3
            goto L_0x007c
        L_0x0097:
            r1 = move-exception
            r4 = r3
            goto L_0x007c
        L_0x009a:
            r1 = move-exception
            r3 = r2
            goto L_0x0043
        L_0x009d:
            r1 = move-exception
            r3 = r4
            goto L_0x0043
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.log.LogService.a(java.io.File, java.io.File):boolean");
    }

    private boolean f() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    private long g() {
        if (!f()) {
            return 0;
        }
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        StatFs statFs = new StatFs(absolutePath);
        statFs.restat(absolutePath);
        return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
    }

    public boolean c(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    /* access modifiers changed from: private */
    public Date e(String str) throws ParseException {
        return this.c.parse(str.substring(0, str.indexOf(".")));
    }

    /* access modifiers changed from: private */
    public String a(Date date) {
        return this.c.format(date) + FileTracerConfig.DEF_TRACE_FILEEXT;
    }

    /* access modifiers changed from: private */
    public String f(String str) {
        return h() + File.separator + str;
    }

    private String h() {
        if (this.d == null) {
            this.d = getFilesDir().getAbsolutePath() + File.separator + "Log";
            c(this.d);
        }
        return this.d;
    }

    private String g(String str) {
        return i() + File.separator + str;
    }

    private String i() {
        if (this.e == null && f()) {
            this.e = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "mitalki" + File.separator + "Log";
            c(this.e);
        }
        return this.e;
    }
}
