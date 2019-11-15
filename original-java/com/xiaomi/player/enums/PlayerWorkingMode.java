package com.xiaomi.player.enums;

public enum PlayerWorkingMode {
    PlayerWorkingLipSyncMode(0),
    PlayerWorkingLowVideoDelayMode(1),
    PlayerWorkingVideoSmoothMode(2),
    PlayerWorkingDisableAudioDeviceMode(3);
    
    private int nCode;

    private PlayerWorkingMode(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static PlayerWorkingMode int2enum(int i) {
        PlayerWorkingMode playerWorkingMode = PlayerWorkingLipSyncMode;
        PlayerWorkingMode[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            PlayerWorkingMode playerWorkingMode2 = values[i2];
            if (playerWorkingMode2.ordinal() != i) {
                playerWorkingMode2 = playerWorkingMode;
            }
            i2++;
            playerWorkingMode = playerWorkingMode2;
        }
        return playerWorkingMode;
    }
}
