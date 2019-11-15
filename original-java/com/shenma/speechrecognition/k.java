package com.shenma.speechrecognition;

import android.media.AudioRecord;
import android.os.Build;
import java.util.HashMap;
import java.util.UUID;

class k {
    private g a = g.STATE_INVALID;
    private final ae b;
    private n c;
    private z d;
    private AudioRecord e;
    private int f;
    private boolean g = false;
    private final HashMap h = new d(this);

    public k(ae aeVar) {
        this.b = aeVar;
    }

    private int d() {
        String upperCase = Build.MANUFACTURER.toUpperCase();
        if (this.h.containsKey(upperCase)) {
            return ((Integer) this.h.get(upperCase)).intValue();
        }
        return 1;
    }

    public boolean a() {
        if (this.a != g.STATE_INVALID) {
            return true;
        }
        int minBufferSize = AudioRecord.getMinBufferSize(16000, 16, 2);
        if (-2 == minBufferSize || -1 == minBufferSize) {
            aa.b("AudioRecord.getMinBufferSize error:%d", Integer.valueOf(minBufferSize));
            return false;
        }
        this.f = Math.max(minBufferSize, 256000);
        aa.a("minBufferSize:%d, mRecordBufferSize:%d", Integer.valueOf(minBufferSize), Integer.valueOf(this.f));
        int d2 = d();
        aa.a("AudioSource:%d", Integer.valueOf(d2));
        try {
            this.e = new AudioRecord(d2, 16000, 16, 2, this.f);
            aa.a("AudioRecord audioSource:%d, sampleRate:%d, channels:%d, audioEncoding:%d", Integer.valueOf(d2), Integer.valueOf(16000), Integer.valueOf(16), Integer.valueOf(2));
            if (this.e.getState() == 1) {
                this.a = g.STATE_IDLE;
            } else {
                aa.b("Initialize audio device error with state:%d", Integer.valueOf(this.e.getState()));
            }
        } catch (IllegalArgumentException e2) {
            aa.a(e2, "Initialize audio error", new Object[0]);
        }
        return this.a == g.STATE_IDLE;
    }

    public boolean a(UUID uuid, l lVar, v vVar) {
        if (this.a != g.STATE_IDLE) {
            aa.b("Recorder state error, can not normally open.", new Object[0]);
            return false;
        }
        try {
            this.g = lVar.k() != null && lVar.k().length() > 0;
            if (this.g) {
                this.d = new z(uuid, lVar, vVar, this.b);
                this.d.a();
            } else {
                this.c = new n(this.e, uuid, lVar, vVar, this.b);
                this.c.a();
            }
            this.a = g.STATE_BUSY;
        } catch (IllegalStateException e2) {
            aa.a(e2, "Start audio recording error", new Object[0]);
        }
        return this.a == g.STATE_BUSY;
    }

    public boolean b() {
        if (this.a != g.STATE_BUSY) {
            aa.b("Recorder state error, can not normally shut down.", new Object[0]);
            return false;
        }
        try {
            if (!this.g) {
                if (this.e != null) {
                    this.e.stop();
                }
                if (this.c != null) {
                    this.c.b();
                }
            } else if (this.d != null) {
                this.d.b();
            }
            this.a = g.STATE_IDLE;
        } catch (IllegalStateException e2) {
            aa.a(e2, "Stop audio recording error", new Object[0]);
        }
        return this.a == g.STATE_IDLE;
    }

    public boolean c() {
        if (this.a == g.STATE_INVALID) {
            aa.b("Recorder state error, can not normally release it.", new Object[0]);
            return false;
        }
        if (!this.g) {
            if (this.e != null) {
                this.e.release();
            }
            if (this.c != null) {
                this.c.c();
            }
        } else if (this.d != null) {
            this.d.c();
        }
        this.a = g.STATE_INVALID;
        return this.a == g.STATE_INVALID;
    }
}
