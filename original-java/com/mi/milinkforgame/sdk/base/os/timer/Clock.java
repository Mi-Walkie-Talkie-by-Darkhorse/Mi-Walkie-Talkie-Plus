package com.mi.milinkforgame.sdk.base.os.timer;

import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;

public abstract class Clock {
    private int clockId = -1;
    private long interval = FileTracerConfig.DEF_FLUSH_INTERVAL;
    private OnClockListener listener;

    public abstract void cancel();

    protected Clock(int i, long j, OnClockListener onClockListener) {
        setClockId(i);
        setInterval(j);
        setListener(onClockListener);
    }

    public long getInterval() {
        return this.interval;
    }

    public void setInterval(long j) {
        this.interval = j;
    }

    public int getClockId() {
        return this.clockId;
    }

    private void setClockId(int i) {
        this.clockId = i;
    }

    public OnClockListener getListener() {
        return this.listener;
    }

    private void setListener(OnClockListener onClockListener) {
        this.listener = onClockListener;
    }
}
