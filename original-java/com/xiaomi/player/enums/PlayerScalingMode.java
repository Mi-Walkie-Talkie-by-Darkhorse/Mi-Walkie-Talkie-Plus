package com.xiaomi.player.enums;

public enum PlayerScalingMode {
    PlayerScalingModeNone(0),
    PlayerScalingModeAspectFit(1),
    PlayerScalingModeAspectFill(2),
    PlayerScalingModeFill(3);
    
    private int nCode;

    private PlayerScalingMode(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static PlayerScalingMode int2enum(int i) {
        PlayerScalingMode playerScalingMode = PlayerScalingModeNone;
        PlayerScalingMode[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            PlayerScalingMode playerScalingMode2 = values[i2];
            if (playerScalingMode2.ordinal() != i) {
                playerScalingMode2 = playerScalingMode;
            }
            i2++;
            playerScalingMode = playerScalingMode2;
        }
        return playerScalingMode;
    }
}
