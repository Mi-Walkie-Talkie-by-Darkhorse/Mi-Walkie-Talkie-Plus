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

/* loaded from: classes2.dex */
public class di implements LoggerInterface {

    /* renamed from: a  reason: collision with root package name */
    private static volatile di f8847a;

    /* renamed from: a  reason: collision with other field name */
    private Context f213a;

    /* renamed from: a  reason: collision with other field name */
    private Handler f214a;

    /* renamed from: b  reason: collision with root package name */
    private String f8848b;

    /* renamed from: c  reason: collision with root package name */
    private String f8849c = "";

    /* renamed from: a  reason: collision with other field name */
    private static final SimpleDateFormat f211a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss aaa");

    /* renamed from: a  reason: collision with other field name */
    public static String f210a = "/MiPushLog";

    /* renamed from: a  reason: collision with other field name */
    private static List<Pair<String, Throwable>> f212a = Collections.synchronizedList(new ArrayList());

    private di(Context context) {
        this.f213a = context;
        if (context.getApplicationContext() != null) {
            this.f213a = context.getApplicationContext();
        }
        this.f8848b = this.f213a.getPackageName() + Constants.ACCEPT_TIME_SEPARATOR_SERVER + Process.myPid();
        HandlerThread handlerThread = new HandlerThread("Log2FileHandlerThread");
        handlerThread.start();
        this.f214a = new Handler(handlerThread.getLooper());
    }

    public static di a(Context context) {
        if (f8847a == null) {
            synchronized (di.class) {
                if (f8847a == null) {
                    f8847a = new di(context);
                }
            }
        }
        return f8847a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x017a -> B:98:0x017f). Please submit an issue!!! */
    public void a() {
        RandomAccessFile randomAccessFile;
        FileLock fileLock;
        Exception e;
        File file;
        File externalFilesDir;
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    if (TextUtils.isEmpty(this.f8849c) && (externalFilesDir = this.f213a.getExternalFilesDir(null)) != null) {
                        this.f8849c = externalFilesDir.getAbsolutePath() + "";
                    }
                    file = new File(this.f8849c + f210a);
                } catch (IOException e2) {
                    Log.e(this.f8848b, "", e2);
                }
            } catch (Exception e3) {
                e = e3;
                fileLock = null;
                randomAccessFile = null;
            } catch (Throwable th) {
                th = th;
                fileLock = null;
                randomAccessFile = null;
            }
            if ((!file.exists() || !file.isDirectory()) && !file.mkdirs()) {
                Log.w(this.f8848b, "Create mipushlog directory fail.");
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
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(file, "log1.txt"), true)));
                    while (!f212a.isEmpty()) {
                        try {
                            Pair<String, Throwable> remove = f212a.remove(0);
                            String str = (String) remove.first;
                            if (remove.second != null) {
                                str = (str + "\n") + Log.getStackTraceString((Throwable) remove.second);
                            }
                            bufferedWriter2.write(str + "\n");
                        } catch (Exception e4) {
                            e = e4;
                            bufferedWriter = bufferedWriter2;
                            Log.e(this.f8848b, "", e);
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException e5) {
                                    Log.e(this.f8848b, "", e5);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e6) {
                                    Log.e(this.f8848b, "", e6);
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
                                } catch (IOException e7) {
                                    Log.e(this.f8848b, "", e7);
                                }
                            }
                            if (fileLock != null && fileLock.isValid()) {
                                try {
                                    fileLock.release();
                                } catch (IOException e8) {
                                    Log.e(this.f8848b, "", e8);
                                }
                            }
                            if (randomAccessFile != null) {
                                try {
                                    randomAccessFile.close();
                                } catch (IOException e9) {
                                    Log.e(this.f8848b, "", e9);
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
                    if (0 != 0) {
                        try {
                            bufferedWriter.close();
                        } catch (IOException e10) {
                            Log.e(this.f8848b, "", e10);
                        }
                    }
                    if (fileLock != null && fileLock.isValid()) {
                        try {
                            fileLock.release();
                        } catch (IOException e11) {
                            Log.e(this.f8848b, "", e11);
                        }
                    }
                    randomAccessFile.close();
                } catch (Exception e12) {
                    e = e12;
                }
            } catch (Exception e13) {
                e = e13;
                fileLock = null;
            } catch (Throwable th3) {
                th = th3;
                fileLock = null;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void log(String str) {
        log(str, null);
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void log(String str, Throwable th) {
        this.f214a.post(new dj(this, str, th));
    }

    @Override // com.xiaomi.channel.commonutils.logger.LoggerInterface
    public final void setTag(String str) {
        this.f8848b = str;
    }
}
