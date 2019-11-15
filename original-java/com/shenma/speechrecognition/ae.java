package com.shenma.speechrecognition;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.UUID;

class ae {
    final /* synthetic */ ShenmaRecognitionService a;

    ae(ShenmaRecognitionService shenmaRecognitionService) {
        this.a = shenmaRecognitionService;
    }

    private boolean d(UUID uuid) {
        aa.a("reqId:" + uuid + ", mUUID:" + this.a.a, new Object[0]);
        if (uuid != null && this.a.a != null && uuid.equals(this.a.a)) {
            return true;
        }
        aa.a("callback received on an obsolete request.", new Object[0]);
        return false;
    }

    public void a(UUID uuid) {
        aa.a("onBeginningOfSpeech get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.beginningOfSpeech();
            }
        } catch (RemoteException e) {
            aa.a(e, "onBeginningOfSpeech exception.", new Object[0]);
        }
    }

    public void a(UUID uuid, float f) {
        aa.a("onRmsChanged get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.rmsChanged(f);
            }
        } catch (RemoteException e) {
            aa.a(e, "onRmsChanged exception.", new Object[0]);
        }
    }

    public void a(UUID uuid, int i) {
        aa.a("onError get called error:%d", Integer.valueOf(i));
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.error(i);
                this.a.onStopListening(this.a.b);
            }
        } catch (RemoteException e) {
            aa.b("OnError exception.", new Object[0]);
        }
    }

    public void a(UUID uuid, Bundle bundle) {
        aa.a("onReadyForSpeech get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.readyForSpeech(bundle);
            }
        } catch (RemoteException e) {
            aa.a(e, "onReadyForSpeech exception.", new Object[0]);
        }
    }

    public void a(UUID uuid, byte[] bArr) {
        aa.a("onBufferReceived get called", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.bufferReceived(bArr);
            }
        } catch (RemoteException e) {
            aa.a(e, "onBufferReceived exception.", new Object[0]);
        }
    }

    public void b(UUID uuid) {
        aa.a("onEndOfSpeech get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.endOfSpeech();
            }
        } catch (RemoteException e) {
            aa.a(e, "onEndOfSpeech exception.", new Object[0]);
        }
    }

    public void b(UUID uuid, Bundle bundle) {
        aa.a("onResults get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.results(bundle);
            }
        } catch (RemoteException e) {
            aa.a(e, "onResults exception.", new Object[0]);
        }
    }

    public void c(UUID uuid) {
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
        } else if (d(uuid)) {
            this.a.onStopListening(this.a.b);
        }
    }

    public void c(UUID uuid, Bundle bundle) {
        aa.a("onPartialResults get called.", new Object[0]);
        if (this.a.b == null) {
            aa.a("callback is null.", new Object[0]);
            return;
        }
        try {
            if (d(uuid)) {
                this.a.b.partialResults(bundle);
            }
        } catch (RemoteException e) {
            aa.a(e, "onPartialResults exception.", new Object[0]);
        }
    }
}
