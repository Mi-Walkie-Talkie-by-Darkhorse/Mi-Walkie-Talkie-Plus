package com.mi.milinkforgame.sdk.debug;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Environment;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.debug.FileTracer;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.base.debug.LogcatTracer;
import com.mi.milinkforgame.sdk.base.debug.TraceLevel;
import com.mi.milinkforgame.sdk.base.os.Device.Storage;
import com.mi.milinkforgame.sdk.base.os.info.StorageInfo;
import com.mi.milinkforgame.sdk.data.Const.Debug;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.mi.milinkforgame.sdk.data.Option;
import com.mi.milinkforgame.sdk.util.CommonUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

public class MiLinkTracer implements OnSharedPreferenceChangeListener, TraceLevel {
    protected static final FileTracerConfig CLIENT_CONFIG;
    protected static final FileTracerConfig SERVICE_CONFIG;
    private static MiLinkTracer sInstance = null;
    private volatile boolean enabled = true;
    protected FileTracer fileTracer;
    private volatile boolean fileTracerEnabled = true;
    protected LogcatTracer logcatTracer;
    private volatile boolean logcatTracerEnabled = true;

    static {
        File logFilePath = getLogFilePath();
        CLIENT_CONFIG = new FileTracerConfig(logFilePath, Global.isDebug() ? Integer.MAX_VALUE : Option.getInt(Debug.ClientFileBlockCount, 72), 524288, 16384, Debug.ClientFileTracerName, IPC.LogoutAsyncTimeout, 10, Debug.ClientFileExt, Option.getLong(Debug.ClientFileKeepPeriod, Debug.DefFileKeepPeriod));
        SERVICE_CONFIG = new FileTracerConfig(logFilePath, Global.isDebug() ? Integer.MAX_VALUE : Option.getInt(Debug.FileBlockCount, 72), 524288, 16384, Debug.FileTracerName, IPC.LogoutAsyncTimeout, 10, Debug.FileExt, Option.getLong(Debug.FileKeepPeriod, Debug.DefFileKeepPeriod));
    }

    protected MiLinkTracer() {
        Option.startListen(this);
    }

    public static void setInstance(MiLinkTracer miLinkTracer) {
        sInstance = miLinkTracer;
    }

    public static void autoTrace(int i, String str, String str2, Throwable th) {
        if (sInstance != null) {
            sInstance.trace(i, str, str2, th);
        }
    }

    public static File getLogFilePath() {
        boolean z = false;
        String str = Debug.FileRoot + File.separator + Global.getClientAppInfo().getAppName() + File.separator + "logs" + File.separator + Global.getPackageName();
        StorageInfo externalInfo = Storage.getExternalInfo();
        if (externalInfo != null && externalInfo.getAvailableSize() > Debug.MinSpaceRequired) {
            z = true;
        }
        if (!z) {
            return getLogFileInternalPath();
        }
        if (!TextUtils.isEmpty(Global.getClientAppInfo().getLogPath())) {
            return new File(Environment.getExternalStorageDirectory(), Global.getClientAppInfo().getLogPath());
        }
        return new File(Environment.getExternalStorageDirectory(), str);
    }

    public static File getLogFileInternalPath() {
        String str = "logs" + File.separator;
        if (!TextUtils.isEmpty(Global.getClientAppInfo().getLogPath())) {
            return new File(Global.getFilesDir(), Global.getClientAppInfo().getLogPath());
        }
        return new File(Global.getFilesDir(), str);
    }

    public void stop() {
        if (this.fileTracer != null) {
            this.fileTracer.flush();
            this.fileTracer.quit();
        }
    }

    public void flush() {
        if (this.fileTracer != null) {
            this.fileTracer.flush();
        }
    }

    public void trace(int i, String str, String str2, Throwable th) {
        if (isEnabled()) {
            try {
                if (isFileTracerEnabled() && this.fileTracer != null) {
                    this.fileTracer.trace(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
                }
                if (isLogcatTracerEnabled()) {
                    String str3 = str + "(MiLinkSDK)(" + Global.getClientAppInfo().getAppName() + ")";
                    if (this.logcatTracer != null) {
                        this.logcatTracer.trace(i, Thread.currentThread(), System.currentTimeMillis(), str3, str2, th);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    public final void setEnabled(boolean z) {
        this.enabled = z;
    }

    public final boolean isEnabled() {
        return this.enabled;
    }

    public final void setFileTracerLevel(int i) {
        this.fileTracer.setTraceLevel(i);
    }

    public final void setFileTracerEnabled(boolean z) {
        this.fileTracer.flush();
        this.fileTracerEnabled = z;
    }

    public final boolean isFileTracerEnabled() {
        return this.fileTracerEnabled;
    }

    public final void setLogcatTracerEnabled(boolean z) {
        this.logcatTracerEnabled = z;
    }

    public final boolean isLogcatTracerEnabled() {
        return this.logcatTracerEnabled;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (Debug.FileTraceLevel.equals(str)) {
            int i = Option.getInt(Debug.FileTraceLevel, 63);
            trace(16, "MnsTracer", "File Trace Level Changed = " + i, null);
            this.fileTracer.setTraceLevel(i);
        } else if (Debug.ClientFileTraceLevel.equals(str)) {
            int i2 = Option.getInt(Debug.ClientFileTraceLevel, 63);
            trace(16, "MnsTracer", "Client File Trace Level Changed = " + i2, null);
            this.fileTracer.setTraceLevel(i2);
        } else if (Debug.LogcatTraceLevel.equals(str)) {
            int i3 = Option.getInt(Debug.LogcatTraceLevel, 63);
            trace(16, "MnsTracer", "Logcat Trace Level Changed = " + i3, null);
            this.logcatTracer.setTraceLevel(i3);
        } else if (Debug.ClientLogcatTraceLevel.equals(str)) {
            int i4 = Option.getInt(Debug.ClientLogcatTraceLevel, 63);
            trace(16, "MnsTracer", "Client Logcat Trace Level Changed = " + i4, null);
            this.logcatTracer.setTraceLevel(i4);
        }
    }

    public static BufferedReader getClientLogReader(int i) {
        File workFolder = CLIENT_CONFIG.getWorkFolder(System.currentTimeMillis());
        if (workFolder == null || !workFolder.isDirectory()) {
            return null;
        }
        File[] sortBlocksByIndex = CLIENT_CONFIG.sortBlocksByIndex(CLIENT_CONFIG.getAllBlocksInFolder(workFolder));
        if (i < 0 || i >= sortBlocksByIndex.length) {
            return null;
        }
        try {
            return new BufferedReader(new FileReader(sortBlocksByIndex[(sortBlocksByIndex.length - i) - 1]));
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    public static BufferedReader getMnsLogReader(int i) {
        BufferedReader bufferedReader;
        File[] allBlocksInFolder = SERVICE_CONFIG.getAllBlocksInFolder(SERVICE_CONFIG.getWorkFolder(System.currentTimeMillis()));
        if (allBlocksInFolder == null) {
            return null;
        }
        File[] sortBlocksByIndex = SERVICE_CONFIG.sortBlocksByIndex(allBlocksInFolder);
        if (i < 0 || i >= sortBlocksByIndex.length) {
            bufferedReader = null;
        } else {
            try {
                bufferedReader = new BufferedReader(new FileReader(sortBlocksByIndex[(sortBlocksByIndex.length - i) - 1]));
            } catch (FileNotFoundException e) {
                bufferedReader = null;
            }
        }
        return bufferedReader;
    }

    public static void cleanMnsLog() {
        File[] allBlocksInFolder = SERVICE_CONFIG.getAllBlocksInFolder(SERVICE_CONFIG.getWorkFolder(System.currentTimeMillis()));
        if (allBlocksInFolder != null) {
            for (File deleteFile : allBlocksInFolder) {
                deleteFile(deleteFile);
            }
        }
    }

    public static void cleanClientLog() {
        File[] allBlocksInFolder = CLIENT_CONFIG.getAllBlocksInFolder(CLIENT_CONFIG.getWorkFolder(System.currentTimeMillis()));
        if (allBlocksInFolder != null) {
            for (File deleteFile : allBlocksInFolder) {
                deleteFile(deleteFile);
            }
        }
    }

    public static File prepareReportLogFile(long j) {
        File[] fileArr;
        float f;
        int i = 1;
        if (j < 1) {
            j = System.currentTimeMillis();
        }
        FileTracerConfig fileTracerConfig = CLIENT_CONFIG;
        FileTracerConfig fileTracerConfig2 = SERVICE_CONFIG;
        File file = new File(getLogFilePath(), "report.log");
        if (file.exists()) {
            file.delete();
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
                return null;
            }
        }
        File workFolder = fileTracerConfig.getWorkFolder(j);
        File[] allBlocksInFolder = fileTracerConfig.getAllBlocksInFolder(workFolder);
        if (allBlocksInFolder != null) {
            allBlocksInFolder = fileTracerConfig.sortBlocksByIndex(allBlocksInFolder);
        }
        File[] allBlocksInFolder2 = fileTracerConfig2.getAllBlocksInFolder(workFolder);
        if (allBlocksInFolder2 != null) {
            fileArr = fileTracerConfig.sortBlocksByIndex(allBlocksInFolder2);
        } else {
            fileArr = allBlocksInFolder2;
        }
        float f2 = allBlocksInFolder != null ? (float) allBlocksInFolder.length : 0.0f;
        if (fileArr != null) {
            f = (float) fileArr.length;
        } else {
            f = 0.0f;
        }
        if (f2 + f <= 0.0f) {
            return file;
        }
        float f3 = f2 + f;
        int round = Math.round((f2 / f3) * 24.0f);
        int round2 = Math.round((f / f3) * 24.0f);
        if (round == 0 && allBlocksInFolder != null && allBlocksInFolder.length > 0) {
            round2--;
        } else if (round2 != 0 || fileArr == null || fileArr.length <= 0) {
            i = round;
        } else {
            i = round - 1;
            round2 = 1;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        if (allBlocksInFolder != null) {
            while (i > 0) {
                i--;
                if (arrayList.size() < allBlocksInFolder.length) {
                    arrayList.add(0, allBlocksInFolder[(allBlocksInFolder.length - arrayList.size()) - 1]);
                }
            }
        }
        if (fileArr != null) {
            while (round2 > 0) {
                round2--;
                if (arrayList2.size() < fileArr.length) {
                    arrayList2.add(0, fileArr[(fileArr.length - arrayList2.size()) - 1]);
                }
            }
        }
        mergeFiles(arrayList, file, "------client log block count:" + arrayList.size() + "------\n");
        mergeFiles(arrayList2, file, "\n------mns log block count:" + arrayList2.size() + "------\n");
        return file;
    }

    public static File prepareReportLogFile(long j, int i) {
        File[] fileArr;
        if (i < 0) {
            return prepareReportLogFile(j);
        }
        if (j < 1) {
            j = System.currentTimeMillis();
        }
        FileTracerConfig fileTracerConfig = CLIENT_CONFIG;
        FileTracerConfig fileTracerConfig2 = SERVICE_CONFIG;
        File file = new File(getLogFilePath(), "report.log");
        if (file.exists()) {
            file.delete();
        } else {
            try {
                file.createNewFile();
            } catch (IOException e) {
                return null;
            }
        }
        int i2 = 0;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        int i3 = 0;
        while (i2 < i) {
            int i4 = i3 + 1;
            if (i3 >= 7 || (!fileTracerConfig.isWorkFolderExists(j) && !fileTracerConfig2.isWorkFolderExists(j))) {
                break;
            }
            arrayList3.clear();
            arrayList4.clear();
            File workFolder = fileTracerConfig.getWorkFolder(j);
            File[] allBlocksInFolder = fileTracerConfig.getAllBlocksInFolder(workFolder);
            if (allBlocksInFolder != null) {
                allBlocksInFolder = fileTracerConfig.sortBlocksByIndex(allBlocksInFolder);
            }
            File[] allBlocksInFolder2 = fileTracerConfig2.getAllBlocksInFolder(workFolder);
            if (allBlocksInFolder2 != null) {
                fileArr = fileTracerConfig.sortBlocksByIndex(allBlocksInFolder2);
            } else {
                fileArr = allBlocksInFolder2;
            }
            float f = allBlocksInFolder != null ? (float) allBlocksInFolder.length : 0.0f;
            float f2 = fileArr != null ? (float) fileArr.length : 0.0f;
            if (f + f2 <= 0.0f) {
                i3 = i4;
            } else {
                float f3 = f + f2;
                int round = Math.round((f / f3) * 24.0f);
                int round2 = Math.round((f2 / f3) * 24.0f);
                if (round == 0 && allBlocksInFolder != null && allBlocksInFolder.length > 0) {
                    round = 1;
                    round2--;
                } else if (round2 == 0 && fileArr != null && fileArr.length > 0) {
                    round2 = 1;
                    round--;
                }
                if (allBlocksInFolder != null) {
                    while (round > 0) {
                        round--;
                        if (arrayList3.size() < allBlocksInFolder.length) {
                            File file2 = allBlocksInFolder[(allBlocksInFolder.length - arrayList3.size()) - 1];
                            arrayList3.add(0, file2);
                            i2 = (int) (((long) i2) + file2.length());
                        }
                    }
                }
                int i5 = i2;
                if (fileArr != null) {
                    while (round2 > 0) {
                        round2--;
                        if (arrayList4.size() < fileArr.length) {
                            File file3 = fileArr[(fileArr.length - arrayList4.size()) - 1];
                            arrayList4.add(0, file3);
                            i5 = (int) (((long) i5) + file3.length());
                        }
                    }
                }
                j -= 86400000;
                arrayList.addAll(arrayList3);
                arrayList2.addAll(arrayList4);
                i2 = i5;
                i3 = i4;
            }
        }
        if (arrayList.size() == 0 && arrayList2.size() == 0) {
            return null;
        }
        mergeFiles(arrayList, file, "------client log block count:" + arrayList.size() + "------\n");
        mergeFiles(arrayList2, file, "\n------mns log block count:" + arrayList2.size() + "------\n");
        return file;
    }

    private static boolean mergeFiles(List<File> list, File file, String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        int i = 0;
        if (list == null || list.size() < 1 || file == null) {
            return false;
        }
        try {
            fileOutputStream2 = new FileOutputStream(file, true);
            try {
                if (!TextUtils.isEmpty(str)) {
                    fileOutputStream2.write(str.getBytes("UTF-8"));
                }
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = i;
                    if (i2 >= list.size()) {
                        return CommonUtils.closeDataObject(fileOutputStream2);
                    }
                    FileInputStream fileInputStream = new FileInputStream((File) list.get(i2));
                    while (true) {
                        int read = fileInputStream.read(bArr, 0, bArr.length);
                        if (read <= 0) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    }
                    fileInputStream.close();
                    i = i2 + 1;
                }
            } catch (FileNotFoundException e) {
                fileOutputStream = fileOutputStream2;
                return CommonUtils.closeDataObject(fileOutputStream);
            } catch (UnsupportedEncodingException e2) {
                return CommonUtils.closeDataObject(fileOutputStream2);
            } catch (IOException e3) {
                return CommonUtils.closeDataObject(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                CommonUtils.closeDataObject(fileOutputStream2);
                throw th;
            }
        } catch (FileNotFoundException e4) {
            fileOutputStream = null;
            return CommonUtils.closeDataObject(fileOutputStream);
        } catch (UnsupportedEncodingException e5) {
            fileOutputStream2 = null;
            return CommonUtils.closeDataObject(fileOutputStream2);
        } catch (IOException e6) {
            fileOutputStream2 = null;
            return CommonUtils.closeDataObject(fileOutputStream2);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream2 = null;
            CommonUtils.closeDataObject(fileOutputStream2);
            throw th;
        }
    }

    public static void deleteFile(File file) {
        if (file != null && file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            for (File deleteFile : file.listFiles()) {
                deleteFile(deleteFile);
            }
        }
    }
}
