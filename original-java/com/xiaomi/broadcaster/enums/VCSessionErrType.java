package com.xiaomi.broadcaster.enums;

public enum VCSessionErrType {
    kVCSessionErrTCPSockCreateFailed(0),
    kVCSessionErrTCPSockConnectFailed(1),
    kVCSessionErrTCPSockResetByRemote(2),
    kVCSessionErrTCPSockConnectTimeout(3),
    kVCSessionErrTCPSockWriteTimeout(4),
    kVCSessionErrDNSResolveFailed(5),
    kVCSessionErrRTMPBadName(6),
    kVCSessionErrRTMPInvalidHdr(7),
    kVCSessionErrRTMPConnectFailed(8),
    kVCSessionErrRTMPPublishFailed(9),
    kVCSessionErrRTMPConnectTimeout(10);
    
    private int nCode;

    private VCSessionErrType(int i) {
        this.nCode = i;
    }

    public String toString() {
        return String.valueOf(this.nCode);
    }

    public static VCSessionErrType int2enum(int i) {
        VCSessionErrType vCSessionErrType = kVCSessionErrTCPSockCreateFailed;
        VCSessionErrType[] values = values();
        int length = values.length;
        int i2 = 0;
        while (i2 < length) {
            VCSessionErrType vCSessionErrType2 = values[i2];
            if (vCSessionErrType2.ordinal() != i) {
                vCSessionErrType2 = vCSessionErrType;
            }
            i2++;
            vCSessionErrType = vCSessionErrType2;
        }
        return vCSessionErrType;
    }
}
