package com.ifengyu.intercom.lite.enums;

import com.uc.crashsdk.export.CrashStatKey;

/* loaded from: classes2.dex */
public enum LoginTypeEnum {
    PHONE(102, "手机号登录"),
    WECHAT(Integer.valueOf((int) CrashStatKey.LOG_UPLOAD_ENCRYPT_COUNT), "微信登录"),
    XIAOMI(202, "小米登录");
    

    /* renamed from: a  reason: collision with root package name */
    private Integer f5411a;

    /* renamed from: b  reason: collision with root package name */
    private String f5412b;

    LoginTypeEnum(Integer num, String str) {
        this.f5411a = num;
        this.f5412b = str;
    }

    public Integer a() {
        return this.f5411a;
    }
}
