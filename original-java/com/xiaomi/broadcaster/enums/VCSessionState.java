package com.xiaomi.broadcaster.enums;

public enum VCSessionState {
    VCSessionStateNone(0),
    VCSessionStatePreviewStarted(1),
    VCSessionStateStarting(2),
    VCSessionStateStarted(3),
    VCSessionStateEnded(4),
    VCSessionStateError(5),
    VCSessionStateNeedReConnect(6);
    
    private int nCode;

    private VCSessionState(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static VCSessionState int2enum(int i) {
        VCSessionState vCSessionState = VCSessionStateNone;
        VCSessionState[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            VCSessionState vCSessionState2 = values[i2];
            if (vCSessionState2.ordinal() != i) {
                vCSessionState2 = vCSessionState;
            }
            i2++;
            vCSessionState = vCSessionState2;
        }
        return vCSessionState;
    }
}
