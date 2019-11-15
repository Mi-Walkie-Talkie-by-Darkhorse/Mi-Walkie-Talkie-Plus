package com.xiaomi.channel.common.audio;

import android.content.Context;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Handler;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.client.ClientLog;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class AbstractXMAudioRecord {
    public static final int MAX_AUDIO_DURATION = 60000;
    public static final int MIN_AUDIO_DURATION = 1000;
    public static final int MIN_AUDIO_FILE_LEN = 1000;
    private static ArrayList<OnAudioRecordGlobalListener> sGlobalListeners = new ArrayList<>();
    /* access modifiers changed from: private */
    public final String TAG;
    /* access modifiers changed from: private */
    public boolean isRecordable;
    protected XMAudioRecorder mAudioRecorder;
    protected final Context mContext;
    private int mDuration;
    private Handler mHandler;
    /* access modifiers changed from: private */
    public String mPath;
    private RecordInitTask mRecordInitTask;
    private boolean mStartRecording;

    public interface OnAudioRecordGlobalListener {
        void onAudioRecordStopped();

        void onStartingAudioRecord();
    }

    class RecordInitTask extends AsyncTask<Void, Void, Boolean> {
        private volatile boolean isCancelled = false;
        /* access modifiers changed from: private */
        public boolean isInitialized = false;
        private final int mQuality;

        public RecordInitTask(int i) {
            this.mQuality = i;
        }

        /* access modifiers changed from: protected */
        public Boolean doInBackground(Void... voidArr) {
            if (this.isCancelled) {
                return Boolean.valueOf(false);
            }
            try {
                AbstractXMAudioRecord.this.initMediaRecorder(this.mQuality);
                if (!this.isCancelled) {
                    return Boolean.valueOf(true);
                }
                if (AbstractXMAudioRecord.this.mAudioRecorder != null) {
                    AbstractXMAudioRecord.this.mAudioRecorder.release();
                }
                return Boolean.valueOf(false);
            } catch (IllegalStateException e) {
                ClientLog.e(AbstractXMAudioRecord.this.TAG, e.toString());
                return Boolean.valueOf(false);
            } catch (RuntimeException e2) {
                ClientLog.e(AbstractXMAudioRecord.this.TAG, e2.toString());
                return Boolean.valueOf(false);
            }
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            if (this.isCancelled) {
                AbstractXMAudioRecord.this.onRecordInitializationCancelled();
                if (bool.booleanValue()) {
                    ClientLog.v(AbstractXMAudioRecord.this.TAG, "the record is initialized although the task is cancelled.");
                    if (AbstractXMAudioRecord.this.mAudioRecorder != null) {
                        AbstractXMAudioRecord.this.mAudioRecorder.release();
                        return;
                    }
                    return;
                }
                ClientLog.v(AbstractXMAudioRecord.this.TAG, "the record has been stopped. the task is status: " + getStatus());
            } else if (bool.booleanValue()) {
                ClientLog.v(AbstractXMAudioRecord.this.TAG, "begin to record..");
                this.isInitialized = true;
                AbstractXMAudioRecord.this.mAudioRecorder.start();
                AbstractXMAudioRecord.this.onRecordInitializationSucceed();
            } else {
                AbstractXMAudioRecord.this.onRecordInitializationFailed();
                if (!TextUtils.isEmpty(AbstractXMAudioRecord.this.mPath)) {
                    new File(AbstractXMAudioRecord.this.mPath).delete();
                }
            }
        }

        public boolean isInitialized() {
            return this.isInitialized;
        }

        public void cancelExecution() {
            this.isCancelled = true;
            cancel(true);
        }
    }

    public abstract void onEndingRecord();

    public abstract void onRecordFailed();

    public abstract void onRecordFinished();

    public abstract void onRecordInitializationCancelled();

    public abstract void onRecordInitializationFailed();

    public abstract void onRecordInitializationSucceed();

    public abstract void onRecordStart();

    public static synchronized void addGlobalListener(OnAudioRecordGlobalListener onAudioRecordGlobalListener) {
        synchronized (AbstractXMAudioRecord.class) {
            sGlobalListeners.add(onAudioRecordGlobalListener);
        }
    }

    public static synchronized void removeGlobalListener(OnAudioRecordGlobalListener onAudioRecordGlobalListener) {
        synchronized (AbstractXMAudioRecord.class) {
            sGlobalListeners.remove(onAudioRecordGlobalListener);
        }
    }

    private static synchronized void raiseStartingAudioRecordGlobalEvent() {
        synchronized (AbstractXMAudioRecord.class) {
            Iterator it = sGlobalListeners.iterator();
            while (it.hasNext()) {
                ((OnAudioRecordGlobalListener) it.next()).onStartingAudioRecord();
            }
        }
    }

    /* access modifiers changed from: private */
    public static synchronized void raiseAudioRecordStoppedGlobalEvent() {
        synchronized (AbstractXMAudioRecord.class) {
            Iterator it = sGlobalListeners.iterator();
            while (it.hasNext()) {
                ((OnAudioRecordGlobalListener) it.next()).onAudioRecordStopped();
            }
        }
    }

    public AbstractXMAudioRecord(Context context, Handler handler) {
        this(context, 60000, handler);
    }

    public AbstractXMAudioRecord(Context context, int i, Handler handler) {
        this.TAG = AbstractXMAudioRecord.class.getSimpleName();
        this.isRecordable = true;
        this.mContext = context;
        this.mDuration = i;
        this.mHandler = handler;
    }

    public void startRecord(String str) {
        startRecord(str, 8);
    }

    public void startRecord(String str, int i) {
        if (this.isRecordable) {
            raiseStartingAudioRecordGlobalEvent();
            this.mStartRecording = true;
            this.isRecordable = false;
            this.mPath = str;
            onRecordStart();
            this.mRecordInitTask = new RecordInitTask(i);
            this.mRecordInitTask.execute(new Void[0]);
        }
    }

    public void endRecord(final boolean z) {
        if (this.mStartRecording) {
            this.mStartRecording = false;
            onEndingRecord();
            if (this.mRecordInitTask.getStatus() != Status.FINISHED) {
                this.mRecordInitTask.cancelExecution();
            }
            if (!this.mRecordInitTask.isInitialized) {
                ClientLog.v(this.TAG, "the end recording is called, but actually is not properly initialized.");
                this.isRecordable = true;
                raiseAudioRecordStoppedGlobalEvent();
                return;
            }
            new AsyncTask<Void, Integer, Void>() {
                /* access modifiers changed from: protected */
                public void onPreExecute() {
                }

                /* access modifiers changed from: protected */
                public Void doInBackground(Void... voidArr) {
                    if (!z) {
                        try {
                            Thread.sleep(200);
                        } catch (InterruptedException e) {
                        }
                    }
                    if (AbstractXMAudioRecord.this.mAudioRecorder != null) {
                        AbstractXMAudioRecord.this.mAudioRecorder.stopRecord();
                    }
                    return null;
                }

                /* access modifiers changed from: protected */
                public void onPostExecute(Void voidR) {
                    AbstractXMAudioRecord.this.isRecordable = true;
                    if (z) {
                        AbstractXMAudioRecord.this.onRecordFailed();
                    } else {
                        AbstractXMAudioRecord.this.onRecordFinished();
                    }
                    AbstractXMAudioRecord.raiseAudioRecordStoppedGlobalEvent();
                }
            }.execute(new Void[0]);
        }
    }

    public String getAudioPath() {
        if (this.mAudioRecorder != null) {
            return this.mAudioRecorder.getAudioPath();
        }
        return null;
    }

    public synchronized void initMediaRecorder(int i) {
        if (this.mAudioRecorder != null) {
            this.mAudioRecorder.release();
            this.mAudioRecorder = null;
        }
        this.mAudioRecorder = new XMAudioRecorder(this.mContext, this.mPath, this.mHandler, (long) this.mDuration);
        this.mAudioRecorder.setQuality(i);
        this.mAudioRecorder.init();
    }

    public boolean isRecordable() {
        return this.isRecordable;
    }

    public boolean isRecording() {
        return this.mStartRecording;
    }

    public long getAudioLen() {
        if (this.mAudioRecorder == null) {
            return 0;
        }
        return this.mAudioRecorder.getRecordTime();
    }

    public int getPCMAmplitude() {
        return this.mAudioRecorder.getMaxAmplitude();
    }

    public void joinTheRecord() {
        if (this.mAudioRecorder != null) {
            this.mAudioRecorder.joinTheRecord();
        }
    }
}
