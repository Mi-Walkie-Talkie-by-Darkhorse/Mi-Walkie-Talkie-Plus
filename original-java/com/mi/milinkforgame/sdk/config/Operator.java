package com.mi.milinkforgame.sdk.config;

import com.mi.milinkforgame.sdk.base.os.info.ServiceProvider;

public enum Operator {
    UNKNOWN(0),
    CMCC(1),
    UNICOM(2),
    CMCT(3),
    WIFI(4);
    
    private byte _operatorCode;

    private Operator(byte b) {
        this._operatorCode = b;
    }

    public byte operatorCode() {
        return this._operatorCode;
    }

    public static byte getProviderCode(String str) {
        if (str.equalsIgnoreCase(ServiceProvider.CHINA_MOBILE.getName())) {
            return CMCC.operatorCode();
        }
        if (str.equalsIgnoreCase(ServiceProvider.CHINA_UNICOM.getName())) {
            return UNICOM.operatorCode();
        }
        if (str.equalsIgnoreCase(ServiceProvider.CHINA_TELECOM.getName())) {
            return CMCT.operatorCode();
        }
        return UNKNOWN.operatorCode();
    }

    /* access modifiers changed from: 0000 */
    public boolean equal(Operator operator) {
        return operatorCode() == operator.operatorCode();
    }
}
