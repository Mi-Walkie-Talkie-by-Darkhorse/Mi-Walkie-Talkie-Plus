package com.xiaomi.broadcaster.dataStruct;

import com.xiaomi.mipush.sdk.Constants;

public class VideoSize {
    public float video_height;
    public float video_width;

    public String toString() {
        return "video_height=" + this.video_height + Constants.ACCEPT_TIME_SEPARATOR_SP + "video_width=" + this.video_width;
    }
}
