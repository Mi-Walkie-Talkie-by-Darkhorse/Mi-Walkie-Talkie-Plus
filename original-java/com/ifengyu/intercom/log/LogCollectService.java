package com.ifengyu.intercom.log;

import android.app.Service;
import android.content.Intent;
import android.os.Environment;
import android.os.IBinder;
import android.support.annotation.Nullable;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class LogCollectService extends Service {
    private static final String a = LogCollectService.class.getSimpleName();
    private SimpleDateFormat b = new SimpleDateFormat("MM-dd_HH:mm");
    private a c;

    class a extends Thread {
        private Process b;
        private BufferedReader c = null;
        private boolean d = true;
        private FileOutputStream e = null;

        public a() {
            super("LogCollectorThread");
        }

        public void a() {
            this.d = false;
        }

        public void run() {
            String a2 = LogCollectService.this.b(LogCollectService.this.a(new Date()));
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add("sh");
                arrayList.add("-c");
                arrayList.add("setprop log.tag.MiTalk VERBOSE");
                this.b = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add("sh");
                arrayList2.add("-c");
                arrayList2.add("logcat|grep MiTalk");
                this.b = Runtime.getRuntime().exec((String[]) arrayList2.toArray(new String[arrayList2.size()]));
                this.c = new BufferedReader(new InputStreamReader(this.b.getInputStream()), 1024);
                this.e = new FileOutputStream(a2);
                while (this.d) {
                    String readLine = this.c.readLine();
                    if (readLine == null || !this.d) {
                        break;
                    } else if (!(readLine.length() == 0 || this.e == null || !readLine.contains("MiTalk"))) {
                        this.e.write((readLine + "\n").getBytes());
                    }
                }
                if (this.b != null) {
                    this.b.destroy();
                    this.b = null;
                }
                if (this.c != null) {
                    try {
                        this.c.close();
                        this.c = null;
                    } catch (IOException e2) {
                        ThrowableExtension.printStackTrace(e2);
                    }
                }
                if (this.e != null) {
                    try {
                        this.e.close();
                    } catch (IOException e3) {
                        ThrowableExtension.printStackTrace(e3);
                    }
                    this.e = null;
                }
            } catch (Exception e4) {
                ThrowableExtension.printStackTrace(e4);
                if (this.b != null) {
                    this.b.destroy();
                    this.b = null;
                }
                if (this.c != null) {
                    try {
                        this.c.close();
                        this.c = null;
                    } catch (IOException e5) {
                        ThrowableExtension.printStackTrace(e5);
                    }
                }
                if (this.e != null) {
                    try {
                        this.e.close();
                    } catch (IOException e6) {
                        ThrowableExtension.printStackTrace(e6);
                    }
                    this.e = null;
                }
            } catch (Throwable th) {
                if (this.b != null) {
                    this.b.destroy();
                    this.b = null;
                }
                if (this.c != null) {
                    try {
                        this.c.close();
                        this.c = null;
                    } catch (IOException e7) {
                        ThrowableExtension.printStackTrace(e7);
                    }
                }
                if (this.e != null) {
                    try {
                        this.e.close();
                    } catch (IOException e8) {
                        ThrowableExtension.printStackTrace(e8);
                    }
                    this.e = null;
                }
                throw th;
            }
        }
    }

    public void onCreate() {
        super.onCreate();
        this.c = new a();
        this.c.start();
    }

    @Nullable
    public IBinder onBind(Intent intent) {
        return null;
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.c != null) {
            this.c.a();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add("sh");
        arrayList.add("-c");
        arrayList.add("setprop log.tag.MiTalk SUPPRESS");
        Process process = null;
        try {
            Process exec = Runtime.getRuntime().exec((String[]) arrayList.toArray(new String[arrayList.size()]));
            if (exec != null) {
                exec.destroy();
            }
        } catch (IOException e) {
            ThrowableExtension.printStackTrace(e);
            if (process != null) {
                process.destroy();
            }
        } catch (Throwable th) {
            if (process != null) {
                process.destroy();
            }
            throw th;
        }
    }

    /* access modifiers changed from: private */
    public String a(Date date) {
        return this.b.format(date) + FileTracerConfig.DEF_TRACE_FILEEXT;
    }

    /* access modifiers changed from: private */
    public String b(String str) {
        return a() + File.separator + str;
    }

    private String a() {
        if (b()) {
            String str = getExternalFilesDir(Environment.DIRECTORY_DOCUMENTS) + File.separator + "log";
            if (a(str)) {
                return str;
            }
        }
        return null;
    }

    public boolean a(String str) {
        File file = new File(str);
        return (file.exists() && file.isDirectory()) || file.mkdirs();
    }

    private boolean b() {
        return Environment.getExternalStorageState().equals("mounted");
    }
}
