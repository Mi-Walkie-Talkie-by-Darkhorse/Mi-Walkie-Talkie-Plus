package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.util.Locale;

public class CommonUtils {
    static final String[] AUDIO_MODE_VOICE_CALL = {"MI NOTE Pro"};
    private static final String FILENAME_FORMAT = "%s_%d.%s";

    public static String getUniqueFileName(File file, String str) {
        File file2 = new File(file, str);
        if (!file2.exists()) {
            return file2.getAbsolutePath();
        }
        int lastIndexOf = str.lastIndexOf(46);
        String str2 = "";
        if (lastIndexOf > 0) {
            String substring = str.substring(0, lastIndexOf);
            str2 = str.substring(lastIndexOf + 1);
            str = substring;
        }
        int i = 1;
        while (true) {
            File file3 = new File(file, String.format(FILENAME_FORMAT, new Object[]{str, Integer.valueOf(i), str2}));
            if (!file3.exists()) {
                return file3.getAbsolutePath();
            }
            i++;
        }
    }

    public static int getAudioModeByModel() {
        for (String equals : AUDIO_MODE_VOICE_CALL) {
            if (equals.equals(Build.MODEL)) {
                return 0;
            }
        }
        return 3;
    }

    public static boolean isAudioVoiceCallDisabled() {
        return Build.MODEL.contains("ZTE");
    }

    public static boolean isChineseLocale(Context context) {
        return Locale.CHINA.toString().equalsIgnoreCase(Locale.getDefault().toString()) || Locale.CHINESE.toString().equalsIgnoreCase(Locale.getDefault().toString());
    }

    public static boolean shouldAvoidProximitySensor() {
        String[] strArr = {"moto"};
        for (String equals : new String[]{"MB525", "ME525", "ME525+", "ME722", "ME811", "MotoA953", "HS-U8", "HS-E910", "S8600", "EG900", "HS-EG900"}) {
            if (equals.equals(Build.MODEL)) {
                return true;
            }
        }
        if (Build.MODEL.startsWith("HS-")) {
            return true;
        }
        for (String equals2 : strArr) {
            if (equals2.equals(Build.BRAND)) {
                return true;
            }
        }
        return false;
    }
}
