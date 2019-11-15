package com.mi.milinkforgame.sdk.base.os.timer;

import android.app.PendingIntent;

public class AlarmClock extends Clock {
    private String namePrefix;
    private PendingIntent pendingIntent;

    public AlarmClock(String str, long j, OnClockListener onClockListener) {
        super(-1, j, onClockListener);
        setNamePrefix(str);
    }

    public void cancel() {
        AlarmClockService.cancel(this);
    }

    public PendingIntent getPendingIntent() {
        return this.pendingIntent;
    }

    public void setPendingIntent(PendingIntent pendingIntent2) {
        this.pendingIntent = pendingIntent2;
    }

    public String getNamePrefix() {
        return this.namePrefix;
    }

    public void setNamePrefix(String str) {
        this.namePrefix = str;
    }
}
