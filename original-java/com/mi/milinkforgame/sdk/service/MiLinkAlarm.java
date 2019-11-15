package com.mi.milinkforgame.sdk.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.os.timer.AlarmClock;
import com.mi.milinkforgame.sdk.base.os.timer.AlarmClockService;
import com.mi.milinkforgame.sdk.base.os.timer.Clock;
import com.mi.milinkforgame.sdk.base.os.timer.OnClockListener;
import com.mi.milinkforgame.sdk.base.os.timer.SimpleClock;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.util.ArrayList;
import java.util.List;

public class MiLinkAlarm {
    private static final OnClockListener FOREGROUND_ALARM_LISTENER = new OnClockListener() {
        public boolean onClockArrived(Clock clock) {
            MiLinkAlarm.notifyAlarmTime("FOREGROUND");
            return true;
        }
    };
    private static volatile long LAST_ALARM_TIME = System.currentTimeMillis();
    private static volatile long NEXT_INTERVAL = ConfigManager.getInstance().getHeartBeatInterval();
    private static final AlarmClock SYSTEM_ALARM = new AlarmClock("milink.heartbeat", ConfigManager.getInstance().getHeartBeatInterval(), new OnClockListener() {
        public boolean onClockArrived(Clock clock) {
            MiLinkAlarm.notifyAlarmTime("SYSTEM");
            return true;
        }
    });
    private static List<MiLinkAlarmListener> SYSTEM_ALARM_LISTENERS = new ArrayList();
    private static final String TAG = "MiLinkAlarm";

    public interface MiLinkAlarmListener {
        void onAlarmArrived();
    }

    /* access modifiers changed from: private */
    public static void notifyAlarmTime(String str) {
        MiLinkLog.v(TAG, "notifyAlarmTime sender=" + str);
        synchronized (MiLinkAlarm.class) {
            if (System.currentTimeMillis() - LAST_ALARM_TIME <= NEXT_INTERVAL) {
                MiLinkLog.v(TAG, "notifyAlarmTime Denied sender= " + str);
                return;
            }
            LAST_ALARM_TIME = System.currentTimeMillis();
            notifyListeners();
        }
    }

    public static void start() {
        stop();
        if (!AlarmClockService.set(SYSTEM_ALARM)) {
            MiLinkLog.v(TAG, "Heartbeat Alarm failed, use SimpleClock ");
            SimpleClock.set(30000, 30000, FOREGROUND_ALARM_LISTENER);
        }
        MiLinkLog.v(TAG, "Heartbeat Alarm enabled");
    }

    public static void stop() {
        ((AlarmManager) Global.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(Global.getContext(), 0, new Intent(SYSTEM_ALARM.getNamePrefix()), 134217728));
        SYSTEM_ALARM.cancel();
    }

    public static void setInterval(long j) {
        synchronized (MiLinkAlarm.class) {
            NEXT_INTERVAL = j;
        }
        SYSTEM_ALARM.setInterval(j);
    }

    private static void notifyListeners() {
        Object[] array;
        synchronized (SYSTEM_ALARM_LISTENERS) {
            array = SYSTEM_ALARM_LISTENERS.toArray();
        }
        for (Object obj : array) {
            ((MiLinkAlarmListener) obj).onAlarmArrived();
        }
    }

    public static void addListener(MiLinkAlarmListener miLinkAlarmListener) {
        synchronized (SYSTEM_ALARM_LISTENERS) {
            SYSTEM_ALARM_LISTENERS.add(miLinkAlarmListener);
        }
    }

    public static void removeListener(MiLinkAlarmListener miLinkAlarmListener) {
        synchronized (SYSTEM_ALARM_LISTENERS) {
            SYSTEM_ALARM_LISTENERS.remove(miLinkAlarmListener);
        }
    }
}
