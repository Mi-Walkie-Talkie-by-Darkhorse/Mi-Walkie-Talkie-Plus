package com.xiaomi.player.enums;

public enum PlayerPlaybackState {
    PlayerPlaybackStateIdle(0),
    PlayerPlaybackStatePlaying(1),
    PlayerPlaybackStatePaused(2),
    PlayerPlaybackStateResumed(3),
    PlayerPlaybackStateStarted(4),
    PlayerPlaybackStateStoped(5),
    PlayerPlaybackStateBuffering(6),
    PlayerPlaybackStateEnded(7);
    
    private int nCode;

    private PlayerPlaybackState(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static PlayerPlaybackState int2enum(int i) {
        PlayerPlaybackState playerPlaybackState = PlayerPlaybackStateIdle;
        PlayerPlaybackState[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            PlayerPlaybackState playerPlaybackState2 = values[i2];
            if (playerPlaybackState2.ordinal() != i) {
                playerPlaybackState2 = playerPlaybackState;
            }
            i2++;
            playerPlaybackState = playerPlaybackState2;
        }
        return playerPlaybackState;
    }
}
