package com.ifengyu.intercom.network;

import com.ifengyu.intercom.update.dolphin.UpdateManager;

/* loaded from: classes2.dex */
public interface OnDownloadListener {
    void a(String str);

    void a(String str, String str2);

    void b(UpdateManager.CHECK_CONDITION check_condition, boolean z);

    void h();
}
