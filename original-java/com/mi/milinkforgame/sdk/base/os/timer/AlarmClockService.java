package com.mi.milinkforgame.sdk.base.os.timer;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.SystemClock;
import com.mi.milinkforgame.sdk.base.Global;
import java.util.HashMap;

public class AlarmClockService {
    private static HashMap<String, AlarmClock> ALARM_CLOCK_MAP = new HashMap<>();

    public static boolean set(AlarmClock alarmClock) {
        try {
            AlarmManager alarmManager = (AlarmManager) Global.getSystemService("alarm");
            long elapsedRealtime = SystemClock.elapsedRealtime() + alarmClock.getInterval();
            PendingIntent broadcast = PendingIntent.getBroadcast(Global.getContext(), 0, new Intent(alarmClock.getNamePrefix()), 134217728);
            alarmClock.setPendingIntent(broadcast);
            alarmManager.set(2, elapsedRealtime, broadcast);
            synchronized (AlarmClockService.class) {
                ALARM_CLOCK_MAP.put(alarmClock.getNamePrefix(), alarmClock);
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static void cancel(AlarmClock alarmClock) {
        AlarmManager alarmManager = (AlarmManager) Global.getSystemService("alarm");
        if (alarmClock.getPendingIntent() != null) {
            alarmManager.cancel(alarmClock.getPendingIntent());
            alarmClock.setPendingIntent(null);
        }
        synchronized (AlarmClockService.class) {
            ALARM_CLOCK_MAP.remove(alarmClock.getNamePrefix());
        }
    }

    public static void cancelWhenArrived(AlarmClock alarmClock) {
        alarmClock.setPendingIntent(null);
        synchronized (AlarmClockService.class) {
            ALARM_CLOCK_MAP.remove(alarmClock.getNamePrefix());
        }
    }

    public static AlarmClock getClock(String str) {
        return (AlarmClock) ALARM_CLOCK_MAP.get(str);
    }
}
