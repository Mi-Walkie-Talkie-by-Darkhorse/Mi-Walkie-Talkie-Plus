package com.mi.milinkforgame.sdk.session;

public interface OnDataSendListener {
    void onDataSendFailed(long j, int i, String str);

    void onDataSendProgress(long j, boolean z, byte[] bArr);

    void onDataSendSuccess(long j, int i, Object obj, boolean z);
}
