package com.ifengyu.library.account;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class UserInfo implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public String f7179a;

    /* renamed from: b  reason: collision with root package name */
    public String f7180b;

    /* renamed from: c  reason: collision with root package name */
    public String f7181c;
    public String d;
    public int e;
    public String f;
    public String g;
    public String h;
    public long i;
    public int j;
    public int k;
    @LoginType
    public String l;

    /* loaded from: classes2.dex */
    public @interface LoginType {
    }

    public String toString() {
        return "UserInfo{userId='" + this.f7179a + "', nickname='" + this.f7180b + "', avatar='" + this.f7181c + "', phone='" + this.d + "', phone_isBound=" + this.e + ", email='" + this.f + "', gender='" + this.g + "', key='" + this.h + "', expires_in=" + this.i + ", is_first_login=" + this.j + ", sign_up_with_phone=" + this.k + ", loginType='" + this.l + "'}";
    }
}
