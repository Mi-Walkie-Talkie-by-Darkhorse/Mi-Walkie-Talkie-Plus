package com.amap.api.col.sl;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;

/* compiled from: AMapSensorManager */
public final class ew implements SensorEventListener {
    SensorManager a = null;
    Sensor b = null;
    Sensor c = null;
    Sensor d = null;
    public boolean e = false;
    public double f = 0.0d;
    public float g = 0.0f;
    double h = 0.0d;
    Handler i = new Handler() {
    };
    double j = 0.0d;
    double k = 0.0d;
    double l = 0.0d;
    double m = 0.0d;
    double[] n = new double[3];
    volatile double o = 0.0d;
    long p = 0;
    long q = 0;
    private Context r = null;
    private float s = 1013.25f;
    private float t = 0.0f;

    public ew(Context context) {
        try {
            this.r = context;
            if (this.a == null) {
                this.a = (SensorManager) this.r.getSystemService("sensor");
            }
            try {
                this.b = this.a.getDefaultSensor(6);
            } catch (Throwable th) {
            }
            try {
                this.c = this.a.getDefaultSensor(11);
            } catch (Throwable th2) {
            }
            try {
                this.d = this.a.getDefaultSensor(1);
            } catch (Throwable th3) {
            }
        } catch (Throwable th4) {
            fq.a(th4, "AMapSensorManager", "<init>");
        }
    }

    public final void a() {
        if (this.a != null && !this.e) {
            this.e = true;
            try {
                if (this.b != null) {
                    this.a.registerListener(this, this.b, 3, this.i);
                }
            } catch (Throwable th) {
                fq.a(th, "AMapSensorManager", "registerListener mPressure");
            }
            try {
                if (this.c != null) {
                    this.a.registerListener(this, this.c, 3, this.i);
                }
            } catch (Throwable th2) {
                fq.a(th2, "AMapSensorManager", "registerListener mRotationVector");
            }
            try {
                if (this.d != null) {
                    this.a.registerListener(this, this.d, 3, this.i);
                }
            } catch (Throwable th3) {
                fq.a(th3, "AMapSensorManager", "registerListener mAcceleroMeterVector");
            }
        }
    }

    public final void b() {
        if (this.a != null && this.e) {
            this.e = false;
            try {
                if (this.b != null) {
                    this.a.unregisterListener(this, this.b);
                }
            } catch (Throwable th) {
            }
            try {
                if (this.c != null) {
                    this.a.unregisterListener(this, this.c);
                }
            } catch (Throwable th2) {
            }
            try {
                if (this.d != null) {
                    this.a.unregisterListener(this, this.d);
                }
            } catch (Throwable th3) {
            }
        }
    }

    public final double c() {
        return this.f;
    }

    public final float d() {
        return this.t;
    }

    public final double e() {
        return this.m;
    }

    public final void f() {
        try {
            b();
            this.b = null;
            this.c = null;
            this.a = null;
            this.d = null;
            this.e = false;
        } catch (Throwable th) {
            fq.a(th, "AMapSensorManager", "destroy");
        }
    }

    public final void onSensorChanged(SensorEvent sensorEvent) {
        double d2;
        if (sensorEvent != null) {
            try {
                switch (sensorEvent.sensor.getType()) {
                    case 1:
                        try {
                            if (this.d != null) {
                                float[] fArr = (float[]) sensorEvent.values.clone();
                                this.n[0] = (this.n[0] * 0.800000011920929d) + ((double) (fArr[0] * 0.19999999f));
                                this.n[1] = (this.n[1] * 0.800000011920929d) + ((double) (fArr[1] * 0.19999999f));
                                this.n[2] = (this.n[2] * 0.800000011920929d) + ((double) (fArr[2] * 0.19999999f));
                                this.j = ((double) fArr[0]) - this.n[0];
                                this.k = ((double) fArr[1]) - this.n[1];
                                this.l = ((double) fArr[2]) - this.n[2];
                                long currentTimeMillis = System.currentTimeMillis();
                                if (currentTimeMillis - this.p >= 100) {
                                    double sqrt = Math.sqrt((this.j * this.j) + (this.k * this.k) + (this.l * this.l));
                                    this.q++;
                                    this.p = currentTimeMillis;
                                    this.o += sqrt;
                                    if (this.q >= 30) {
                                        this.m = this.o / ((double) this.q);
                                        this.o = 0.0d;
                                        this.q = 0;
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (Throwable th) {
                            return;
                        }
                    case 6:
                        try {
                            if (this.b != null) {
                                float[] fArr2 = (float[]) sensorEvent.values.clone();
                                if (fArr2 != null) {
                                    this.g = fArr2[0];
                                }
                                if (fArr2 != null) {
                                    this.f = (double) fy.a(SensorManager.getAltitude(this.s, fArr2[0]));
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            return;
                        }
                    case 11:
                        try {
                            if (this.c != null) {
                                float[] fArr3 = (float[]) sensorEvent.values.clone();
                                if (fArr3 != null) {
                                    float[] fArr4 = new float[9];
                                    SensorManager.getRotationMatrixFromVector(fArr4, fArr3);
                                    float[] fArr5 = new float[3];
                                    SensorManager.getOrientation(fArr4, fArr5);
                                    this.t = (float) Math.toDegrees((double) fArr5[0]);
                                    if (this.t > 0.0f) {
                                        d2 = (double) this.t;
                                    } else {
                                        d2 = (double) (this.t + 360.0f);
                                    }
                                    this.t = (float) Math.floor(d2);
                                    return;
                                }
                                return;
                            }
                            return;
                        } catch (Throwable th3) {
                            return;
                        }
                    default:
                        return;
                }
            } catch (Throwable th4) {
            }
        }
    }

    public final void onAccuracyChanged(Sensor sensor, int i2) {
    }
}
