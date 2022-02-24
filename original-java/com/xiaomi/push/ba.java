package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import com.google.common.primitives.UnsignedBytes;
import java.security.MessageDigest;

/* loaded from: classes2.dex */
class ba implements at {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f8764a;

    /* renamed from: a  reason: collision with other field name */
    private Context f121a;

    /* renamed from: a  reason: collision with other field name */
    private ServiceConnection f122a;

    /* renamed from: a  reason: collision with other field name */
    private volatile int f120a = 0;

    /* renamed from: a  reason: collision with other field name */
    private volatile a f123a = null;

    /* renamed from: a  reason: collision with other field name */
    private final Object f124a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a {

        /* renamed from: a  reason: collision with other field name */
        String f125a;

        /* renamed from: b  reason: collision with root package name */
        String f8766b;

        /* renamed from: c  reason: collision with root package name */
        String f8767c;
        String d;

        private a() {
            this.f125a = null;
            this.f8766b = null;
            this.f8767c = null;
            this.d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class b implements ServiceConnection {
        private b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (ba.this.f123a == null) {
                new Thread(new bc(this, iBinder)).start();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static String a(IBinder iBinder, String str, String str2, String str3) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                obtain.writeString(str);
                obtain.writeString(str2);
                obtain.writeString(str3);
                iBinder.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }
    }

    public ba(Context context) {
        this.f121a = context;
        a();
    }

    private void a() {
        boolean z;
        this.f122a = new b();
        Intent intent = new Intent();
        intent.setClassName("com.heytap.openid", "com.heytap.openid.IdentifyService");
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        int i = 1;
        try {
            z = this.f121a.bindService(intent, this.f122a, 1);
        } catch (Exception unused) {
            z = false;
        }
        if (!z) {
            i = 2;
        }
        this.f120a = i;
    }

    private void a(String str) {
        if (this.f120a == 1 && Looper.myLooper() != Looper.getMainLooper()) {
            synchronized (this.f124a) {
                try {
                    com.xiaomi.channel.commonutils.logger.b.m1a("oppo's " + str + " wait...");
                    this.f124a.wait(3000L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 128);
            if (packageInfo != null) {
                long longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
                boolean z = (packageInfo.applicationInfo.flags & 1) != 0;
                f8764a = longVersionCode >= 1;
                if (z) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b() {
        try {
            Signature[] signatureArr = this.f121a.getPackageManager().getPackageInfo(this.f121a.getPackageName(), 64).signatures;
            MessageDigest instance = MessageDigest.getInstance("SHA1");
            StringBuilder sb = new StringBuilder();
            for (byte b2 : instance.digest(signatureArr[0].toByteArray())) {
                sb.append(Integer.toHexString((b2 & UnsignedBytes.MAX_VALUE) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b  reason: collision with other method in class */
    public void m89b() {
        ServiceConnection serviceConnection = this.f122a;
        if (serviceConnection != null) {
            try {
                this.f121a.unbindService(serviceConnection);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a */
    public String mo92a() {
        a("getOAID");
        if (this.f123a == null) {
            return null;
        }
        return this.f123a.f8766b;
    }

    @Override // com.xiaomi.push.at
    /* renamed from: a  reason: collision with other method in class */
    public boolean mo92a() {
        return f8764a;
    }
}
