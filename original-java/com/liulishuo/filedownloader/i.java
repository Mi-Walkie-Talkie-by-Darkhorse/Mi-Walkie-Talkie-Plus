package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.e.d;

/* compiled from: FileDownloadListener */
public abstract class i {
    /* access modifiers changed from: protected */
    public abstract void completed(a aVar);

    /* access modifiers changed from: protected */
    public abstract void error(a aVar, Throwable th);

    /* access modifiers changed from: protected */
    public abstract void paused(a aVar, int i, int i2);

    /* access modifiers changed from: protected */
    public abstract void pending(a aVar, int i, int i2);

    /* access modifiers changed from: protected */
    public abstract void progress(a aVar, int i, int i2);

    /* access modifiers changed from: protected */
    public abstract void warn(a aVar);

    public i() {
    }

    public i(int i) {
        d.d(this, "not handle priority any more", new Object[0]);
    }

    /* access modifiers changed from: protected */
    public boolean isInvalid() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void started(a aVar) {
    }

    /* access modifiers changed from: protected */
    public void connected(a aVar, String str, boolean z, int i, int i2) {
    }

    /* access modifiers changed from: protected */
    public void blockComplete(a aVar) throws Throwable {
    }

    /* access modifiers changed from: protected */
    public void retry(a aVar, Throwable th, int i, int i2) {
    }
}
