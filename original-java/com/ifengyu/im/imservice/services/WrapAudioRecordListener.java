package com.ifengyu.im.imservice.services;

import com.mi.mimsgsdk.AudioRecordListener;
import java.lang.ref.WeakReference;

abstract class WrapAudioRecordListener implements AudioRecordListener {
    private WeakReference<AudioRecordListener> mWeakReference;

    /* access modifiers changed from: 0000 */
    public abstract void sendAudioMessageToTalkGroup(String str, long j);

    public void setAudioRecordListener(AudioRecordListener audioRecordListener) {
        if (audioRecordListener == null) {
            clear();
        } else if (this.mWeakReference == null || !audioRecordListener.equals(this.mWeakReference.get())) {
            this.mWeakReference = new WeakReference<>(audioRecordListener);
        }
    }

    private AudioRecordListener get() {
        if (this.mWeakReference != null) {
            return (AudioRecordListener) this.mWeakReference.get();
        }
        return null;
    }

    public void clear() {
        if (this.mWeakReference != null) {
            this.mWeakReference.clear();
            this.mWeakReference = null;
        }
    }

    public void onRecordInitializationFailed() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordInitializationFailed();
        }
    }

    public void onAudioCoderInitializationFailed() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordInitializationFailed();
        }
    }

    public void onRecordInitializationSucceed() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordInitializationSucceed();
        }
    }

    public void onRecordInitializationCancelled() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordInitializationCancelled();
        }
    }

    public void onRecordFailed() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordFailed();
        }
    }

    public void onRecordStart() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordStart();
        }
    }

    public void onRecordFinished(String str, long j) {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRecordFinished(str, j);
        } else {
            sendAudioMessageToTalkGroup(str, j);
        }
    }

    public void onEndingRecord() {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onEndingRecord();
        }
    }

    public void onPlayBegin(String str) {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onPlayBegin(str);
        }
    }

    public void onPlayEnd(String str, boolean z) {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onPlayEnd(str, z);
        }
    }

    public void onRmsChanged(int i) {
        AudioRecordListener audioRecordListener = get();
        if (audioRecordListener != null) {
            audioRecordListener.onRmsChanged(i);
        }
    }
}
