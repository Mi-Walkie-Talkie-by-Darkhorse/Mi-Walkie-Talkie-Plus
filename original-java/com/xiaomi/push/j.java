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

/* loaded from: classes2.dex */
final class j {

    /* loaded from: classes2.dex */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f9139a;

        /* renamed from: a  reason: collision with other field name */
        private final boolean f760a;

        a(String str, boolean z) {
            this.f9139a = str;
            this.f760a = z;
        }

        public String a() {
            return this.f9139a;
        }
    }

    /* loaded from: classes2.dex */
    private static final class b implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private final LinkedBlockingQueue<IBinder> f9140a;

        /* renamed from: a  reason: collision with other field name */
        boolean f761a;

        private b() {
            this.f761a = false;
            this.f9140a = new LinkedBlockingQueue<>(1);
        }

        public IBinder a() {
            if (!this.f761a) {
                this.f761a = true;
                return this.f9140a.poll(30000L, TimeUnit.MILLISECONDS);
            }
            throw new IllegalStateException();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f9140a.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes2.dex */
    private static final class c implements IInterface {

        /* renamed from: a  reason: collision with root package name */
        private IBinder f9141a;

        public c(IBinder iBinder) {
            this.f9141a = iBinder;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f9141a.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.f9141a;
        }
    }

    public static a a(Context context) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                b bVar = new b();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                if (context.bindService(intent, bVar, 1)) {
                    try {
                        try {
                            IBinder a2 = bVar.a();
                            if (a2 != null) {
                                return new a(new c(a2).a(), false);
                            }
                        } catch (Exception e) {
                            throw e;
                        }
                    } finally {
                        context.unbindService(bVar);
                    }
                }
                throw new IOException("Google Play connection failed");
            } catch (Exception e2) {
                throw e2;
            }
        } else {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
    }
}
