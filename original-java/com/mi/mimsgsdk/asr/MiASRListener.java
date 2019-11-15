package com.mi.mimsgsdk.asr;

import android.os.Bundle;

public interface MiASRListener {
    void onBeginOfSpeech();

    void onBufferReceived(BytesWrapper bytesWrapper);

    void onEndOfSpeech();

    void onError(int i);

    void onEvent(int i, Bundle bundle);

    void onPartialResults(Bundle bundle);

    void onReadyForSpeech(Bundle bundle);

    void onRecordFinished(String str, long j);

    void onResults(Bundle bundle);

    void onRmsChanged(float f);
}
