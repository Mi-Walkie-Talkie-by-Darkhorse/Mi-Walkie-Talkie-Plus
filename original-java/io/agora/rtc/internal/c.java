package io.agora.rtc.internal;

import android.os.Build;
import android.os.Build.VERSION;
import java.io.File;
import java.io.FileFilter;

/* compiled from: DeviceUtils */
public class c {
    private static final String[] a = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final FileFilter b = new FileFilter() {
        public boolean accept(File file) {
            String name = file.getName();
            if (!name.startsWith("cpu")) {
                return false;
            }
            for (int i = 3; i < name.length(); i++) {
                if (!Character.isDigit(name.charAt(i))) {
                    return false;
                }
            }
            return true;
        }
    };

    public static String a() {
        String str = Build.MANUFACTURER + "/" + Build.MODEL + "/" + Build.PRODUCT + "/" + Build.DEVICE + "/" + VERSION.SDK_INT + "/" + System.getProperty("os.version");
        if (str != null) {
            return str.toLowerCase();
        }
        return str;
    }
}
