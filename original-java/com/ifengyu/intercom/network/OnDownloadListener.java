package com.ifengyu.intercom.network;

import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;

public interface OnDownloadListener {
    void a();

    void a(CHECK_CONDITION check_condition, boolean z);

    void a(String str);

    void a(String str, String str2);
}
