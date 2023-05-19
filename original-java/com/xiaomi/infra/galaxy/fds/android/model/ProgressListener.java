package com.xiaomi.infra.galaxy.fds.android.model;

/* loaded from: classes2.dex */
public abstract class ProgressListener {
    public abstract void onProgress(long j, long j2);

    public long progressInterval() {
        return 500L;
    }
}
