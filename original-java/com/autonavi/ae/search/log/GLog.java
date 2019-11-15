package com.autonavi.ae.search.log;

import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Date;

public class GLog {
    public static String fileDir = "/mnt/sdcard/autonavi/";
    public static String filename = "offlineSearch_jar.txt";
    public static boolean isLogShow = false;
    public static boolean isWriteFile = false;

    public static boolean isLogShow() {
        return isLogShow;
    }

    public static void v(String str, String str2) {
        if (isLogShow) {
            Log.v(str, str2);
        }
        if (isWriteFile) {
            WriteFile(str, str2);
        }
    }

    public static void d(String str, String str2) {
        if (isLogShow) {
            Log.d(str, str2);
        }
        if (isWriteFile) {
            WriteFile(str, str2);
        }
    }

    public static void e(String str, String str2) {
        if (isLogShow) {
            Log.e(str, str2);
        }
        if (isWriteFile) {
            WriteFile(str, str2);
        }
    }

    public static void i(String str, String str2) {
        if (isLogShow) {
            Log.i(str, str2);
        }
        if (isWriteFile) {
            WriteFile(str, str2);
        }
    }

    private static void WriteFile(String str, String str2) {
        try {
            File file = new File(fileDir, filename);
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file, true);
            fileOutputStream.write((new Date(SystemClock.currentThreadTimeMillis()) + str + ":" + str2 + "\n").getBytes());
            fileOutputStream.close();
        } catch (Exception e) {
        }
    }
}
