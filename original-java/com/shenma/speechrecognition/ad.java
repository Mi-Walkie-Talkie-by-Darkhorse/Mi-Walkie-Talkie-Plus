package com.shenma.speechrecognition;

import android.os.Bundle;
import android.speech.RecognitionListener;

class ad implements RecognitionListener {
    private final RecognitionListener a;
    private boolean b;

    public ad(RecognitionListener recognitionListener) {
        this.a = recognitionListener;
    }

    public void a() {
        this.b = false;
    }

    public void onBeginningOfSpeech() {
        if (!this.b) {
            this.a.onBeginningOfSpeech();
        }
    }

    public void onBufferReceived(byte[] bArr) {
        if (!this.b) {
            this.a.onBufferReceived(bArr);
        }
    }

    public void onEndOfSpeech() {
        if (!this.b) {
            this.a.onEndOfSpeech();
        }
    }

    public void onError(int i) {
        if (!this.b) {
            this.b = true;
            this.a.onError(i);
        }
    }

    public void onEvent(int i, Bundle bundle) {
        if (!this.b) {
            this.a.onEvent(i, bundle);
        }
    }

    public void onPartialResults(Bundle bundle) {
        if (!this.b) {
            this.a.onPartialResults(bundle);
        }
    }

    public void onReadyForSpeech(Bundle bundle) {
        this.b = false;
        this.a.onReadyForSpeech(bundle);
    }

    public void onResults(Bundle bundle) {
        if (!this.b) {
            this.b = true;
            this.a.onResults(bundle);
        }
    }

    public void onRmsChanged(float f) {
        if (!this.b) {
            if (f > 30.0f && f <= 36.0f) {
                f = (float) (((double) f) * 0.9d);
            } else if (f > 25.0f && f <= 30.0f) {
                f = (float) (((double) f) * 0.6d);
            } else if (f <= 25.0f) {
                f = (float) (((double) f) * 0.2d);
            }
            this.a.onRmsChanged(f);
        }
    }
}
