package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.os.Environment;
import android.os.SystemClock;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Observer;
import java.util.Timer;
import java.util.TimerTask;

public class AsyncMusicPlayer {
    private static final int COMPLETE = 3;
    private static final int INTERVAL_OF_UPDATING_PROGRESS = 500;
    private static final int PLAY = 1;
    private static final int STOP = 2;
    /* access modifiers changed from: private */
    public static final String TAG = AsyncMusicPlayer.class.getName();
    private Observer mAsyncPlayerObserver;
    /* access modifiers changed from: private */
    public LinkedList<Command> mCmdQueue = new LinkedList<>();
    /* access modifiers changed from: private */
    public Command mCurrentPlayCmd;
    /* access modifiers changed from: private */
    public MediaPlayer mPlayer;
    /* access modifiers changed from: private */
    public Object mPlayerLock;
    /* access modifiers changed from: private */
    public int mState = 2;
    /* access modifiers changed from: private */
    public String mTag;
    /* access modifiers changed from: private */
    public Thread mThread;
    private Timer mUpdateProgressTimer;

    public static class AttachmentUtils {
        public static File makeDirsIfNeeded(int i) {
            if (SDCardUtils.isSDCardBusy()) {
                return null;
            }
            File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "mivtalk");
            if (file.isDirectory() || file.mkdirs()) {
                IOUtils.hideFromMediaScanner(file);
            }
            if (MessageType.isImage(i)) {
                File file2 = new File(file, "images");
                if (!file2.isDirectory() && !file2.mkdirs()) {
                    return file2;
                }
                IOUtils.hideFromMediaScanner(file2);
                return file2;
            } else if (MessageType.isAudio(i)) {
                File file3 = new File(file, "audio");
                if (!file3.isDirectory() && !file3.mkdirs()) {
                    return file3;
                }
                IOUtils.hideFromMediaScanner(file3);
                return file3;
            } else if (MessageType.isVideo(i)) {
                File file4 = new File(file, "video");
                if (!file4.isDirectory() && !file4.mkdirs()) {
                    return file4;
                }
                IOUtils.hideFromMediaScanner(file4);
                return file4;
            } else if (i == 102) {
                File file5 = new File(file, "music");
                if (!file5.isDirectory() && !file5.mkdirs()) {
                    return file5;
                }
                IOUtils.hideFromMediaScanner(file5);
                return file5;
            } else {
                throw new IllegalArgumentException("hey, what are you passing in ? " + i);
            }
        }
    }

    private static final class Command {
        final int code;
        final Context context;
        final boolean looping;
        final PlayerObservable observable;
        final int stream;
        Uri uri;

        public Command(Context context2, int i, Uri uri2, Object obj) {
            this.context = context2;
            this.code = i;
            this.uri = uri2;
            this.observable = i == 1 ? new PlayerObservable() : null;
            this.looping = false;
            this.stream = 3;
        }

        public Command(Context context2, int i, Uri uri2) {
            this(context2, i, uri2, null);
        }

        public Command(int i) {
            this(null, i, null);
        }
    }

    private class OnComplementListenerAsync implements OnCompletionListener {
        private final Command mCommand;

        public OnComplementListenerAsync(Command command) {
            this.mCommand = command;
        }

        public void onCompletion(MediaPlayer mediaPlayer) {
            AsyncMusicPlayer.this.sendPlayStatusMessage(this.mCommand, 3);
            AsyncMusicPlayer.this.mState = 3;
            AsyncMusicPlayer.this.stopTimer();
        }
    }

    private class OnPlayError implements OnErrorListener {
        private final Command mCommand;

        public OnPlayError(Command command) {
            this.mCommand = command;
        }

        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            AsyncMusicPlayer.this.sendPlayStatusMessage(this.mCommand, 0);
            AsyncMusicPlayer.this.mState = 3;
            AsyncMusicPlayer.this.stopTimer();
            return true;
        }
    }

    private final class Thread extends Thread {
        Thread() {
            super(AsyncMusicPlayer.TAG + AsyncMusicPlayer.this.mTag);
        }

        public void run() {
            Command access$600;
            while (true) {
                synchronized (AsyncMusicPlayer.this.mCmdQueue) {
                    access$600 = AsyncMusicPlayer.this.popNextUsableCommand();
                }
                switch (access$600.code) {
                    case 1:
                        if (!AsyncMusicPlayer.this.startSound(access$600)) {
                            AsyncMusicPlayer.this.sendPlayStatusMessage(access$600, 0);
                            AsyncMusicPlayer.this.mCurrentPlayCmd = null;
                            break;
                        } else {
                            AsyncMusicPlayer.this.sendPlayStatusMessage(access$600, 2);
                            AsyncMusicPlayer.this.mCurrentPlayCmd = access$600;
                            AsyncMusicPlayer.this.startTimer(access$600.observable);
                            break;
                        }
                    case 2:
                        if (AsyncMusicPlayer.this.mPlayer == null) {
                            ClientLog.w(AsyncMusicPlayer.this.mTag, "STOP command without a player");
                            break;
                        } else {
                            AsyncMusicPlayer.this.stopTimer();
                            if (AsyncMusicPlayer.this.mCurrentPlayCmd != null) {
                                AsyncMusicPlayer.this.sendPlayStatusMessage(AsyncMusicPlayer.this.mCurrentPlayCmd, 3);
                                AsyncMusicPlayer.this.mCurrentPlayCmd = null;
                            }
                            synchronized (AsyncMusicPlayer.this.mPlayerLock) {
                                AsyncMusicPlayer.this.mPlayer.stop();
                                AsyncMusicPlayer.this.mPlayer.release();
                                AsyncMusicPlayer.this.mPlayer = null;
                            }
                            break;
                        }
                }
                synchronized (AsyncMusicPlayer.this.mCmdQueue) {
                    if (AsyncMusicPlayer.this.mCmdQueue.isEmpty()) {
                        AsyncMusicPlayer.this.mThread = null;
                        return;
                    }
                }
            }
            while (true) {
            }
        }
    }

    private class UpdateProgressTimerTask extends TimerTask {
        private final long LONGEST_BUFFERING_TIME_THRESHOLD = 3000;
        private int mLastPlayPosition;
        private long mLastPlayTime;
        private final PlayerObservable mObservable;

        public UpdateProgressTimerTask(PlayerObservable playerObservable) {
            this.mObservable = playerObservable;
            this.mLastPlayPosition = 0;
            this.mLastPlayTime = SystemClock.uptimeMillis();
        }

        private boolean isBuffering(int i) {
            if (this.mLastPlayPosition == i && SystemClock.uptimeMillis() - this.mLastPlayTime > 3000) {
                return true;
            }
            return false;
        }

        public void run() {
            if (AsyncMusicPlayer.this.mPlayer != null) {
                synchronized (AsyncMusicPlayer.this.mPlayerLock) {
                    if (AsyncMusicPlayer.this.mPlayer != null && AsyncMusicPlayer.this.mPlayer.isPlaying()) {
                        int duration = AsyncMusicPlayer.this.mPlayer.getDuration();
                        int currentPosition = AsyncMusicPlayer.this.mPlayer.getCurrentPosition();
                        if (isBuffering(currentPosition)) {
                            this.mObservable.notifyObservers(new PlayerStatus(5));
                        } else {
                            this.mObservable.notifyObservers(new PlayerStatus(4, duration, currentPosition));
                            this.mLastPlayPosition = currentPosition;
                            this.mLastPlayTime = SystemClock.uptimeMillis();
                        }
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean startSound(Command command) {
        try {
            sendPlayStatusMessage(command, 1);
            MediaPlayer mediaPlayer = new MediaPlayer();
            mediaPlayer.setAudioStreamType(command.stream);
            mediaPlayer.setDataSource(command.context, command.uri);
            mediaPlayer.setLooping(command.looping);
            mediaPlayer.setOnCompletionListener(new OnComplementListenerAsync(command));
            mediaPlayer.setOnErrorListener(new OnPlayError(command));
            mediaPlayer.prepare();
            mediaPlayer.start();
            synchronized (this.mPlayerLock) {
                if (this.mPlayer != null) {
                    this.mPlayer.release();
                }
                this.mPlayer = mediaPlayer;
            }
            return true;
        } catch (IOException e) {
            ClientLog.e(TAG, e.toString());
        } catch (IllegalStateException e2) {
            ClientLog.w(this.mTag, "IllegalStateException (content provider died?) " + command.uri, e2);
        }
        return false;
    }

    /* access modifiers changed from: private */
    public Command popNextUsableCommand() {
        Command command = (Command) this.mCmdQueue.removeFirst();
        if (command.code != 2 && !this.mCmdQueue.isEmpty()) {
            sendPlayStatusMessage(command, 3);
            command = (Command) this.mCmdQueue.removeLast();
            Iterator it = this.mCmdQueue.iterator();
            while (it.hasNext()) {
                Command command2 = (Command) it.next();
                if (command2.code == 1) {
                    sendPlayStatusMessage(command2, 3);
                }
            }
            this.mCmdQueue.clear();
        }
        return command;
    }

    /* access modifiers changed from: private */
    public void sendPlayStatusMessage(Command command, int i) {
        command.observable.notifyObservers(new PlayerStatus(i));
    }

    /* access modifiers changed from: private */
    public void startTimer(PlayerObservable playerObservable) {
        if (this.mUpdateProgressTimer == null) {
            this.mUpdateProgressTimer = new Timer();
            this.mUpdateProgressTimer.schedule(new UpdateProgressTimerTask(playerObservable), 0, 500);
        }
    }

    /* access modifiers changed from: private */
    public void stopTimer() {
        if (this.mUpdateProgressTimer != null) {
            this.mUpdateProgressTimer.cancel();
            this.mUpdateProgressTimer = null;
        }
    }

    public AsyncMusicPlayer(String str) {
        if (str != null) {
            this.mTag = str;
        } else {
            this.mTag = TAG;
        }
        this.mPlayerLock = new Object();
    }

    public void play(Context context, Uri uri, List<Observer> list) {
        Command command = new Command(context, 1, uri);
        PlayerObservable playerObservable = command.observable;
        if (list != null) {
            for (Observer addObserver : list) {
                playerObservable.addObserver(addObserver);
            }
        }
        playerObservable.notifyObservers(new PlayerStatus(1));
        synchronized (this.mCmdQueue) {
            enqueueLocked(command);
            this.mState = 1;
        }
    }

    public void play(Context context, Uri uri, Observer observer) {
        Command command = new Command(context, 1, uri);
        PlayerObservable playerObservable = command.observable;
        playerObservable.addObserver(observer);
        playerObservable.notifyObservers(new PlayerStatus(1));
        synchronized (this.mCmdQueue) {
            enqueueLocked(command);
            this.mState = 1;
        }
    }

    public void play(Context context, Uri uri) {
        Command command = new Command(context, 1, uri);
        PlayerObservable playerObservable = command.observable;
        playerObservable.addObserver(this.mAsyncPlayerObserver);
        playerObservable.notifyObservers(new PlayerStatus(1));
        synchronized (this.mCmdQueue) {
            enqueueLocked(command);
            this.mState = 1;
        }
    }

    public void setPlayerObserver(Observer observer) {
        this.mAsyncPlayerObserver = observer;
    }

    public void stop() {
        synchronized (this.mCmdQueue) {
            if (this.mState != 2) {
                enqueueLocked(new Command(2));
                this.mState = 2;
            }
        }
    }

    public boolean isPlaying() {
        return this.mState == 1;
    }

    private void enqueueLocked(Command command) {
        this.mCmdQueue.add(command);
        if (this.mThread == null) {
            this.mThread = new Thread();
            this.mThread.start();
        }
    }
}
