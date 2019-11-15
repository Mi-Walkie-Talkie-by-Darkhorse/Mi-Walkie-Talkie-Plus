package com.ifengyu.im.utils;

import android.os.Handler;
import com.ifengyu.library.base.BaseApp;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class IMSingleThreadExecutor {
    private static volatile IMSingleThreadExecutor instance;
    private Executor executor = Executors.newSingleThreadExecutor();
    /* access modifiers changed from: private */
    public Handler uiHandler = new Handler(BaseApp.l().getMainLooper());

    private class IMRunnable<T> implements Runnable {
        /* access modifiers changed from: private */
        public IMTask<T> task;

        public IMRunnable(IMTask<T> iMTask) {
            this.task = iMTask;
        }

        public void run() {
            final Object runInBackground = this.task.runInBackground();
            if (IMSingleThreadExecutor.this.uiHandler != null) {
                IMSingleThreadExecutor.this.uiHandler.post(new Runnable() {
                    public void run() {
                        IMRunnable.this.task.onCompleted(runInBackground);
                    }
                });
            }
        }
    }

    public interface IMTask<T> {
        void onCompleted(T t);

        T runInBackground();
    }

    private IMSingleThreadExecutor() {
    }

    public static IMSingleThreadExecutor getInstance() {
        if (instance == null) {
            synchronized (IMSingleThreadExecutor.class) {
                if (instance == null) {
                    instance = new IMSingleThreadExecutor();
                }
            }
        }
        return instance;
    }

    public <T> void execute(IMTask<T> iMTask) {
        if (this.executor != null) {
            this.executor.execute(new IMRunnable(iMTask));
        }
    }

    public void execute(Runnable runnable) {
        if (this.executor != null) {
            this.executor.execute(runnable);
        }
    }
}
