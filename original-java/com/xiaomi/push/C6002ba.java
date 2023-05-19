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
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.security.MessageDigest;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ba */
/* loaded from: classes2.dex */
public class C6002ba implements InterfaceC5993at {

    /* renamed from: a */
    private static boolean f21075a;

    /* renamed from: a */
    private Context f21077a;

    /* renamed from: a */
    private ServiceConnection f21078a;

    /* renamed from: a */
    private volatile int f21076a = 0;

    /* renamed from: a */
    private volatile C6003a f21079a = null;

    /* renamed from: a */
    private final Object f21080a = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.ba$a */
    /* loaded from: classes2.dex */
    public class C6003a {

        /* renamed from: a */
        String f21082a;

        /* renamed from: b */
        String f21083b;

        /* renamed from: c */
        String f21084c;

        /* renamed from: d */
        String f21085d;

        private C6003a() {
            this.f21082a = null;
            this.f21083b = null;
            this.f21084c = null;
            this.f21085d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.ba$b */
    /* loaded from: classes2.dex */
    public class ServiceConnectionC6004b implements ServiceConnection {
        private ServiceConnectionC6004b() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (C6002ba.this.f21079a != null) {
                return;
            }
            new Thread(new RunnableC6007bc(this, iBinder)).start();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.ba$c */
    /* loaded from: classes2.dex */
    public static class C6005c {
        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public static String m3685a(IBinder iBinder, String str, String str2, String str3) {
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

    public C6002ba(Context context) {
        this.f21077a = context;
        m3697a();
    }

    /* renamed from: a */
    private void m3697a() {
        boolean z;
        this.f21078a = new ServiceConnectionC6004b();
        Intent intent = new Intent();
        intent.setClassName("com.heytap.openid", "com.heytap.openid.IdentifyService");
        intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
        try {
            z = this.f21077a.bindService(intent, this.f21078a, 1);
        } catch (Exception unused) {
            z = false;
        }
        this.f21076a = z ? 1 : 2;
    }

    /* renamed from: a */
    private void m3688a(String str) {
        if (this.f21076a != 1 || Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        synchronized (this.f21080a) {
            try {
                AbstractC5876b.m4147a("oppo's " + str + " wait...");
                this.f21080a.wait(3000L);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: a */
    public static boolean m3696a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 128);
            if (packageInfo != null) {
                long longVersionCode = Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
                boolean z = (packageInfo.applicationInfo.flags & 1) != 0;
                f21075a = longVersionCode >= 1;
                if (z) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public String m3687b() {
        try {
            Signature[] signatureArr = this.f21077a.getPackageManager().getPackageInfo(this.f21077a.getPackageName(), 64).signatures;
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            StringBuilder sb = new StringBuilder();
            for (byte b : messageDigest.digest(signatureArr[0].toByteArray())) {
                sb.append(Integer.toHexString((b & UnsignedBytes.MAX_VALUE) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3686b() {
        ServiceConnection serviceConnection = this.f21078a;
        if (serviceConnection != null) {
            try {
                this.f21077a.unbindService(serviceConnection);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public String mo3684a() {
        m3688a("getOAID");
        if (this.f21079a == null) {
            return null;
        }
        return this.f21079a.f21083b;
    }

    @Override // com.xiaomi.push.InterfaceC5993at
    /* renamed from: a */
    public boolean mo3683a() {
        return f21075a;
    }
}
