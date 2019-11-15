package android.support.v4.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.view.KeyEvent;
import android.view.KeyEvent.Callback;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import java.util.ArrayList;

@Deprecated
public class TransportMediator extends TransportController {
    @Deprecated
    public static final int FLAG_KEY_MEDIA_FAST_FORWARD = 64;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_NEXT = 128;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_PAUSE = 16;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_PLAY = 4;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_PLAY_PAUSE = 8;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_PREVIOUS = 1;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_REWIND = 2;
    @Deprecated
    public static final int FLAG_KEY_MEDIA_STOP = 32;
    @Deprecated
    public static final int KEYCODE_MEDIA_PAUSE = 127;
    @Deprecated
    public static final int KEYCODE_MEDIA_PLAY = 126;
    @Deprecated
    public static final int KEYCODE_MEDIA_RECORD = 130;
    final AudioManager mAudioManager;
    final TransportPerformer mCallbacks;
    final Context mContext;
    final TransportMediatorJellybeanMR2 mController;
    final Object mDispatcherState;
    final Callback mKeyEventCallback;
    final ArrayList<TransportStateListener> mListeners;
    final TransportMediatorCallback mTransportKeyCallback;
    final View mView;

    static boolean isMediaKey(int i) {
        switch (i) {
            case 79:
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
            case 126:
            case 127:
            case 130:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public TransportMediator(Activity activity, TransportPerformer transportPerformer) {
        this(activity, null, transportPerformer);
    }

    @Deprecated
    public TransportMediator(View view, TransportPerformer transportPerformer) {
        this(null, view, transportPerformer);
    }

    private TransportMediator(Activity activity, View view, TransportPerformer transportPerformer) {
        this.mListeners = new ArrayList<>();
        this.mTransportKeyCallback = new TransportMediatorCallback() {
            public void handleKey(KeyEvent keyEvent) {
                keyEvent.dispatch(TransportMediator.this.mKeyEventCallback);
            }

            public void handleAudioFocusChange(int i) {
                TransportMediator.this.mCallbacks.onAudioFocusChange(i);
            }

            public long getPlaybackPosition() {
                return TransportMediator.this.mCallbacks.onGetCurrentPosition();
            }

            public void playbackPositionUpdate(long j) {
                TransportMediator.this.mCallbacks.onSeekTo(j);
            }
        };
        this.mKeyEventCallback = new Callback() {
            public boolean onKeyDown(int i, KeyEvent keyEvent) {
                if (TransportMediator.isMediaKey(i)) {
                    return TransportMediator.this.mCallbacks.onMediaButtonDown(i, keyEvent);
                }
                return false;
            }

            public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
                return false;
            }

            public boolean onKeyUp(int i, KeyEvent keyEvent) {
                if (TransportMediator.isMediaKey(i)) {
                    return TransportMediator.this.mCallbacks.onMediaButtonUp(i, keyEvent);
                }
                return false;
            }

            public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
                return false;
            }
        };
        this.mContext = activity != 0 ? activity : view.getContext();
        this.mCallbacks = transportPerformer;
        this.mAudioManager = (AudioManager) this.mContext.getSystemService("audio");
        if (activity != 0) {
            view = activity.getWindow().getDecorView();
        }
        this.mView = view;
        this.mDispatcherState = this.mView.getKeyDispatcherState();
        if (VERSION.SDK_INT >= 18) {
            this.mController = new TransportMediatorJellybeanMR2(this.mContext, this.mAudioManager, this.mView, this.mTransportKeyCallback);
        } else {
            this.mController = null;
        }
    }

    @Deprecated
    public Object getRemoteControlClient() {
        if (this.mController != null) {
            return this.mController.getRemoteControlClient();
        }
        return null;
    }

    @Deprecated
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return keyEvent.dispatch(this.mKeyEventCallback, (DispatcherState) this.mDispatcherState, this);
    }

    @Deprecated
    public void registerStateListener(TransportStateListener transportStateListener) {
        this.mListeners.add(transportStateListener);
    }

    @Deprecated
    public void unregisterStateListener(TransportStateListener transportStateListener) {
        this.mListeners.remove(transportStateListener);
    }

    private TransportStateListener[] getListeners() {
        if (this.mListeners.size() <= 0) {
            return null;
        }
        TransportStateListener[] transportStateListenerArr = new TransportStateListener[this.mListeners.size()];
        this.mListeners.toArray(transportStateListenerArr);
        return transportStateListenerArr;
    }

    private void reportPlayingChanged() {
        TransportStateListener[] listeners = getListeners();
        if (listeners != null) {
            for (TransportStateListener onPlayingChanged : listeners) {
                onPlayingChanged.onPlayingChanged(this);
            }
        }
    }

    private void reportTransportControlsChanged() {
        TransportStateListener[] listeners = getListeners();
        if (listeners != null) {
            for (TransportStateListener onTransportControlsChanged : listeners) {
                onTransportControlsChanged.onTransportControlsChanged(this);
            }
        }
    }

    private void pushControllerState() {
        if (this.mController != null) {
            this.mController.refreshState(this.mCallbacks.onIsPlaying(), this.mCallbacks.onGetCurrentPosition(), this.mCallbacks.onGetTransportControlFlags());
        }
    }

    @Deprecated
    public void refreshState() {
        pushControllerState();
        reportPlayingChanged();
        reportTransportControlsChanged();
    }

    @Deprecated
    public void startPlaying() {
        if (this.mController != null) {
            this.mController.startPlaying();
        }
        this.mCallbacks.onStart();
        pushControllerState();
        reportPlayingChanged();
    }

    @Deprecated
    public void pausePlaying() {
        if (this.mController != null) {
            this.mController.pausePlaying();
        }
        this.mCallbacks.onPause();
        pushControllerState();
        reportPlayingChanged();
    }

    @Deprecated
    public void stopPlaying() {
        if (this.mController != null) {
            this.mController.stopPlaying();
        }
        this.mCallbacks.onStop();
        pushControllerState();
        reportPlayingChanged();
    }

    @Deprecated
    public long getDuration() {
        return this.mCallbacks.onGetDuration();
    }

    @Deprecated
    public long getCurrentPosition() {
        return this.mCallbacks.onGetCurrentPosition();
    }

    @Deprecated
    public void seekTo(long j) {
        this.mCallbacks.onSeekTo(j);
    }

    @Deprecated
    public boolean isPlaying() {
        return this.mCallbacks.onIsPlaying();
    }

    @Deprecated
    public int getBufferPercentage() {
        return this.mCallbacks.onGetBufferPercentage();
    }

    @Deprecated
    public int getTransportControlFlags() {
        return this.mCallbacks.onGetTransportControlFlags();
    }

    @Deprecated
    public void destroy() {
        this.mController.destroy();
    }
}
