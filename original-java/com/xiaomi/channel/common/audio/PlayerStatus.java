package com.xiaomi.channel.common.audio;

public class PlayerStatus {
    public static final int BUFFERING = 5;
    public static final int DOWNLOADING = 100;
    public static final int FAILED = 0;
    public static final int PAUSE = 6;
    public static final int PREPARE = 1;
    public static final int RESUME = 7;
    public static final int START = 2;
    public static final int STOP = 3;
    public static final int UPDATE = 4;
    public final int duration;
    public final int progress;
    public final int type;
    public final long uniqueId;

    public PlayerStatus(int i, int i2, int i3, long j) {
        this.type = i;
        this.duration = i2;
        this.progress = i3;
        this.uniqueId = j;
    }

    public PlayerStatus(int i, int i2, int i3) {
        this(i, i2, i3, 0);
    }

    public PlayerStatus(int i, long j) {
        this(i, 0, 0, j);
    }

    public PlayerStatus(int i) {
        this(i, 0, 0, 0);
    }

    public String toString() {
        return String.format("Plat Status, type = %1$s, duration = %2$s, progress = %3$s", new Object[]{Integer.valueOf(this.type), Integer.valueOf(this.duration), Integer.valueOf(this.progress)});
    }
}
