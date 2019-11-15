package com.xiaomi.broadcaster.enums;

public enum VCNetworkQuality {
    VCNetworkQualityLow(0),
    VCNetworkQualityMedium(1),
    VCNetworkQualityHigh(2);
    
    private int nCode;

    private VCNetworkQuality(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }
}
