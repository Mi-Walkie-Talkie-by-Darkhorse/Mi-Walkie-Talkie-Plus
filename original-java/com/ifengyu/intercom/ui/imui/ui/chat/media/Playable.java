package com.ifengyu.intercom.ui.imui.ui.chat.media;

public interface Playable {
    long getDuration();

    String getPath();

    boolean isAudioEqual(Playable playable);
}
