package com.mi.mimsgsdk;

public interface AudioRecordListener {
    void onAudioCoderInitializationFailed();

    void onEndingRecord();

    void onPlayBegin(String str);

    void onPlayEnd(String str, boolean z);

    void onRecordFailed();

    void onRecordFinished(String str, long j);

    void onRecordInitializationCancelled();

    void onRecordInitializationFailed();

    void onRecordInitializationSucceed();

    void onRecordStart();

    void onRmsChanged(int i);
}
