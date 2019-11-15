package com.xiaomi.channel.common.audio;

public class AudioCodec {
    public static final int AUDIO_FORMAT = 16;
    public static final int CHANNEL = 1;
    public static int DECODE_RESULT_FAILED = -1;
    public static int DECODE_RESULT_SUCCESS = 0;
    public static final int DEFAULT_QUALITY = 4;
    public static final int MIDDLE_LEVEL_QUALITY = 8;
    public static boolean sInitialized;
    private final int mQuality;

    public native int decode(String str, String str2);

    public native int encode(byte[] bArr, int i, boolean z);

    public native int nativeDelete();

    public native int prepare(String str, int i, int i2, int i3, int i4);

    static {
        sInitialized = false;
        try {
            System.loadLibrary("MLCodec");
            sInitialized = true;
        } catch (UnsatisfiedLinkError e) {
            sInitialized = false;
        }
    }

    public AudioCodec() {
        this(8);
    }

    public AudioCodec(int i) {
        if (i > 10 || i <= 0) {
            throw new IllegalArgumentException("the quality for the codec is invalid: " + i);
        }
        this.mQuality = i;
    }

    public int getQuality() {
        return this.mQuality;
    }
}
