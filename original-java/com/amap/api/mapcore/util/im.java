package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.amap.api.services.geocoder.GeocodeSearch;

/* compiled from: MapLocFilter */
public final class im {
    private static im c = null;
    int a = 0;
    long b = 0;
    private ij d = null;
    private long e = 0;
    private long f = 0;

    private im() {
    }

    public static synchronized im a() {
        im imVar;
        synchronized (im.class) {
            if (c == null) {
                c = new im();
            }
            imVar = c;
        }
        return imVar;
    }

    public static ij b(ij ijVar) {
        return ijVar;
    }

    public final ij a(ij ijVar) {
        if (jg.b() - this.b > 30000) {
            this.d = ijVar;
            this.b = jg.b();
            return this.d;
        }
        this.b = jg.b();
        if (!it.a(this.d) || !it.a(ijVar)) {
            this.e = jg.b();
            this.d = ijVar;
            return this.d;
        } else if (ijVar.getTime() == this.d.getTime() && ijVar.getAccuracy() < 300.0f) {
            return ijVar;
        } else {
            if (ijVar.getProvider().equalsIgnoreCase(GeocodeSearch.GPS)) {
                this.e = jg.b();
                this.d = ijVar;
                return this.d;
            } else if (ijVar.c() != this.d.c()) {
                this.e = jg.b();
                this.d = ijVar;
                return this.d;
            } else if (ijVar.getBuildingId().equals(this.d.getBuildingId()) || TextUtils.isEmpty(ijVar.getBuildingId())) {
                this.a = ijVar.getLocationType();
                float a2 = jg.a(new double[]{ijVar.getLatitude(), ijVar.getLongitude(), this.d.getLatitude(), this.d.getLongitude()});
                float accuracy = this.d.getAccuracy();
                float accuracy2 = ijVar.getAccuracy();
                float f2 = accuracy2 - accuracy;
                long b2 = jg.b();
                long j = b2 - this.e;
                if ((accuracy < 101.0f && accuracy2 > 299.0f) || (accuracy > 299.0f && accuracy2 > 299.0f)) {
                    if (this.f == 0) {
                        this.f = b2;
                    } else if (b2 - this.f > 30000) {
                        this.e = b2;
                        this.d = ijVar;
                        this.f = 0;
                        return this.d;
                    }
                    return this.d;
                } else if (accuracy2 >= 100.0f || accuracy <= 299.0f) {
                    if (accuracy2 <= 299.0f) {
                        this.f = 0;
                    }
                    if (a2 >= 10.0f || ((double) a2) <= 0.1d || accuracy2 <= 5.0f) {
                        if (f2 < 300.0f) {
                            this.e = jg.b();
                            this.d = ijVar;
                            return this.d;
                        } else if (j < 30000) {
                            return this.d;
                        } else {
                            this.e = jg.b();
                            this.d = ijVar;
                            return this.d;
                        }
                    } else if (f2 >= -300.0f) {
                        return this.d;
                    } else {
                        if (accuracy / accuracy2 < 2.0f) {
                            return this.d;
                        }
                        this.e = b2;
                        this.d = ijVar;
                        return this.d;
                    }
                } else {
                    this.e = b2;
                    this.d = ijVar;
                    this.f = 0;
                    return this.d;
                }
            } else {
                this.e = jg.b();
                this.d = ijVar;
                return this.d;
            }
        }
    }
}
