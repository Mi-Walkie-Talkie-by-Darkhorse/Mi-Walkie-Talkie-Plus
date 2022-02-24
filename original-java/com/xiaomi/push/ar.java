package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;

/* loaded from: classes2.dex */
class ar implements at {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f8746a;

    /* renamed from: a  reason: collision with other field name */
    private Context f98a;

    /* renamed from: a  reason: collision with other field name */
    private ServiceConnection f99a;

    /* renamed from: a  reason: collision with other field name */
    private volatile int f97a = 0;

    /* renamed from: a  reason: collision with other field name */
    private volatile String f101a = null;

    /* renamed from: b  reason: collision with other field name */
    private volatile boolean f102b = false;

    /* renamed from: b  reason: collision with root package name */
    private volatile String f8747b = null;

    /* renamed from: a  reason: collision with other field name */
    private final Object f100a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a implements ServiceConnection {
        private a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                ar.this.f101a = b.a(iBinder);
                ar.this.f102b = b.m71a(iBinder);
                ar.this.b();
                ar.this.f97a = 2;
                synchronized (ar.this.f100a) {
                    try {
                        ar.this.f100a.notifyAll();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                ar.this.b();
                ar.this.f97a = 2;
                synchronized (ar.this.f100a) {
                    try {
                        ar.this.f100a.notifyAll();
                    } catch (Exception unused3) {
                    }
                }
            } catch (Throwable th) {
                ar.this.b();
                ar.this.f97a = 2;
                synchronized (ar.this.f100a) {
                    try {
                        ar.this.f100a.notifyAll();
                    } catch (Exception unused4) {
                    }
                    throw th;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes2.dex */
    private static class b {
        static String a(IBinder iBinder) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                iBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        /* renamed from: a  reason: collision with other method in class */
        static boolean m71a(IBinder iBinder) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                boolean z = false;
                iBinder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() != 0) {
                    z = true;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public ar(Context context) {
        this.f98a = context;
        a();
    }

    private void a() {
        boolean z;
        this.f99a = new a();
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        int i = 1;
        try {
            z = this.f98a.bindService(intent, this.f99a, 1);
        } catch (Exception unused) {
            z = false;
        }
        if (!z) {
            i = 2;
        }
        this.f97a = i;
    }

    private void a(String str) {
        if (this.f97a == 1 && Looper.myLooper() != Looper.getMainLooper()) {
            synchronized (this.f100a) {
                try {
                    com.xiaomi.channel.commonutils.logger.b.m1a("huawei's " + str + " wait...");
                    this.f100a.wait(3000L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static boolean a(Context context) {
        boolean z;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.huawei.hwid", 128);
            z = (packageInfo.applicationInfo.flags & 1) != 0;
            f8746a = packageInfo.versionCode >= 20602000;
        } catch (Exception unused) {
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        ServiceConnection serviceConnection = this.f99a;
        if (serviceConnection != null) {
            try {
                this.f98a.unbindService(serviceConnection);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public String mo92a() {
        a("getOAID");
        return this.f101a;
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public boolean mo92a() {
        return f8746a;
    }
}
