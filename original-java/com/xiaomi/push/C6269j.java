package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* renamed from: com.xiaomi.push.j */
/* loaded from: classes2.dex */
final class C6269j {

    /* renamed from: com.xiaomi.push.j$a */
    /* loaded from: classes2.dex */
    static final class C6270a {

        /* renamed from: a */
        private final String f22668a;

        /* renamed from: a */
        private final boolean f22669a;

        C6270a(String str, boolean z) {
            this.f22668a = str;
            this.f22669a = z;
        }

        /* renamed from: a */
        public String m2024a() {
            return this.f22668a;
        }
    }

    /* renamed from: com.xiaomi.push.j$b */
    /* loaded from: classes2.dex */
    private static final class ServiceConnectionC6271b implements ServiceConnection {

        /* renamed from: a */
        private final LinkedBlockingQueue<IBinder> f22670a;

        /* renamed from: a */
        boolean f22671a;

        private ServiceConnectionC6271b() {
            this.f22671a = false;
            this.f22670a = new LinkedBlockingQueue<>(1);
        }

        /* renamed from: a */
        public IBinder m2023a() {
            if (this.f22671a) {
                throw new IllegalStateException();
            }
            this.f22671a = true;
            return this.f22670a.poll(30000L, TimeUnit.MILLISECONDS);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f22670a.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* renamed from: com.xiaomi.push.j$c */
    /* loaded from: classes2.dex */
    private static final class C6272c implements IInterface {

        /* renamed from: a */
        private IBinder f22672a;

        public C6272c(IBinder iBinder) {
            this.f22672a = iBinder;
        }

        /* renamed from: a */
        public String m2022a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f22672a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f22672a;
        }
    }

    /* renamed from: a */
    public static C6270a m2025a(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                ServiceConnectionC6271b serviceConnectionC6271b = new ServiceConnectionC6271b();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, serviceConnectionC6271b, 1)) {
                    try {
                        try {
                            IBinder m2023a = serviceConnectionC6271b.m2023a();
                            if (m2023a != null) {
                                return new C6270a(new C6272c(m2023a).m2022a(), false);
                            }
                        } finally {
                            context.unbindService(serviceConnectionC6271b);
                        }
                    } catch (Exception e) {
                        throw e;
                    }
                }
                throw new IOException("Google Play connection failed");
            } catch (Exception e2) {
                throw e2;
            }
        }
        throw new IllegalStateException("Cannot be called from the main thread");
    }
}
