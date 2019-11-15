package com.shenma.speechrecognition;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.speech.RecognitionService;
import android.speech.RecognitionService.Callback;
import java.io.File;
import java.util.UUID;

public class ShenmaRecognitionService extends RecognitionService {
    /* access modifiers changed from: private */
    public UUID a;
    /* access modifiers changed from: private */
    public Callback b;
    private g c = g.STATE_INVALID;
    private k d;
    private ae e;
    private l f;
    private v g;

    private boolean a() {
        try {
            aa.a("so path[%s].", c.a);
            if (c.a == null || c.a.length() == 0) {
                System.loadLibrary("ShenmaSpeech3");
                return true;
            }
            System.load(c.a + File.separator + "lib" + "ShenmaSpeech" + 3 + ".so");
            return true;
        } catch (UnsatisfiedLinkError e2) {
            aa.a(e2, "so load failed[%s].", c.a);
            return false;
        } catch (Exception e3) {
            aa.a(e3, "so load failed[%s]. ", c.a);
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public void onCancel(Callback callback) {
        aa.a("Before cancel UUID:" + this.a + ", State:%s", this.c.name());
        if (this.c != g.STATE_INVALID) {
            if (this.d.c()) {
                this.c = g.STATE_IDLE;
            } else {
                aa.a("Calcel the recorder failed.", new Object[0]);
            }
            this.a = null;
        }
    }

    public void onCreate() {
        super.onCreate();
        aa.a("onCreate recognition service", new Object[0]);
        this.e = new ae(this);
        this.d = new k(this.e);
        af.a().a((Context) this);
        if (!a()) {
            aa.b("load lib error!", new Object[0]);
        } else {
            this.c = g.STATE_IDLE;
        }
    }

    public void onDestroy() {
        onCancel(null);
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public void onStartListening(Intent intent, Callback callback) {
        this.b = callback;
        this.a = UUID.randomUUID();
        aa.a("startListening UUID:" + this.a + ", State:%s", this.c.name());
        if (!this.d.a()) {
            aa.b("init audio recorder error!", new Object[0]);
            this.e.a(this.a, 9);
        } else if (this.c == g.STATE_INVALID) {
            aa.b("uninitialized.", new Object[0]);
            this.e.a(this.a, 3);
        } else if (this.c == g.STATE_BUSY) {
            aa.b("audio recorder busy!", new Object[0]);
            this.e.a(this.a, 8);
        } else if (!t.b(this)) {
            aa.b("network not connected!", new Object[0]);
            this.e.a(this.a, 2);
        } else {
            aa.a("startListening UUID:" + this.a, new Object[0]);
            this.e.a(this.a, (Bundle) null);
            this.f = (l) intent.getParcelableExtra("Config");
            this.g = (v) intent.getParcelableExtra("Property");
            this.g.b(t.a());
            this.g.a(t.a(getApplicationContext()));
            if (this.d.a(this.a, this.f, this.g)) {
                this.c = g.STATE_BUSY;
                return;
            }
            aa.b("audio recorder startup error!", new Object[0]);
            this.e.a(this.a, 3);
        }
    }

    /* access modifiers changed from: protected */
    public void onStopListening(Callback callback) {
        if (aa.a) {
            aa.a();
        }
        aa.a("Before stopListening UUID:" + this.a + ", State:%s", this.c.name());
        if (this.c != g.STATE_INVALID) {
            if (this.c == g.STATE_BUSY) {
                if (this.d.b()) {
                    this.c = g.STATE_IDLE;
                } else {
                    aa.a("Stop the recorder failed.", new Object[0]);
                }
            }
            aa.a("After stopListening UUID:" + this.a + ", State:%s", this.c.name());
        }
    }
}
