package com.ifengyu.intercom.b;

import android.os.Environment;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* compiled from: CheckTestServerUtil */
public class j {
    private static final String a = (Environment.getExternalStorageDirectory() + File.separator + "Android" + File.separator + "tester");
    private static File b = new File(a);

    public static boolean a() {
        if (b.exists()) {
            return true;
        }
        return false;
    }

    public static String b() {
        String str = "https://api.ifengyu.com";
        if (b.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(b));
                String readLine = bufferedReader.readLine();
                if (readLine != null && readLine.length() > 0 && readLine.contains(";")) {
                    str = readLine.split(";")[0];
                }
                bufferedReader.close();
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        return str;
    }

    public static String c() {
        String str = "https://cms.ifengyu.com";
        if (b.exists()) {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(b));
                String readLine = bufferedReader.readLine();
                if (readLine != null && readLine.length() > 0 && readLine.contains(";")) {
                    str = readLine.split(";")[1];
                }
                bufferedReader.close();
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        return str;
    }
}
