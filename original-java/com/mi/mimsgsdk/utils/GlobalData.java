package com.mi.mimsgsdk.utils;

import android.content.Context;
import android.graphics.Matrix;
import android.os.Handler;
import android.util.DisplayMetrics;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class GlobalData {
    public static final int ASYNC_EXECUTOR_LEVEL_IMAGEWORKER = 0;
    public static final int ASYNC_EXECUTOR_LEVEL_LOCAL_IO = 1;
    public static final int ASYNC_EXECUTOR_LEVEL_NETWORK = 2;
    public static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static int PB_REQUEST_ID = 1;
    private static int REQUEST_CODE_FIRST = 100000;
    public static volatile int currentBuddy;
    public static volatile long currentVuid;
    private static ThreadPoolExecutor[] executors = new ThreadPoolExecutor[1];
    public static Handler globalUIHandler;
    public static volatile int mAppId = 100000000;
    public static Context mContext;
    public static boolean needUpdateApp = false;
    private static boolean sIsDebuggable;
    private static Object sPBRidLock = new Object();
    private static Object sRequestCodeLock = new Object();
    public static float screenDensity = 0.0f;
    public static int screenHeight = 0;
    public static DisplayMetrics screenMatrix;
    public static float screenRate = 0.0f;
    public static Matrix screenRateMatrix;
    public static int screenWidth = 0;

    public static int getRequestCode() {
        int i;
        synchronized (sRequestCodeLock) {
            i = REQUEST_CODE_FIRST;
            REQUEST_CODE_FIRST = i + 1;
        }
        return i;
    }

    public static int getPBRid() {
        int i;
        synchronized (sPBRidLock) {
            i = PB_REQUEST_ID;
            PB_REQUEST_ID = i + 1;
        }
        return i;
    }

    public static Context app() {
        return mContext;
    }

    public static boolean isDebuggable() {
        return sIsDebuggable;
    }

    public static int getAppId() {
        return mAppId;
    }

    public static void initialize(Context context, int i) {
        sIsDebuggable = (context.getApplicationInfo().flags & 2) != 0;
        if (globalUIHandler == null) {
            globalUIHandler = new Handler();
        }
        mContext = context;
        mAppId = i;
        calculateScreenRate(context);
        executors[0] = new ThreadPoolExecutor(0, CPU_COUNT * 20, 30, TimeUnit.SECONDS, new SynchronousQueue(), new RejectedExecutionHandler() {
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        });
        executors[0].allowCoreThreadTimeOut(true);
    }

    private static void calculateScreenRate(Context context) {
        screenMatrix = context.getResources().getDisplayMetrics();
        screenWidth = screenMatrix.widthPixels;
        screenHeight = screenMatrix.heightPixels;
        screenRate = ((float) screenMatrix.densityDpi) / 240.0f;
        screenDensity = screenMatrix.density;
        screenRateMatrix = new Matrix();
        screenRateMatrix.setScale(screenRate, screenRate);
        if (screenWidth > screenHeight) {
            int i = screenHeight;
            screenHeight = screenWidth;
            screenWidth = i;
        }
    }

    public static int getImageWorkerTaskCount() {
        if (executors[0] != null) {
            return executors[0].getActiveCount();
        }
        return 0;
    }

    public static Executor getExecutorByLevel(int i) {
        if (i <= 0) {
            return executors[i];
        }
        throw new IllegalArgumentException("wrong level");
    }

    public static void execute(Runnable runnable, int i) {
        if (i < 1 || i > 2) {
            throw new IllegalArgumentException("wrong level");
        }
        executors[i].execute(runnable);
    }

    public static boolean isMsgBelongCurrentChatPage(int i, long j) {
        return i == currentBuddy && j == currentVuid;
    }
}
