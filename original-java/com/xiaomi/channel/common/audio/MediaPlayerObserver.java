package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import java.util.Observable;
import java.util.Observer;

public class MediaPlayerObserver implements Observer {
    private final Handler mHandler;

    public interface PlayStatusListener {
        void onPlayStatusChanged(PlayerStatus playerStatus);
    }

    public static MediaPlayerObserver createObserver(Context context, final PlayStatusListener playStatusListener) {
        return new MediaPlayerObserver(new Handler() {
            public void handleMessage(Message message) {
                Object obj = message.obj;
                if (obj instanceof PlayerStatus) {
                    playStatusListener.onPlayStatusChanged((PlayerStatus) obj);
                }
            }
        });
    }

    public MediaPlayerObserver(Handler handler) {
        this.mHandler = handler;
    }

    public void update(Observable observable, Object obj) {
        Message message = new Message();
        message.obj = obj;
        this.mHandler.sendMessage(message);
    }

    public Handler getHandler() {
        return this.mHandler;
    }
}
