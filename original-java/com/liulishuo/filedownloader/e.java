package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent.ConnectStatus;
import com.liulishuo.filedownloader.event.b;
import com.liulishuo.filedownloader.event.c;

/* compiled from: FileDownloadConnectListener */
public abstract class e extends c {
    private ConnectStatus a;

    public abstract void a();

    public abstract void b();

    public boolean a(b bVar) {
        if (bVar instanceof DownloadServiceConnectChangedEvent) {
            this.a = ((DownloadServiceConnectChangedEvent) bVar).a();
            if (this.a == ConnectStatus.connected) {
                a();
            } else {
                b();
            }
        }
        return false;
    }

    public ConnectStatus c() {
        return this.a;
    }
}
