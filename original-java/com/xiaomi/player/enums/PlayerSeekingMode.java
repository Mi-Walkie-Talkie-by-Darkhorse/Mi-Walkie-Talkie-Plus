package com.xiaomi.player.enums;

public enum PlayerSeekingMode {
    PlayerSeekingNormalMode(0),
    PlayerSeekingFastMode(1),
    PlayerSeekingPreciseMode(2);
    
    private int nCode;

    private PlayerSeekingMode(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static PlayerSeekingMode int2enum(int i) {
        PlayerSeekingMode playerSeekingMode = PlayerSeekingNormalMode;
        PlayerSeekingMode[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            PlayerSeekingMode playerSeekingMode2 = values[i2];
            if (playerSeekingMode2.ordinal() != i) {
                playerSeekingMode2 = playerSeekingMode;
            }
            i2++;
            playerSeekingMode = playerSeekingMode2;
        }
        return playerSeekingMode;
    }
}
