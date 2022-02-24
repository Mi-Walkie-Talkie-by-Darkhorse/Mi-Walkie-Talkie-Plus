package com.ifengyu.intercom.log;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.PowerManager;
import android.os.Process;
import android.os.StatFs;
import android.os.StrictMode;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
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
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

/* loaded from: classes2.dex */
public class LogService extends Service {
    private static final String k = LogService.class.getSimpleName();
    private static String l = "logcat -v time *:%s | grep MiTalk >> %s";

    /* renamed from: b  reason: collision with root package name */
    private String f5809b;

    /* renamed from: c  reason: collision with root package name */
    private String f5810c;
    private String d;
    private Process e;
    private PowerManager.WakeLock f;
    private PendingIntent g;
    private AlarmManager h;

    /* renamed from: a  reason: collision with root package name */
    private SimpleDateFormat f5808a = new SimpleDateFormat("yyyy-MM-dd HHmmss");
    private BroadcastReceiver i = new a(this);
    private BroadcastReceiver j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends BroadcastReceiver {
        a(LogService logService) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String str = LogService.k;
            z.a(str, "mLogTaskReceiver： " + action);
            "android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction());
        }
    }

    /* loaded from: classes2.dex */
    class b extends BroadcastReceiver {
        b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String str = LogService.k;
            z.a(str, "mLogTaskReceiver： " + action);
            if ("MONITOR_LOG_SIZE".equals(action)) {
                LogService.this.b();
            } else if ("android.intent.action.TIME_SET".equals(action)) {
                LogService logService = LogService.this;
                if (logService.a(logService.d, 7)) {
                    z.a(LogService.k, "The log is out of date !");
                    new d().start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class c implements Comparator<File> {
        private c() {
        }

        /* renamed from: a */
        public int compare(File file, File file2) {
            try {
                return LogService.this.d(file.getName()).before(LogService.this.d(file2.getName())) ? -1 : 1;
            } catch (ParseException unused) {
                return 0;
            }
        }

        /* synthetic */ c(LogService logService, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends Thread {
        public d() {
            super("LogCollectorThread");
            z.a(LogService.k, "LogCollectorThread is create");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                LogService.this.f.acquire();
                LogService.this.c();
                LogService.this.b(LogService.this.a(LogService.this.e()));
                LogService.this.d = LogService.this.a(new Date());
                LogService.this.b(LogService.this.e(LogService.this.d));
                Thread.sleep(1000L);
                LogService.this.c(LogService.this.d);
                LogService.this.f.release();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e {

        /* renamed from: a  reason: collision with root package name */
        public String f5814a;

        /* renamed from: b  reason: collision with root package name */
        public String f5815b;

        /* renamed from: c  reason: collision with root package name */
        public String f5816c;
        public String d;

        e(LogService logService) {
        }

        public String toString() {
            return "user=" + this.f5814a + " pid=" + this.f5815b + " ppid=" + this.f5816c + " name=" + this.d;
        }
    }

    private String f() {
        if (this.f5809b == null) {
            String str = getCacheDir().getAbsolutePath() + File.separator + "Log";
            this.f5809b = str;
            a(str);
        }
        return this.f5809b;
    }

    private void g(String str) {
        File[] listFiles;
        z.a(k, "-- moveLogfile() --");
        if (i()) {
            File file = new File(f());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    String name = file2.getName();
                    if (!str.equals(name)) {
                        if (file2.length() >= g()) {
                            d();
                        }
                        if (file2.length() >= g()) {
                            return;
                        }
                        if (a(file2, new File(f(name)))) {
                            file2.delete();
                            z.a(k, "move file success, log name is:" + name);
                        }
                    }
                }
            }
        }
    }

    private String h() {
        if (this.f5810c == null && i()) {
            String absolutePath = k0.a().getExternalFilesDir("Log").getAbsolutePath();
            this.f5810c = absolutePath;
            a(absolutePath);
        }
        return this.f5810c;
    }

    private boolean i() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        z.a(k, "-- onCreate() --");
        z.a(k, "日志统计服务开启");
        c0.a((CharSequence) k0.c(R.string.toast_log_service_start), false);
        if (Build.VERSION.SDK_INT > 9) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        registerReceiver(this.i, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("MONITOR_LOG_SIZE");
        intentFilter2.addAction("android.intent.action.TIME_SET");
        registerReceiver(this.j, intentFilter2);
        this.g = PendingIntent.getBroadcast(this, 0, new Intent("MONITOR_LOG_SIZE"), 0);
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        this.h = alarmManager;
        alarmManager.setRepeating(0, System.currentTimeMillis(), OpenStreetMapTileProviderConstants.ONE_MINUTE, this.g);
        this.f = ((PowerManager) getApplicationContext().getSystemService("power")).newWakeLock(1, k);
        new d().start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        z.a(k, "-- onDestroy() --");
        z.a(k, "日志统计服务关闭");
        c0.a((CharSequence) k0.c(R.string.toast_log_service_close), false);
        Process process = this.e;
        if (process != null) {
            process.destroy();
        }
        this.h.cancel(this.g);
        unregisterReceiver(this.i);
        unregisterReceiver(this.j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends Thread {

        /* renamed from: a  reason: collision with root package name */
        InputStream f5817a;

        /* renamed from: b  reason: collision with root package name */
        List<String> f5818b;

        f(LogService logService, InputStream inputStream) {
            this.f5817a = inputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f5817a));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        return;
                    }
                    if (this.f5818b != null) {
                        this.f5818b.add(readLine);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        f(LogService logService, InputStream inputStream, List<String> list) {
            this.f5817a = inputStream;
            this.f5818b = list;
        }
    }

    private void d() {
        File[] listFiles;
        z.a(k, "-- deleteSdcardAllLog() --");
        if (i()) {
            File file = new File(h());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                    z.a(k, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<String> e() {
        ArrayList arrayList = new ArrayList();
        Process process = null;
        try {
            try {
                try {
                    process = Runtime.getRuntime().exec("ps");
                    f fVar = new f(this, process.getErrorStream());
                    f fVar2 = new f(this, process.getInputStream(), arrayList);
                    fVar.start();
                    fVar2.start();
                    if (process.waitFor() != 0) {
                        z.b(k, "getAllProcess proc.waitFor() != 0");
                    }
                    process.destroy();
                } catch (Exception e2) {
                    z.a(k, "getAllProcess failed", e2);
                    process.destroy();
                }
            } catch (Exception e3) {
                z.a(k, "getAllProcess failed", e3);
            }
            return arrayList;
        } catch (Throwable th) {
            try {
                process.destroy();
            } catch (Exception e4) {
                z.a(k, "getAllProcess failed", e4);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0063 -> B:13:0x0068). Please submit an issue!!! */
    public void c() {
        z.a(k, "-- clearLogCache() --");
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        arrayList.add("-c");
        Process process = null;
        try {
            try {
                try {
                    process = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
                    f fVar = new f(this, process.getErrorStream());
                    f fVar2 = new f(this, process.getInputStream());
                    fVar.start();
                    fVar2.start();
                    if (process.waitFor() != 0) {
                        z.b(k, " clearLogCache proc.waitFor() != 0");
                    }
                    process.destroy();
                } catch (Exception e2) {
                    z.a(k, "clearLogCache failed", e2);
                    process.destroy();
                }
            } catch (Throwable th) {
                try {
                    process.destroy();
                } catch (Exception e3) {
                    z.a(k, "clearLogCache failed", e3);
                }
                throw th;
            }
        } catch (Exception e4) {
            while (true) {
                z.a(k, "clearLogCache failed", e4);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<e> list) {
        z.a(k, "-- killLogcatProc() --");
        Process process = this.e;
        if (process != null) {
            process.destroy();
        }
        String a2 = a(getPackageName(), list);
        for (e eVar : list) {
            if (eVar.d.toLowerCase().equals("logcat") && eVar.f5814a.equals(a2)) {
                Process.killProcess(Integer.parseInt(eVar.f5815b));
            }
        }
    }

    private String f(String str) {
        return h() + File.separator + str;
    }

    private String a(String str, List<e> list) {
        for (e eVar : list) {
            if (eVar.d.equals(str)) {
                return eVar.f5814a;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<e> a(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 1; i < list.size(); i++) {
            String[] split = list.get(i).split(" ");
            ArrayList arrayList2 = new ArrayList();
            for (String str : split) {
                if (!"".equals(str)) {
                    arrayList2.add(str);
                }
            }
            if (arrayList2.size() == 9) {
                e eVar = new e(this);
                eVar.f5814a = (String) arrayList2.get(0);
                eVar.f5815b = (String) arrayList2.get(1);
                eVar.f5816c = (String) arrayList2.get(2);
                eVar.d = (String) arrayList2.get(8);
                arrayList.add(eVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Date d(String str) throws ParseException {
        return this.f5808a.parse(str.substring(0, str.indexOf(".")));
    }

    public void b(String str) {
        z.a(k, "-- createLogCollector() --");
        String a2 = a("V", str.replace(" ", "\\ "));
        z.a(k, a2);
        ArrayList arrayList = new ArrayList();
        arrayList.add("sh");
        arrayList.add("-c");
        arrayList.add(a2);
        try {
            this.e = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
        } catch (Exception e2) {
            String str2 = k;
            z.a(str2, "CollectorThread == >" + e2.getMessage(), e2);
        }
    }

    private long g() {
        if (!i()) {
            return 0L;
        }
        String absolutePath = k0.a().getExternalFilesDir(null).getAbsolutePath();
        StatFs statFs = new StatFs(absolutePath);
        statFs.restat(absolutePath);
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str) {
        return f() + File.separator + str;
    }

    public void c(String str) {
        z.a(k, "-- handleLog() --");
        g(str);
        a(7);
        a(2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        z.a(k, "-- checkLogSize() --");
        String str = this.d;
        if (str != null && !"".equals(str)) {
            File file = new File(e(this.d));
            if (file.exists() && file.length() >= 1048576) {
                z.a(k, "The log's size is too big!");
                new d().start();
            }
        }
    }

    private String a(String str, String str2) {
        z.a(k, "-- getLogFilterCommand() --");
        String str3 = "" + Process.myPid();
        for (int length = str3.length(); length < 5; length++) {
            str3 = " " + str3;
        }
        return String.format(l, str, str2);
    }

    private void a(int i) {
        File[] listFiles;
        z.a(k, "-- deleteSdcardExpiredLog() --");
        if (i()) {
            for (File file : new File(h()).listFiles()) {
                if (a(file.getName(), i)) {
                    file.delete();
                    z.a(k, "delete file success, file name is:" + file.getName());
                }
            }
        }
    }

    public boolean a(String str, int i) {
        Calendar instance = Calendar.getInstance();
        instance.add(5, i * (-1));
        try {
            return d(str).before(instance.getTime());
        } catch (ParseException e2) {
            z.a(k, e2.getMessage(), e2);
            return false;
        }
    }

    private void a(int i, String str) {
        z.a(k, "-- deleteMemoryExpiredLog() --");
        File file = new File(f());
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            Arrays.sort(listFiles, new c(this, null));
            for (int i2 = 0; i2 < listFiles.length - i; i2++) {
                File file2 = listFiles[i2];
                if (!file2.getName().equals(str)) {
                    file2.delete();
                    String str2 = k;
                    z.a(str2, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x006b A[Catch: IOException -> 0x0030, TryCatch #3 {IOException -> 0x0030, blocks: (B:16:0x0029, B:35:0x005f, B:37:0x0064, B:41:0x006b, B:43:0x0070), top: B:47:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0070 A[Catch: IOException -> 0x0030, TRY_LEAVE, TryCatch #3 {IOException -> 0x0030, blocks: (B:16:0x0029, B:35:0x005f, B:37:0x0064, B:41:0x006b, B:43:0x0070), top: B:47:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean a(java.io.File r6, java.io.File r7) {
        /*
            r5 = this;
            r0 = 0
            r1 = 0
            boolean r2 = r7.exists()     // Catch: all -> 0x004f, Exception -> 0x0052
            if (r2 != 0) goto L_0x000f
            boolean r2 = r7.createNewFile()     // Catch: all -> 0x004f, Exception -> 0x0052
            if (r2 != 0) goto L_0x000f
            return r1
        L_0x000f:
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: all -> 0x004f, Exception -> 0x0052
            r2.<init>(r6)     // Catch: all -> 0x004f, Exception -> 0x0052
            java.io.FileOutputStream r6 = new java.io.FileOutputStream     // Catch: all -> 0x0047, Exception -> 0x004b
            r6.<init>(r7)     // Catch: all -> 0x0047, Exception -> 0x004b
            r7 = 8192(0x2000, float:1.14794E-41)
            byte[] r7 = new byte[r7]     // Catch: all -> 0x003b, Exception -> 0x0041
        L_0x001d:
            int r0 = r2.read(r7)     // Catch: all -> 0x003b, Exception -> 0x0041
            r3 = -1
            if (r0 == r3) goto L_0x0028
            r6.write(r7, r1, r0)     // Catch: all -> 0x003b, Exception -> 0x0041
            goto L_0x001d
        L_0x0028:
            r7 = 1
            r2.close()     // Catch: IOException -> 0x0030
            r6.close()     // Catch: IOException -> 0x0030
            return r7
        L_0x0030:
            r6 = move-exception
            java.lang.String r7 = com.ifengyu.intercom.log.LogService.k
            java.lang.String r0 = r6.getMessage()
            com.ifengyu.intercom.i.z.a(r7, r0, r6)
            return r1
        L_0x003b:
            r7 = move-exception
            r0 = r2
            r4 = r7
            r7 = r6
            r6 = r4
            goto L_0x0069
        L_0x0041:
            r7 = move-exception
            r0 = r2
            r4 = r7
            r7 = r6
            r6 = r4
            goto L_0x0054
        L_0x0047:
            r6 = move-exception
            r7 = r0
            r0 = r2
            goto L_0x0069
        L_0x004b:
            r6 = move-exception
            r7 = r0
            r0 = r2
            goto L_0x0054
        L_0x004f:
            r6 = move-exception
            r7 = r0
            goto L_0x0069
        L_0x0052:
            r6 = move-exception
            r7 = r0
        L_0x0054:
            java.lang.String r2 = com.ifengyu.intercom.log.LogService.k     // Catch: all -> 0x0068
            java.lang.String r3 = r6.getMessage()     // Catch: all -> 0x0068
            com.ifengyu.intercom.i.z.a(r2, r3, r6)     // Catch: all -> 0x0068
            if (r0 == 0) goto L_0x0062
            r0.close()     // Catch: IOException -> 0x0030
        L_0x0062:
            if (r7 == 0) goto L_0x0067
            r7.close()     // Catch: IOException -> 0x0030
        L_0x0067:
            return r1
        L_0x0068:
            r6 = move-exception
        L_0x0069:
            if (r0 == 0) goto L_0x006e
            r0.close()     // Catch: IOException -> 0x0030
        L_0x006e:
            if (r7 == 0) goto L_0x0073
            r7.close()     // Catch: IOException -> 0x0030
        L_0x0073:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.log.LogService.a(java.io.File, java.io.File):boolean");
    }

    public boolean a(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Date date) {
        return this.f5808a.format(date) + ".log";
    }
}
