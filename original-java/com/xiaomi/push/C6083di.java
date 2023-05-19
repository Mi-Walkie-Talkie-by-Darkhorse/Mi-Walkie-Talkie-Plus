package com.xiaomi.push;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.mipush.sdk.Constants;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: com.xiaomi.push.di */
/* loaded from: classes2.dex */
public class C6083di implements LoggerInterface {

    /* renamed from: a */
    private static volatile C6083di f21265a;

    /* renamed from: a */
    private Context f21269a;

    /* renamed from: a */
    private Handler f21270a;

    /* renamed from: b */
    private String f21271b;

    /* renamed from: c */
    private String f21272c = "";

    /* renamed from: a */
    private static final SimpleDateFormat f21267a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");

    /* renamed from: a */
    public static String f21266a = "/MiPushLog";

    /* renamed from: a */
    private static List<Pair<String, Throwable>> f21268a = Collections.synchronizedList(new ArrayList());

    private C6083di(Context context) {
        this.f21269a = context;
        if (context.getApplicationContext() != null) {
            this.f21269a = context.getApplicationContext();
        }
        this.f21271b = this.f21269a.getPackageName() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + Process.myPid();
        HandlerThread handlerThread = new HandlerThread("Log2FileHandlerThread");
        handlerThread.start();
        this.f21270a = new Handler(handlerThread.getLooper());
    }

    /* renamed from: a */
    public static C6083di m3375a(Context context) {
        if (f21265a == null) {
            synchronized (C6083di.class) {
                if (f21265a == null) {
                    f21265a = new C6083di(context);
                }
            }
        }
        return f21265a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x016e -> B:109:0x0173). Please submit an issue!!! */
    /* renamed from: a */
    public void m3376a() {
        FileLock fileLock;
        RandomAccessFile randomAccessFile;
        File file;
        File externalFilesDir;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                if (TextUtils.isEmpty(this.f21272c) && (externalFilesDir = this.f21269a.getExternalFilesDir(null)) != null) {
                    this.f21272c = externalFilesDir.getAbsolutePath() + "";
                }
                file = new File(this.f21272c + f21266a);
            } catch (Exception e) {
                e = e;
                fileLock = null;
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                fileLock = null;
                randomAccessFile = null;
            }
        } catch (IOException e2) {
            Log.e(this.f21271b, "", e2);
        }
        if ((!file.exists() || !file.isDirectory()) && !file.mkdirs()) {
            Log.w(this.f21271b, "Create mipushlog directory fail.");
            return;
        }
        File file2 = new File(file, "log.lock");
        if (!file2.exists() || file2.isDirectory()) {
            file2.createNewFile();
        }
        randomAccessFile = new RandomAccessFile(file2, "rw");
        try {
            fileLock = randomAccessFile.getChannel().lock();
            try {
                try {
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(file, "log1.txt"), true)));
                    while (!f21268a.isEmpty()) {
                        try {
                            Pair<String, Throwable> remove = f21268a.remove(0);
                            String str = (String) remove.first;
                            if (remove.second != null) {
                                str = (str + "\n") + Log.getStackTraceString((Throwable) remove.second);
                            }
                            bufferedWriter2.write(str + "\n");
                        } catch (Exception e3) {
                            e = e3;
                            bufferedWriter = bufferedWriter2;
                            Log.e(this.f21271b, "", e);
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e4) {
                                    Log.e(this.f21271b, "", e4);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e5) {
                                    Log.e(this.f21271b, "", e5);
                                }
                            }
                            if (randomAccessFile != null) {
                                randomAccessFile.close();
                            }
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            bufferedWriter = bufferedWriter2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e6) {
                                    Log.e(this.f21271b, "", e6);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e7) {
                                    Log.e(this.f21271b, "", e7);
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException e8) {
                                    Log.e(this.f21271b, "", e8);
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    File file3 = new File(file, "log1.txt");
                    if (file3.length() >= 1048576) {
                        File file4 = new File(file, "log0.txt");
                        if (file4.exists() && file4.isFile()) {
                            file4.delete();
                        }
                        file3.renameTo(file4);
                    }
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e9) {
                            Log.e(this.f21271b, "", e9);
                        }
                    }
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Exception e10) {
                e = e10;
            }
        } catch (Exception e11) {
            e = e11;
            fileLock = null;
        } catch (Throwable th4) {
            th = th4;
            fileLock = null;
        }
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void log(String str) {
        log(str, null);
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void log(String str, Throwable th) {
        this.f21270a.post(new RunnableC6084dj(this, str, th));
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void setTag(String str) {
        this.f21271b = str;
    }
}
