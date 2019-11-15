package com.mi.milinkforgame.sdk.base;

import android.os.SystemClock;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.base.os.timer.Clock;
import com.mi.milinkforgame.sdk.base.os.timer.OnClockListener;
import com.mi.milinkforgame.sdk.base.os.timer.SimpleClock;
import com.mi.milinkforgame.sdk.data.Const.Extra;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.List;

public class RuntimeStateManager {
    private static final int POWERSAVE_TIMESPAN = 900000;
    public static final int RUNTIME_STATE_BACKGROUND = 1;
    private static final OnClockListener RUNTIME_STATE_CLOCK_LISTENER = new OnClockListener() {
        public boolean onClockArrived(Clock clock) {
            RuntimeStateManager.checkRuntimeState();
            return true;
        }
    };
    public static final int RUNTIME_STATE_FOREGROUND = 0;
    private static final List<RuntimeStateListener> RUNTIME_STATE_LISTENERS = new ArrayList();
    public static final int RUNTIME_STATE_POWERSAVING = 2;
    private static final String TAG = "RuntimeStateManager";
    private static volatile long sBackgroundBeginTime;
    private static int sLastState = 1;

    public interface RuntimeStateListener {
        void onRuntimeStateListener(int i, int i2);
    }

    static {
        sBackgroundBeginTime = 0;
        SimpleClock.set(FileTracerConfig.DEF_FLUSH_INTERVAL, FileTracerConfig.DEF_FLUSH_INTERVAL, RUNTIME_STATE_CLOCK_LISTENER);
        sBackgroundBeginTime = SystemClock.elapsedRealtime();
    }

    public static void addRuntimeStateListener(RuntimeStateListener runtimeStateListener) {
        synchronized (RUNTIME_STATE_LISTENERS) {
            RUNTIME_STATE_LISTENERS.add(runtimeStateListener);
        }
    }

    public static void removeRuntimeStateListener(RuntimeStateListener runtimeStateListener) {
        synchronized (RUNTIME_STATE_LISTENERS) {
            RUNTIME_STATE_LISTENERS.remove(runtimeStateListener);
        }
    }

    public static final boolean isForeground() {
        return sBackgroundBeginTime < 1;
    }

    public static final boolean isBackground() {
        return sBackgroundBeginTime > 0 && SystemClock.elapsedRealtime() - sBackgroundBeginTime < Extra.DefBackgroundTimespan;
    }

    public static final boolean isPowerSave() {
        return sBackgroundBeginTime > 0 && SystemClock.elapsedRealtime() - sBackgroundBeginTime >= Extra.DefBackgroundTimespan;
    }

    public static final boolean isBackgroundOrPowerSaving() {
        return sBackgroundBeginTime > 0;
    }

    public static int getRuntimeState() {
        if (isForeground()) {
            return 0;
        }
        if (isBackground()) {
            return 1;
        }
        return 2;
    }

    public static void setBackground(boolean z) {
        synchronized (RuntimeStateManager.class) {
            if (isBackgroundOrPowerSaving() != z) {
                sBackgroundBeginTime = z ? SystemClock.elapsedRealtime() : 0;
                checkRuntimeState();
            }
        }
    }

    public static void checkRuntimeState() {
        Object[] array;
        synchronized (RuntimeStateManager.class) {
            int runtimeState = getRuntimeState();
            if (runtimeState != sLastState) {
                MiLinkLog.w(TAG, "Runtime State Changed from " + sLastState + " → " + runtimeState);
                synchronized (RUNTIME_STATE_LISTENERS) {
                    array = RUNTIME_STATE_LISTENERS.toArray();
                }
                for (Object obj : array) {
                    ((RuntimeStateListener) obj).onRuntimeStateListener(sLastState, runtimeState);
                }
            }
            sLastState = runtimeState;
        }
    }
}
