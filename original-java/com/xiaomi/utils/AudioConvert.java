package com.xiaomi.utils;

public class AudioConvert {
    public static native boolean convertAudioFileJni(String str, String str2);

    public static boolean convertAudioFile(String str, String str2) {
        return convertAudioFileJni(str, str2);
    }
}
