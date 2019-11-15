package com.mi.mimsgsdk.video;

public interface MiVideoCallback {
    void onError(int i, String str);

    void onPlayBegin(String str);

    void onPlayEnd(String str, boolean z);

    void onRecordCanceled();

    void onRecordFinished(VideoBody videoBody);

    void onRecordInitializationFailed();

    void onRecordInitializationSucceed();

    void onRecordInterrupted();

    void onRecordStart();

    void onWriteLog(String str);
}
