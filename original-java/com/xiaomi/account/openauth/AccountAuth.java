package com.xiaomi.account.openauth;

public interface AccountAuth {
    String getServiceToken();

    String getUserId();

    void invalideServiceToken();
}
