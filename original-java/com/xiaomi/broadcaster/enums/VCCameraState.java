package com.xiaomi.broadcaster.enums;

public enum VCCameraState {
    VCCameraStateFront(0),
    VCCameraStateBack(1);
    
    private int nCode;

    private VCCameraState(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }
}
