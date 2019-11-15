package com.xiaomi.channel.common.audio;

public class MessageType {
    public static final int AUDIO = 3;
    public static final int AUDIO_SPX = 10;
    public static final int IMAGE = 2;
    public static final int IMAGE_GIF = 5;
    public static final int MUSIC = 102;
    public static final int OTHERS = 100;
    public static final int VIDEO = 4;
    public static final int WEIBO_SPX = 11;

    public static boolean isImage(int i) {
        return i == 2 || i == 5;
    }

    public static boolean isAudio(int i) {
        return i == 3;
    }

    public static boolean isVideo(int i) {
        return i == 4;
    }
}
