package com.mi.milinkforgame.sdk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.mi.milinkforgame.sdk.base.os.timer.AlarmClock;
import com.mi.milinkforgame.sdk.base.os.timer.AlarmClockService;
import com.mi.milinkforgame.sdk.base.os.timer.OnClockListener;

public class AlarmReceiver extends BroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (action != null && action.equals("milink.heartbeat")) {
                AlarmClock clock = AlarmClockService.getClock(action);
                if (clock != null) {
                    OnClockListener listener = clock.getListener();
                    if (listener == null) {
                        return;
                    }
                    if (listener.onClockArrived(clock)) {
                        AlarmClockService.set(clock);
                    } else {
                        AlarmClockService.cancelWhenArrived(clock);
                    }
                }
            }
        }
    }
}
