package com.xiaomi.player.callback;

import com.xiaomi.player.datastruct.VideoSize;

public interface PlayerCallback {
    void onAudioRenderingStart();

    void onOpenStreamFailed();

    void onPlayerPaused();

    void onPlayerResumed();

    void onPlayerStarted();

    void onPlayerStoped();

    void onSeekCompleted();

    void onStartBuffering();

    void onStartPlaying();

    void onStreamEOF();

    void onVideoRenderingStart();

    void onVideoSizeChanged(VideoSize videoSize);
}
