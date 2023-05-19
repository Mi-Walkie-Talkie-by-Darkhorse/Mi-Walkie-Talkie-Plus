package com.ifengyu.intercom.device.lite.enums;

import com.p264uc.crashsdk.export.CrashStatKey;

/* loaded from: classes2.dex */
public enum LoginTypeEnum {
    PHONE(102, "手机号登录"),
    WECHAT(Integer.valueOf((int) CrashStatKey.LOG_UPLOAD_ENCRYPT_COUNT), "微信登录"),
    XIAOMI(202, "小米登录");
    

    /* renamed from: a */
    private Integer f12262a;

    LoginTypeEnum(Integer num, String str) {
        this.f12262a = num;
    }

    /* renamed from: a */
    public Integer m14024a() {
        return this.f12262a;
    }
}
