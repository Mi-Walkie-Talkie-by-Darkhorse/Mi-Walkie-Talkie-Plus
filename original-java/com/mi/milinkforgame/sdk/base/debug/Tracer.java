package com.mi.milinkforgame.sdk.base.debug;

public abstract class Tracer {
    private volatile boolean mEnabled;
    private TraceFormat mTraceFormat;
    private volatile int mTraceLevel;

    /* access modifiers changed from: protected */
    public abstract void doTrace(int i, Thread thread, long j, String str, String str2, Throwable th);

    /* access modifiers changed from: protected */
    public abstract void doTrace(String str);

    public Tracer() {
        this(63, true, TraceFormat.DEFAULT);
    }

    public Tracer(int i, boolean z, TraceFormat traceFormat) {
        this.mTraceLevel = 63;
        this.mEnabled = true;
        this.mTraceFormat = TraceFormat.DEFAULT;
        setTraceLevel(i);
        setEnabled(z);
        setTraceFormat(traceFormat);
    }

    public void trace(int i, Thread thread, long j, String str, String str2, Throwable th) {
        if (isEnabled() && Bit.has(this.mTraceLevel, i)) {
            try {
                doTrace(i, thread, j, str, str2, th);
            } catch (OutOfMemoryError e) {
            }
        }
    }

    public void trace(int i, String str) {
        if (isEnabled() && Bit.has(this.mTraceLevel, i)) {
            doTrace(str);
        }
    }

    public int getTraceLevel() {
        return this.mTraceLevel;
    }

    public void setTraceLevel(int i) {
        this.mTraceLevel = i;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public TraceFormat getTraceFormat() {
        return this.mTraceFormat;
    }

    public void setTraceFormat(TraceFormat traceFormat) {
        this.mTraceFormat = traceFormat;
    }
}
