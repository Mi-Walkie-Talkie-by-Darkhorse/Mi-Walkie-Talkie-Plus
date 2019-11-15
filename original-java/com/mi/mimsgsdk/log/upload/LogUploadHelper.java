package com.mi.mimsgsdk.log.upload;

import android.os.Environment;
import android.support.annotation.AnyThread;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.upload.Attachment;
import com.mi.mimsgsdk.upload.AttachmentUtils;
import com.mi.mimsgsdk.upload.UploadCallBack;
import com.mi.mimsgsdk.upload.UploadFileLoader;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.Network;
import com.mi.mimsgsdk.utils.SDCardUtils;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipOutputStream;
import org.apache.http.Header;
import rx.a;
import rx.a.C0098a;
import rx.b.b;
import rx.e;

public class LogUploadHelper {
    private static final List<LogLocation> LOG_LOACTION_LISTS = new ArrayList();
    private static final String LOG_ROOT_DIR = (Environment.getExternalStorageDirectory() + "/Xiaomi/MiMsgSdk/logs/" + GlobalData.app().getPackageName());
    /* access modifiers changed from: private */
    public static final String TAG = LogUploadHelper.class.getSimpleName();
    private static final String TEMP_ZIP_FILE = (GlobalData.app().getExternalCacheDir() + "/mimsglog.zip");

    public interface Result {
        public static final int LOG_FILE_PAHT_NOT_EXIST = 3;
        public static final int LOG_FILE_SIZE_TOO_LARGE = 2;
        public static final int LOG_FILE_UPLOAD_FAILURE = 6;
        public static final int NOT_WIFI_NETWORK = 5;
        public static final int OK = 0;
        public static final int SD_CARD_BUSY = 1;
        public static final int UNKNOWN = -1;
        public static final int ZIPED_LOG_FILE_NOT_EXIST = 4;
    }

    static {
        LOG_LOACTION_LISTS.add(new LogLocation("/data/anr", null));
    }

    @AnyThread
    public static void uploadLog(final long j, @Nullable final b<Integer> bVar) {
        a.a((C0098a<T>) new C0098a<Integer>() {
            public void call(e<? super Integer> eVar) {
                eVar.onNext(Integer.valueOf(LogUploadHelper.zipLogFile(j)));
                eVar.onCompleted();
            }
        }).b(rx.e.e.b()).a(rx.a.b.a.a()).b((e<? super T>) new e<Integer>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                ClientLog.e(LogUploadHelper.TAG, "upload log files fail, exception:", th);
            }

            public void onNext(Integer num) {
                if (num.intValue() != 0) {
                    ClientLog.e(LogUploadHelper.TAG, "zip log files fail, error code:" + num);
                    if (bVar != null) {
                        bVar.call(num);
                        return;
                    }
                    return;
                }
                ClientLog.e(LogUploadHelper.TAG, "zip log files success");
                LogUploadHelper.uploadLogFile(bVar);
            }
        });
    }

    /* access modifiers changed from: private */
    @WorkerThread
    public static int zipLogFile(long j) {
        OutputStream outputStream;
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2;
        OutputStream outputStream2 = null;
        if (SDCardUtils.isSDCardBusy()) {
            return 1;
        }
        try {
            outputStream = new FileOutputStream(TEMP_ZIP_FILE, false);
            try {
                zipOutputStream = new ZipOutputStream(outputStream);
                try {
                    File file = new File(LOG_ROOT_DIR);
                    if (!file.exists() || !file.isDirectory()) {
                        IOUtils.closeQuietly((OutputStream) zipOutputStream);
                        IOUtils.closeQuietly(outputStream);
                        return 3;
                    }
                    IOUtils.zip(zipOutputStream, file, null, new FileFilter() {
                        public boolean accept(File file) {
                            return file.isFile() && (file.getName().endsWith(".txt") || file.getName().endsWith(FileTracerConfig.DEF_TRACE_FILEEXT));
                        }
                    });
                    for (LogLocation logLocation : LOG_LOACTION_LISTS) {
                        if (logLocation != null) {
                            File file2 = new File(logLocation.getRootDir());
                            if (file2.exists() && file2.isDirectory()) {
                                File[] listFiles = file2.listFiles();
                                if (listFiles != null) {
                                    for (File file3 : listFiles) {
                                        if (file3 != null && file3.exists() && (logLocation.getFileFilter() == null || logLocation.getFileFilter().accept(file3))) {
                                            IOUtils.zip(zipOutputStream, file3, file3.getName(), null);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    zipOutputStream.flush();
                    IOUtils.closeQuietly((OutputStream) zipOutputStream);
                    IOUtils.closeQuietly(outputStream);
                    File file4 = new File(TEMP_ZIP_FILE);
                    if (!file4.exists()) {
                        return 4;
                    }
                    ClientLog.v(TAG, "zip file generated");
                    if (!Network.isWIFIConnected(Global.getApplicationContext())) {
                        return 5;
                    }
                    if (j <= 0 || file4.length() <= j) {
                        return 0;
                    }
                    ClientLog.v(TAG, "zip file too large");
                    file4.delete();
                    return 2;
                } catch (IOException e) {
                    e = e;
                    zipOutputStream2 = zipOutputStream;
                    outputStream2 = outputStream;
                    try {
                        ClientLog.e(TAG, "", e);
                        IOUtils.closeQuietly((OutputStream) zipOutputStream2);
                        IOUtils.closeQuietly(outputStream2);
                        return -1;
                    } catch (Throwable th) {
                        th = th;
                        zipOutputStream = zipOutputStream2;
                        outputStream = outputStream2;
                        IOUtils.closeQuietly((OutputStream) zipOutputStream);
                        IOUtils.closeQuietly(outputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IOUtils.closeQuietly((OutputStream) zipOutputStream);
                    IOUtils.closeQuietly(outputStream);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                zipOutputStream2 = null;
                outputStream2 = outputStream;
                ClientLog.e(TAG, "", e);
                IOUtils.closeQuietly((OutputStream) zipOutputStream2);
                IOUtils.closeQuietly(outputStream2);
                return -1;
            } catch (Throwable th3) {
                th = th3;
                zipOutputStream = null;
                IOUtils.closeQuietly((OutputStream) zipOutputStream);
                IOUtils.closeQuietly(outputStream);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            zipOutputStream2 = null;
            ClientLog.e(TAG, "", e);
            IOUtils.closeQuietly((OutputStream) zipOutputStream2);
            IOUtils.closeQuietly(outputStream2);
            return -1;
        } catch (Throwable th4) {
            th = th4;
            zipOutputStream = null;
            outputStream = null;
            IOUtils.closeQuietly((OutputStream) zipOutputStream);
            IOUtils.closeQuietly(outputStream);
            throw th;
        }
    }

    /* access modifiers changed from: private */
    @AnyThread
    public static void uploadLogFile(@Nullable final b<Integer> bVar) {
        File file = new File(TEMP_ZIP_FILE);
        if (file.exists()) {
            final Attachment attachment = new Attachment();
            attachment.localPath = TEMP_ZIP_FILE;
            attachment.filename = file.getName();
            attachment.fileSize = file.length();
            attachment.attId = AttachmentUtils.generateAttachmentId();
            attachment.authType = 2;
            int lastIndexOf = attachment.localPath.lastIndexOf(".");
            String str = "";
            if (lastIndexOf > 0) {
                str = attachment.localPath.substring(lastIndexOf);
            }
            attachment.mimeType = "file/" + str;
            a.a((C0098a<T>) new C0098a<Boolean>() {
                public void call(e<? super Boolean> eVar) {
                    eVar.onNext(Boolean.valueOf(UploadFileLoader.getInstance().startUploadFile(GlobalData.app(), attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.w(LogUploadHelper.TAG, "upload log to server ok");
                            if (bVar != null) {
                                bVar.call(Integer.valueOf(0));
                            }
                        }

                        public void onTaskFailure(int i, com.ksyun.ks3.exception.a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(LogUploadHelper.TAG, "upload log to server fail", th);
                            if (bVar != null) {
                                bVar.call(Integer.valueOf(6));
                            }
                        }
                    }, attachment.authType)));
                    eVar.onCompleted();
                }
            }).b(rx.e.e.b()).b((e<? super T>) new e<Boolean>() {
                public void onCompleted() {
                    ClientLog.e(LogUploadHelper.TAG, "log download url:" + attachment.getUrl());
                }

                public void onError(Throwable th) {
                    ClientLog.e(LogUploadHelper.TAG, "upload ziped log file fail, exception:", th);
                }

                public void onNext(Boolean bool) {
                    ClientLog.e(LogUploadHelper.TAG, "start upload log " + (bool.booleanValue() ? "success" : "fail"));
                }
            });
        }
    }
}
