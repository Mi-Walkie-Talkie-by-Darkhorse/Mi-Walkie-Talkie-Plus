package com.ifengyu.intercom.log;

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

    /* renamed from: c  reason: collision with root package name */
    private static final String f5802c = LogCollectService.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private SimpleDateFormat f5803a = new SimpleDateFormat("MM-dd_HH:mm");

    /* renamed from: b  reason: collision with root package name */
    private a f5804b;

    /* loaded from: classes2.dex */
    class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private Process f5805a;

        /* renamed from: b  reason: collision with root package name */
        private BufferedReader f5806b = null;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5807c = true;
        private FileOutputStream d = null;

        public a() {
            super("LogCollectorThread");
        }

        public void a() {
            this.f5807c = false;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            IOException e;
            FileOutputStream fileOutputStream;
            String readLine;
            String b2 = LogCollectService.this.b(LogCollectService.this.a(new Date()));
            try {
                try {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add("sh");
                    arrayList.add("-c");
                    arrayList.add("setprop log.tag.MiTalk VERBOSE");
                    this.f5805a = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add("sh");
                    arrayList2.add("-c");
                    arrayList2.add("logcat|grep MiTalk");
                    this.f5805a = Runtime.getRuntime().exec((String[]) arrayList2.toArray(new String[arrayList2.size()]));
                    this.f5806b = new BufferedReader(new InputStreamReader(this.f5805a.getInputStream()), 1024);
                    this.d = new FileOutputStream(b2);
                    while (this.f5807c && (readLine = this.f5806b.readLine()) != null && this.f5807c) {
                        if (!(readLine.length() == 0 || this.d == null || !readLine.contains("MiTalk"))) {
                            FileOutputStream fileOutputStream2 = this.d;
                            fileOutputStream2.write((readLine + "\n").getBytes());
                        }
                    }
                    Process process = this.f5805a;
                    if (process != null) {
                        process.destroy();
                        this.f5805a = null;
                    }
                    BufferedReader bufferedReader = this.f5806b;
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                            this.f5806b = null;
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    fileOutputStream = this.d;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    Process process2 = this.f5805a;
                    if (process2 != null) {
                        process2.destroy();
                        this.f5805a = null;
                    }
                    BufferedReader bufferedReader2 = this.f5806b;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                            this.f5806b = null;
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    FileOutputStream fileOutputStream3 = this.d;
                    if (fileOutputStream3 != null) {
                        try {
                            fileOutputStream3.close();
                        } catch (IOException e5) {
                            e = e5;
                            e.printStackTrace();
                            this.d = null;
                        }
                    } else {
                        return;
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e6) {
                        e = e6;
                        e.printStackTrace();
                        this.d = null;
                    }
                    this.d = null;
                }
            } catch (Throwable th) {
                Process process3 = this.f5805a;
                if (process3 != null) {
                    process3.destroy();
                    this.f5805a = null;
                }
                BufferedReader bufferedReader3 = this.f5806b;
                if (bufferedReader3 != null) {
                    try {
                        bufferedReader3.close();
                        this.f5806b = null;
                    } catch (IOException e7) {
                        e7.printStackTrace();
                    }
                }
                FileOutputStream fileOutputStream4 = this.d;
                if (fileOutputStream4 != null) {
                    try {
                        fileOutputStream4.close();
                    } catch (IOException e8) {
                        e8.printStackTrace();
                    }
                    this.d = null;
                }
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        return a() + File.separator + str;
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a aVar = new a();
        this.f5804b = aVar;
        aVar.start();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        a aVar = this.f5804b;
        if (aVar != null) {
            aVar.a();
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

    private boolean b() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(Date date) {
        return this.f5803a.format(date) + ".log";
    }

    private String a() {
        if (!b()) {
            return null;
        }
        String absolutePath = getExternalFilesDir("log").getAbsolutePath();
        if (a(absolutePath)) {
            return absolutePath;
        }
        return null;
    }

    public boolean a(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }
}
