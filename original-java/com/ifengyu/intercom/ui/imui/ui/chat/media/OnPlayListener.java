package com.ifengyu.intercom.ui.imui.ui.chat.media;

public interface OnPlayListener {
    void onCompletion();

    void onError(String str);

    void onInterrupt();

    void onPlaying(long j);

    void onPrepared();
}
