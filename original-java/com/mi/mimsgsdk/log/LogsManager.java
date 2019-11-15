package com.mi.mimsgsdk.log;

import android.os.Environment;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.util.FileUtils;
import com.mi.mimsgsdk.exception.ExceptionWithCode;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public class LogsManager {
    public static final String LOG_ROOT_DIR = (SDCARD_PATH + "/Xiaomi/MiMsgSdk");
    private static final String SDCARD_PATH = Environment.getExternalStorageDirectory().getPath();
    private static final String TAG = "LogsManager";
    private static final String ZIP_DIR = (SDCARD_PATH + "/Xiaomi/logsZip");

    public static File getZipFile() throws IOException {
        File file = new File(ZIP_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file.getAbsolutePath(), "mimsgsdk_" + new SimpleDateFormat("yyyy_MM_dd").format(new Date()) + FileUtils.ZIP_FILE_EXT);
        ClientLog.d(TAG, "zip file path : " + file2.getAbsolutePath());
        if (!file2.exists()) {
            ClientLog.d(TAG, "zip file don't exist, create");
            file2.createNewFile();
        } else {
            ClientLog.d(TAG, "zip file exist, del old and create new one");
            file2.delete();
            file2.createNewFile();
        }
        return file2;
    }

    public static void clearZipFiles() {
        File file = new File(ZIP_DIR);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.exists()) {
                        ClientLog.d(TAG, "clearZipFiles delete : " + file2.getAbsolutePath());
                        file2.delete();
                    }
                }
            }
        }
    }

    @CheckResult
    @NonNull
    public static List<File> findLogDir(String str, int i) throws ExceptionWithCode {
        if (i < 1) {
            i = 1;
        }
        if (TextUtils.isEmpty(str)) {
            str = "";
        }
        String str2 = LOG_ROOT_DIR + File.separator + str;
        File file = new File(str2);
        if (!file.exists() || !file.isDirectory()) {
            ClientLog.d(TAG, "找不到日志文件目录 : " + file.getAbsolutePath());
            throw new ExceptionWithCode(1, "log dir:" + str2 + " not exist");
        }
        ArrayList arrayList = new ArrayList();
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new ExceptionWithCode(2, "no log file or dir in dst dir");
        }
        for (File file2 : listFiles) {
            if (file2 != null && file2.exists()) {
                arrayList.add(file2);
            }
        }
        if (arrayList.isEmpty()) {
            throw new ExceptionWithCode(2, "no log file in dst dir");
        } else if (arrayList.size() <= i) {
            return arrayList;
        } else {
            Collections.sort(arrayList, new Comparator<File>() {
                public int compare(File file, File file2) {
                    long lastModified = file.lastModified();
                    long lastModified2 = file2.lastModified();
                    if (lastModified < lastModified2) {
                        return -1;
                    }
                    return lastModified == lastModified2 ? 0 : 1;
                }
            });
            return arrayList.subList(0, i);
        }
    }

    @WorkerThread
    public static boolean doZipDir(@NonNull List<File> list, @Nullable List<String> list2, @NonNull File file) {
        ClientLog.d(TAG, "zip file path:" + file.getAbsolutePath());
        ArrayList<File> arrayList = new ArrayList<>();
        if (list2 != null) {
            for (String str : list2) {
                if (!TextUtils.isEmpty(str)) {
                    File file2 = new File(str);
                    if (file2.exists()) {
                        arrayList.add(file2);
                    }
                }
            }
        }
        arrayList.addAll(list);
        try {
            ZipOutputStream zipOutputStream = new ZipOutputStream(new FileOutputStream(file));
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(zipOutputStream);
            try {
                zipOutputStream.setComment("www.xiaomi.com");
                for (File file3 : arrayList) {
                    ClientLog.d(TAG, "doZipDir : " + file3.getAbsolutePath());
                    zip(zipOutputStream, file3, file3.getName(), bufferedOutputStream);
                }
                try {
                    return true;
                } catch (IOException e) {
                    ClientLog.e(TAG, "close stream failed", e);
                    return true;
                }
            } catch (IOException e2) {
                ClientLog.e(TAG, "Failed to zip log files", e2);
                try {
                } catch (IOException e3) {
                    ClientLog.e(TAG, "close stream failed", e3);
                }
                return false;
            } finally {
                try {
                    bufferedOutputStream.close();
                } catch (IOException e4) {
                    ClientLog.e(TAG, "close stream failed", e4);
                }
            }
        } catch (FileNotFoundException e5) {
            ClientLog.e(TAG, "file not found:" + file, e5);
            return false;
        }
    }

    private static void zip(@NonNull ZipOutputStream zipOutputStream, @NonNull File file, String str, @NonNull BufferedOutputStream bufferedOutputStream) throws IOException {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles.length == 0) {
                zipOutputStream.putNextEntry(new ZipEntry(str + "/"));
            }
            for (File file2 : listFiles) {
                zip(zipOutputStream, file2, str + "/" + file2.getName(), bufferedOutputStream);
            }
        } else if (file.isFile()) {
            zipOutputStream.putNextEntry(new ZipEntry(str));
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            while (true) {
                try {
                    int read = bufferedInputStream.read();
                    if (read != -1) {
                        bufferedOutputStream.write(read);
                    } else {
                        return;
                    }
                } finally {
                    bufferedInputStream.close();
                }
            }
        }
    }
}
