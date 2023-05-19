package com.ifengyu.intercom.service.logCollect;

import android.app.Service;
import android.content.Intent;
import android.os.Environment;
import android.os.IBinder;
import androidx.annotation.Nullable;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes2.dex */
public class LogCollectService extends Service {

    /* renamed from: a */
    private SimpleDateFormat f14688a = new SimpleDateFormat("yyyy-MM-dd");

    /* renamed from: b */
    private C4332a f14689b;

    /* renamed from: com.ifengyu.intercom.service.logCollect.LogCollectService$a */
    /* loaded from: classes2.dex */
    class C4332a extends Thread {

        /* renamed from: a */
        private Process f14690a;

        /* renamed from: b */
        private BufferedReader f14691b;

        /* renamed from: c */
        private boolean f14692c;

        /* renamed from: d */
        private FileOutputStream f14693d;

        public C4332a() {
            super("LogCollectorThread");
            this.f14691b = null;
            this.f14692c = true;
            this.f14693d = null;
        }

        /* renamed from: a */
        public void m10669a() {
            this.f14692c = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            FileOutputStream fileOutputStream;
            String readLine;
            String m10671f = LogCollectService.this.m10671f(LogCollectService.this.m10673d(new Date()));
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("sh");
                    arrayList.add("-c");
                    arrayList.add("setprop log.tag.MiTalk VERBOSE");
                    this.f14690a = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add("sh");
                    arrayList2.add("-c");
                    arrayList2.add("logcat|grep MiTalk");
                    this.f14690a = Runtime.getRuntime().exec((String[]) arrayList2.toArray(new String[arrayList2.size()]));
                    this.f14691b = new BufferedReader(new InputStreamReader(this.f14690a.getInputStream()), 1024);
                    this.f14693d = new FileOutputStream(m10671f);
                    while (this.f14692c && (readLine = this.f14691b.readLine()) != null && this.f14692c) {
                        if (readLine.length() != 0 && this.f14693d != null && readLine.contains("MiTalk")) {
                            FileOutputStream fileOutputStream2 = this.f14693d;
                            fileOutputStream2.write((readLine + "\n").getBytes());
                        }
                    }
                    Process process = this.f14690a;
                    if (process != null) {
                        process.destroy();
                        this.f14690a = null;
                    }
                    BufferedReader bufferedReader = this.f14691b;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                            this.f14691b = null;
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    fileOutputStream = this.f14693d;
                } catch (Throwable th) {
                    Process process2 = this.f14690a;
                    if (process2 != null) {
                        process2.destroy();
                        this.f14690a = null;
                    }
                    BufferedReader bufferedReader2 = this.f14691b;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                            this.f14691b = null;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    FileOutputStream fileOutputStream3 = this.f14693d;
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                        this.f14693d = null;
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
                Process process3 = this.f14690a;
                if (process3 != null) {
                    process3.destroy();
                    this.f14690a = null;
                }
                BufferedReader bufferedReader3 = this.f14691b;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                        this.f14691b = null;
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                FileOutputStream fileOutputStream4 = this.f14693d;
                if (fileOutputStream4 == null) {
                    return;
                }
                try {
                    fileOutputStream4.close();
                } catch (IOException e6) {
                    e = e6;
                    e.printStackTrace();
                    this.f14693d = null;
                }
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e7) {
                    e = e7;
                    e.printStackTrace();
                    this.f14693d = null;
                }
                this.f14693d = null;
            }
        }
    }

    /* renamed from: c */
    private boolean m10674c(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public String m10673d(Date date) {
        return this.f14688a.format(date) + ".log";
    }

    /* renamed from: e */
    private String m10672e() {
        if (m10670g()) {
            String absolutePath = getExternalFilesDir("log").getAbsolutePath();
            if (m10674c(absolutePath)) {
                return absolutePath;
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public String m10671f(String str) {
        return m10672e() + File.separator + str;
    }

    /* renamed from: g */
    private boolean m10670g() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        C4332a c4332a = new C4332a();
        this.f14689b = c4332a;
        c4332a.start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        C4332a c4332a = this.f14689b;
        if (c4332a != null) {
            c4332a.m10669a();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("sh");
        arrayList.add("-c");
        arrayList.add("setprop log.tag.MiTalk SUPPRESS");
        try {
            Process exec = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
            if (exec != null) {
                exec.destroy();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
