package com.amap.api.col.sl;

import android.text.TextUtils;
import com.amap.api.location.AMapLocation;
import com.amap.api.services.geocoder.GeocodeSearch;

/* compiled from: LocFilter */
public final class eu {
    ev a = null;
    long b = 0;
    long c = 0;
    int d = 0;
    long e = 0;
    AMapLocation f = null;
    long g = 0;
    private boolean h = true;

    public final void a() {
        this.a = null;
        this.b = 0;
        this.c = 0;
        this.f = null;
        this.g = 0;
    }

    public final ev a(ev evVar) {
        if (fy.b() - this.e > 30000) {
            this.a = evVar;
            this.e = fy.b();
            return this.a;
        }
        this.e = fy.b();
        if (!fy.a(this.a) || !fy.a(evVar)) {
            this.b = fy.b();
            this.a = evVar;
            return this.a;
        } else if (evVar.getTime() == this.a.getTime() && evVar.getAccuracy() < 300.0f) {
            return evVar;
        } else {
            if (evVar.getProvider().equals(GeocodeSearch.GPS)) {
                this.b = fy.b();
                this.a = evVar;
                return this.a;
            } else if (evVar.c() != this.a.c()) {
                this.b = fy.b();
                this.a = evVar;
                return this.a;
            } else if (evVar.getBuildingId().equals(this.a.getBuildingId()) || TextUtils.isEmpty(evVar.getBuildingId())) {
                this.d = evVar.getLocationType();
                float a2 = fy.a((AMapLocation) evVar, (AMapLocation) this.a);
                float accuracy = this.a.getAccuracy();
                float accuracy2 = evVar.getAccuracy();
                float f2 = accuracy2 - accuracy;
                long b2 = fy.b();
                long j = b2 - this.b;
                if ((accuracy < 101.0f && accuracy2 > 299.0f) || (accuracy > 299.0f && accuracy2 > 299.0f)) {
                    if (this.c == 0) {
                        this.c = b2;
                    } else if (b2 - this.c > 30000) {
                        this.b = b2;
                        this.a = evVar;
                        this.c = 0;
                        return this.a;
                    }
                    this.a = b(this.a);
                    return this.a;
                } else if (accuracy2 >= 100.0f || accuracy <= 299.0f) {
                    if (accuracy2 <= 299.0f) {
                        this.c = 0;
                    }
                    if (a2 >= 10.0f || ((double) a2) <= 0.1d || accuracy2 <= 5.0f) {
                        if (f2 < 300.0f) {
                            this.b = fy.b();
                            this.a = evVar;
                            return this.a;
                        } else if (j >= 30000) {
                            this.b = fy.b();
                            this.a = evVar;
                            return this.a;
                        } else {
                            this.a = b(this.a);
                            return this.a;
                        }
                    } else if (f2 >= -300.0f) {
                        this.a = b(this.a);
                        return this.a;
                    } else if (accuracy / accuracy2 >= 2.0f) {
                        this.b = b2;
                        this.a = evVar;
                        return this.a;
                    } else {
                        this.a = b(this.a);
                        return this.a;
                    }
                } else {
                    this.b = b2;
                    this.a = evVar;
                    this.c = 0;
                    return this.a;
                }
            } else {
                this.b = fy.b();
                this.a = evVar;
                return this.a;
            }
        }
    }

    private ev b(ev evVar) {
        if (fy.a(evVar)) {
            if (!this.h || !fp.b(evVar.getTime())) {
                evVar.setLocationType(this.d);
            } else if (evVar.getLocationType() == 5 || evVar.getLocationType() == 6) {
                evVar.setLocationType(4);
            }
        }
        return evVar;
    }

    public final void a(boolean z) {
        this.h = z;
    }

    public final AMapLocation a(AMapLocation aMapLocation) {
        if (!fy.a(aMapLocation)) {
            return aMapLocation;
        }
        long b2 = fy.b() - this.g;
        this.g = fy.b();
        if (b2 > 5000) {
            return aMapLocation;
        }
        if (this.f == null) {
            this.f = aMapLocation;
            return aMapLocation;
        } else if (1 != this.f.getLocationType() && !GeocodeSearch.GPS.equalsIgnoreCase(this.f.getProvider())) {
            this.f = aMapLocation;
            return aMapLocation;
        } else if (this.f.getAltitude() == aMapLocation.getAltitude() && this.f.getLongitude() == aMapLocation.getLongitude()) {
            this.f = aMapLocation;
            return aMapLocation;
        } else {
            long abs = Math.abs(aMapLocation.getTime() - this.f.getTime());
            if (30000 < abs) {
                this.f = aMapLocation;
                return aMapLocation;
            }
            if (fy.a(aMapLocation, this.f) > ((((float) abs) * (this.f.getSpeed() + aMapLocation.getSpeed())) / 2000.0f) + (2.0f * (this.f.getAccuracy() + aMapLocation.getAccuracy())) + 3000.0f) {
                return this.f;
            }
            this.f = aMapLocation;
            return aMapLocation;
        }
    }
}
