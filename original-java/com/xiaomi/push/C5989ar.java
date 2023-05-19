package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ar */
/* loaded from: classes2.dex */
public class C5989ar implements InterfaceC5993at {

    /* renamed from: a */
    private static boolean f21022a;

    /* renamed from: a */
    private Context f21024a;

    /* renamed from: a */
    private ServiceConnection f21025a;

    /* renamed from: a */
    private volatile int f21023a = 0;

    /* renamed from: a */
    private volatile String f21027a = null;

    /* renamed from: b */
    private volatile boolean f21029b = false;

    /* renamed from: b */
    private volatile String f21028b = null;

    /* renamed from: a */
    private final Object f21026a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.ar$a */
    /* loaded from: classes2.dex */
    public class ServiceConnectionC5990a implements ServiceConnection {
        private ServiceConnectionC5990a() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                C5989ar.this.f21027a = C5991b.m3747a(iBinder);
                C5989ar.this.f21029b = C5991b.m3746a(iBinder);
                C5989ar.this.m3748b();
                C5989ar.this.f21023a = 2;
                synchronized (C5989ar.this.f21026a) {
                    try {
                        C5989ar.this.f21026a.notifyAll();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                C5989ar.this.m3748b();
                C5989ar.this.f21023a = 2;
                synchronized (C5989ar.this.f21026a) {
                    try {
                        C5989ar.this.f21026a.notifyAll();
                    } catch (Exception unused3) {
                    }
                }
            } catch (Throwable th) {
                C5989ar.this.m3748b();
                C5989ar.this.f21023a = 2;
                synchronized (C5989ar.this.f21026a) {
                    try {
                        C5989ar.this.f21026a.notifyAll();
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

    /* renamed from: com.xiaomi.push.ar$b */
    /* loaded from: classes2.dex */
    private static class C5991b {
        /* renamed from: a */
        static String m3747a(IBinder iBinder) {
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

        /* renamed from: a */
        static boolean m3746a(IBinder iBinder) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                iBinder.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readInt() != 0;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public C5989ar(Context context) {
        this.f21024a = context;
        m3756a();
    }

    /* renamed from: a */
    private void m3756a() {
        boolean z;
        this.f21025a = new ServiceConnectionC5990a();
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE");
        intent.setPackage("com.huawei.hwid");
        try {
            z = this.f21024a.bindService(intent, this.f21025a, 1);
        } catch (Exception unused) {
            z = false;
        }
        this.f21023a = z ? 1 : 2;
    }

    /* renamed from: a */
    private void m3749a(String str) {
        if (this.f21023a != 1 || Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        synchronized (this.f21026a) {
            try {
                AbstractC5876b.m4147a("huawei's " + str + " wait...");
                this.f21026a.wait(3000L);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m3755a(Context context) {
        boolean z;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.huawei.hwid", 128);
            z = (packageInfo.applicationInfo.flags & 1) != 0;
            f21022a = packageInfo.versionCode >= 20602000;
        } catch (Exception unused) {
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3748b() {
        ServiceConnection serviceConnection = this.f21025a;
        if (serviceConnection != null) {
            try {
                this.f21024a.unbindService(serviceConnection);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        m3749a("getOAID");
        return this.f21027a;
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        return f21022a;
    }
}
