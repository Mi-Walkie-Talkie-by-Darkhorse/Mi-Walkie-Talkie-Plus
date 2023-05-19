package com.ifengyu.intercom.service.logCollect;

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
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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

/* loaded from: classes2.dex */
public class LogService extends Service {

    /* renamed from: k */
    private static final String f14695k = LogService.class.getSimpleName();

    /* renamed from: l */
    private static String f14696l = "logcat -v time *:%s | grep MiTalk >> %s";

    /* renamed from: b */
    private String f14698b;

    /* renamed from: c */
    private String f14699c;

    /* renamed from: d */
    private String f14700d;

    /* renamed from: e */
    private Process f14701e;

    /* renamed from: f */
    private PowerManager.WakeLock f14702f;

    /* renamed from: g */
    private PendingIntent f14703g;

    /* renamed from: h */
    private AlarmManager f14704h;

    /* renamed from: a */
    private SimpleDateFormat f14697a = new SimpleDateFormat("yyyy-MM-dd HHmmss");

    /* renamed from: i */
    private BroadcastReceiver f14705i = new C4333a(this);

    /* renamed from: j */
    private BroadcastReceiver f14706j = new C4334b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$a */
    /* loaded from: classes2.dex */
    public class C4333a extends BroadcastReceiver {
        C4333a(LogService logService) {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String str = LogService.f14695k;
            C4161y.m11054a(str, "mLogTaskReceiver： " + action);
            "android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction());
        }
    }

    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$b */
    /* loaded from: classes2.dex */
    class C4334b extends BroadcastReceiver {
        C4334b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String str = LogService.f14695k;
            C4161y.m11054a(str, "mLogTaskReceiver： " + action);
            if ("MONITOR_LOG_SIZE".equals(action)) {
                LogService.this.m10645n();
            } else if ("android.intent.action.TIME_SET".equals(action)) {
                LogService logService = LogService.this;
                if (logService.m10646m(logService.f14700d, 7)) {
                    C4161y.m11054a(LogService.f14695k, "The log is out of date !");
                    new C4336d().start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$c */
    /* loaded from: classes2.dex */
    public class C4335c implements Comparator<File> {
        private C4335c() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            try {
                return LogService.this.m10636w(file.getName()).before(LogService.this.m10636w(file2.getName())) ? -1 : 1;
            } catch (ParseException unused) {
                return 0;
            }
        }

        /* synthetic */ C4335c(LogService logService, C4333a c4333a) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$d */
    /* loaded from: classes2.dex */
    public class C4336d extends Thread {
        public C4336d() {
            super("LogCollectorThread");
            C4161y.m11054a(LogService.f14695k, "LogCollectorThread is create");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                LogService.this.f14702f.acquire();
                LogService.this.m10644o();
                LogService.this.m10660I(LogService.this.m10666C(LogService.this.m10635x()));
                LogService logService = LogService.this;
                logService.f14700d = logService.m10640s(new Date());
                LogService logService2 = LogService.this;
                logService2.m10641r(logService2.m10667B(logService2.f14700d));
                Thread.sleep(1000L);
                LogService logService3 = LogService.this;
                logService3.m10662G(logService3.f14700d);
                LogService.this.f14702f.release();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$e */
    /* loaded from: classes2.dex */
    public class C4337e {

        /* renamed from: a */
        public String f14710a;

        /* renamed from: b */
        public String f14711b;

        /* renamed from: c */
        public String f14712c;

        /* renamed from: d */
        public String f14713d;

        C4337e(LogService logService) {
        }

        public String toString() {
            return "user=" + this.f14710a + " pid=" + this.f14711b + " ppid=" + this.f14712c + " name=" + this.f14713d;
        }
    }

    /* renamed from: A */
    private String m10668A() {
        if (this.f14698b == null) {
            String str = getCacheDir().getAbsolutePath() + File.separator + "Log";
            this.f14698b = str;
            m10642q(str);
        }
        return this.f14698b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public String m10667B(String str) {
        return m10668A() + File.separator + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C */
    public List<C4337e> m10666C(List<String> list) {
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
                C4337e c4337e = new C4337e(this);
                c4337e.f14710a = (String) arrayList2.get(0);
                c4337e.f14711b = (String) arrayList2.get(1);
                c4337e.f14712c = (String) arrayList2.get(2);
                c4337e.f14713d = (String) arrayList2.get(8);
                arrayList.add(c4337e);
            }
        }
        return arrayList;
    }

    /* renamed from: D */
    private long m10665D() {
        if (m10661H()) {
            String absolutePath = UIUtils.m8613e().getExternalFilesDir(null).getAbsolutePath();
            StatFs statFs = new StatFs(absolutePath);
            statFs.restat(absolutePath);
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        }
        return 0L;
    }

    /* renamed from: E */
    private String m10664E() {
        if (this.f14699c == null && m10661H()) {
            String absolutePath = UIUtils.m8613e().getExternalFilesDir("Log").getAbsolutePath();
            this.f14699c = absolutePath;
            m10642q(absolutePath);
        }
        return this.f14699c;
    }

    /* renamed from: F */
    private String m10663F(String str) {
        return m10664E() + File.separator + str;
    }

    /* renamed from: H */
    private boolean m10661H() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public void m10660I(List<C4337e> list) {
        C4161y.m11054a(f14695k, "-- killLogcatProc() --");
        Process process = this.f14701e;
        if (process != null) {
            process.destroy();
        }
        String m10634y = m10634y(getPackageName(), list);
        for (C4337e c4337e : list) {
            if (c4337e.f14713d.toLowerCase().equals("logcat") && c4337e.f14710a.equals(m10634y)) {
                Process.killProcess(Integer.parseInt(c4337e.f14711b));
            }
        }
    }

    /* renamed from: J */
    private void m10659J(String str) {
        File[] listFiles;
        C4161y.m11054a(f14695k, "-- moveLogfile() --");
        if (m10661H()) {
            File file = new File(m10668A());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    String name = file2.getName();
                    if (!str.equals(name)) {
                        if (file2.length() >= m10665D()) {
                            m10638u();
                        }
                        if (file2.length() >= m10665D()) {
                            return;
                        }
                        if (m10643p(file2, new File(m10663F(name)))) {
                            file2.delete();
                            C4161y.m11054a(f14695k, "move file success, log name is:" + name);
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m10645n() {
        String str = f14695k;
        C4161y.m11054a(str, "-- checkLogSize() --");
        String str2 = this.f14700d;
        if (str2 == null || "".equals(str2)) {
            return;
        }
        File file = new File(m10667B(this.f14700d));
        if (file.exists() && file.length() >= 1048576) {
            C4161y.m11054a(str, "The log's size is too big!");
            new C4336d().start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m10644o() {
        String str = f14695k;
        C4161y.m11054a(str, "-- clearLogCache() --");
        ArrayList arrayList = new ArrayList();
        arrayList.add("logcat");
        arrayList.add("-c");
        Process process = null;
        try {
            try {
                try {
                    process = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
                    C4338f c4338f = new C4338f(this, process.getErrorStream());
                    C4338f c4338f2 = new C4338f(this, process.getInputStream());
                    c4338f.start();
                    c4338f2.start();
                    if (process.waitFor() != 0) {
                        C4161y.m11052c(str, " clearLogCache proc.waitFor() != 0");
                    }
                    process.destroy();
                } catch (Exception e) {
                    C4161y.m11051d(f14695k, "clearLogCache failed", e);
                    process.destroy();
                }
            } catch (Exception e2) {
                C4161y.m11051d(f14695k, "clearLogCache failed", e2);
            }
        } catch (Throwable th) {
            try {
                process.destroy();
            } catch (Exception e3) {
                C4161y.m11051d(f14695k, "clearLogCache failed", e3);
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x006b A[Catch: IOException -> 0x0030, TryCatch #3 {IOException -> 0x0030, blocks: (B:17:0x0029, B:42:0x006b, B:44:0x0070, B:36:0x005f, B:38:0x0064), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0070 A[Catch: IOException -> 0x0030, TRY_LEAVE, TryCatch #3 {IOException -> 0x0030, blocks: (B:17:0x0029, B:42:0x006b, B:44:0x0070, B:36:0x005f, B:38:0x0064), top: B:48:0x0002 }] */
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m10643p(File file, File file2) {
        FileOutputStream fileOutputStream;
        FileInputStream fileInputStream = null;
        try {
            try {
                if (!file2.exists() && !file2.createNewFile()) {
                    return false;
                }
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = fileInputStream2.read(bArr);
                            if (read != -1) {
                                fileOutputStream2.write(bArr, 0, read);
                            } else {
                                fileInputStream2.close();
                                fileOutputStream2.close();
                                return true;
                            }
                        }
                    } catch (Exception e) {
                        fileInputStream = fileInputStream2;
                        fileOutputStream = fileOutputStream2;
                        e = e;
                        try {
                            C4161y.m11051d(f14695k, e.getMessage(), e);
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        fileInputStream = fileInputStream2;
                        fileOutputStream = fileOutputStream2;
                        th = th2;
                        if (fileInputStream != null) {
                        }
                        if (fileOutputStream != null) {
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = null;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception e3) {
                e = e3;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        } catch (IOException e4) {
            C4161y.m11051d(f14695k, e4.getMessage(), e4);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s */
    public String m10640s(Date date) {
        return this.f14697a.format(date) + ".log";
    }

    /* renamed from: t */
    private void m10639t(int i, String str) {
        C4161y.m11054a(f14695k, "-- deleteMemoryExpiredLog() --");
        File file = new File(m10668A());
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            Arrays.sort(listFiles, new C4335c(this, null));
            for (int i2 = 0; i2 < listFiles.length - i; i2++) {
                File file2 = listFiles[i2];
                if (!file2.getName().equals(str)) {
                    file2.delete();
                    String str2 = f14695k;
                    C4161y.m11054a(str2, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    /* renamed from: u */
    private void m10638u() {
        File[] listFiles;
        C4161y.m11054a(f14695k, "-- deleteSdcardAllLog() --");
        if (m10661H()) {
            File file = new File(m10664E());
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    file2.delete();
                    C4161y.m11054a(f14695k, "delete file success, file name is:" + file2.getName());
                }
            }
        }
    }

    /* renamed from: v */
    private void m10637v(int i) {
        File[] listFiles;
        C4161y.m11054a(f14695k, "-- deleteSdcardExpiredLog() --");
        if (m10661H()) {
            for (File file : new File(m10664E()).listFiles()) {
                if (m10646m(file.getName(), i)) {
                    file.delete();
                    C4161y.m11054a(f14695k, "delete file success, file name is:" + file.getName());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public Date m10636w(String str) throws ParseException {
        return this.f14697a.parse(str.substring(0, str.indexOf(".")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public List<String> m10635x() {
        ArrayList arrayList = new ArrayList();
        Process process = null;
        try {
            try {
                try {
                    process = Runtime.getRuntime().exec("ps");
                    C4338f c4338f = new C4338f(this, process.getErrorStream());
                    C4338f c4338f2 = new C4338f(this, process.getInputStream(), arrayList);
                    c4338f.start();
                    c4338f2.start();
                    if (process.waitFor() != 0) {
                        C4161y.m11052c(f14695k, "getAllProcess proc.waitFor() != 0");
                    }
                    process.destroy();
                } catch (Throwable th) {
                    try {
                        process.destroy();
                    } catch (Exception e) {
                        C4161y.m11051d(f14695k, "getAllProcess failed", e);
                    }
                    throw th;
                }
            } catch (Exception e2) {
                C4161y.m11051d(f14695k, "getAllProcess failed", e2);
                process.destroy();
            }
        } catch (Exception e3) {
            C4161y.m11051d(f14695k, "getAllProcess failed", e3);
        }
        return arrayList;
    }

    /* renamed from: y */
    private String m10634y(String str, List<C4337e> list) {
        for (C4337e c4337e : list) {
            if (c4337e.f14713d.equals(str)) {
                return c4337e.f14710a;
            }
        }
        return null;
    }

    /* renamed from: z */
    private String m10633z(String str, String str2) {
        C4161y.m11054a(f14695k, "-- getLogFilterCommand() --");
        String str3 = "" + Process.myPid();
        for (int length = str3.length(); length < 5; length++) {
            str3 = " " + str3;
        }
        return String.format(f14696l, str, str2);
    }

    /* renamed from: G */
    public void m10662G(String str) {
        C4161y.m11054a(f14695k, "-- handleLog() --");
        m10659J(str);
        m10637v(7);
        m10639t(2, str);
    }

    /* renamed from: m */
    public boolean m10646m(String str, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.add(5, i * (-1));
        try {
            return m10636w(str).before(calendar.getTime());
        } catch (ParseException e) {
            C4161y.m11051d(f14695k, e.getMessage(), e);
            return false;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        String str = f14695k;
        C4161y.m11054a(str, "-- onCreate() --");
        C4161y.m11054a(str, "日志统计服务开启");
        MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_log_service_start), false);
        if (Build.VERSION.SDK_INT > 9) {
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        registerReceiver(this.f14705i, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("MONITOR_LOG_SIZE");
        intentFilter2.addAction("android.intent.action.TIME_SET");
        registerReceiver(this.f14706j, intentFilter2);
        this.f14703g = PendingIntent.getBroadcast(this, 0, new Intent("MONITOR_LOG_SIZE"), 0);
        AlarmManager alarmManager = (AlarmManager) getSystemService("alarm");
        this.f14704h = alarmManager;
        alarmManager.setRepeating(0, System.currentTimeMillis(), 60000L, this.f14703g);
        this.f14702f = ((PowerManager) getApplicationContext().getSystemService("power")).newWakeLock(1, str);
        new C4336d().start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        String str = f14695k;
        C4161y.m11054a(str, "-- onDestroy() --");
        C4161y.m11054a(str, "日志统计服务关闭");
        MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_log_service_close), false);
        Process process = this.f14701e;
        if (process != null) {
            process.destroy();
        }
        this.f14704h.cancel(this.f14703g);
        unregisterReceiver(this.f14705i);
        unregisterReceiver(this.f14706j);
    }

    /* renamed from: q */
    public boolean m10642q(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    /* renamed from: r */
    public void m10641r(String str) {
        String str2 = f14695k;
        C4161y.m11054a(str2, "-- createLogCollector() --");
        String m10633z = m10633z("V", str.replace(" ", "\\ "));
        C4161y.m11054a(str2, m10633z);
        ArrayList arrayList = new ArrayList();
        arrayList.add("sh");
        arrayList.add("-c");
        arrayList.add(m10633z);
        try {
            this.f14701e = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
        } catch (Exception e) {
            String str3 = f14695k;
            C4161y.m11051d(str3, "CollectorThread == >" + e.getMessage(), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.service.logCollect.LogService$f */
    /* loaded from: classes2.dex */
    public class C4338f extends Thread {

        /* renamed from: a */
        InputStream f14714a;

        /* renamed from: b */
        List<String> f14715b;

        C4338f(LogService logService, InputStream inputStream) {
            this.f14714a = inputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.f14714a));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        return;
                    }
                    List<String> list = this.f14715b;
                    if (list != null) {
                        list.add(readLine);
                    }
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        C4338f(LogService logService, InputStream inputStream, List<String> list) {
            this.f14714a = inputStream;
            this.f14715b = list;
        }
    }
}
