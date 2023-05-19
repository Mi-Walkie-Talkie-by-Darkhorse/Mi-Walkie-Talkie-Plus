package p287d.p292c.p293a.p294a.p295a;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Build;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* renamed from: d.c.a.a.a.a */
/* loaded from: classes3.dex */
public interface IOpenID extends IInterface {

    /* compiled from: IOpenID.java */
    /* renamed from: d.c.a.a.a.a$a */
    /* loaded from: classes3.dex */
    public static abstract class AbstractBinderC6532a extends Binder implements IOpenID {

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: IOpenID.java */
        /* renamed from: d.c.a.a.a.a$a$a */
        /* loaded from: classes3.dex */
        public static class C6533a implements IOpenID {

            /* renamed from: a */
            public IBinder f23700a;

            public C6533a(IBinder iBinder) {
                this.f23700a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f23700a;
            }

            /* renamed from: x */
            public String m837x(String str, String str2, String str3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.heytap.openid.IOpenID");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    this.f23700a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: x */
        public static IOpenID m838x(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.heytap.openid.IOpenID");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IOpenID)) {
                return (IOpenID) queryLocalInterface;
            }
            return new C6533a(iBinder);
        }
    }

    /* compiled from: HeytapIDSDK.java */
    /* renamed from: d.c.a.a.a.a$b */
    /* loaded from: classes3.dex */
    public class C6534b {

        /* renamed from: a */
        public static boolean f23701a = false;

        /* renamed from: b */
        public static boolean f23702b = false;
    }

    /* compiled from: OpenIDHelper.java */
    /* renamed from: d.c.a.a.a.a$c */
    /* loaded from: classes3.dex */
    public class C6535c {

        /* renamed from: a */
        public IOpenID f23703a = null;

        /* renamed from: b */
        public String f23704b = null;

        /* renamed from: c */
        public String f23705c = null;

        /* renamed from: d */
        public final Object f23706d = new Object();

        /* renamed from: e */
        public ServiceConnection f23707e = new ServiceConnectionC6536a();

        /* compiled from: OpenIDHelper.java */
        /* renamed from: d.c.a.a.a.a$c$a */
        /* loaded from: classes3.dex */
        public class ServiceConnectionC6536a implements ServiceConnection {
            public ServiceConnectionC6536a() {
            }

            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                C6535c.this.f23703a = AbstractBinderC6532a.m838x(iBinder);
                synchronized (C6535c.this.f23706d) {
                    C6535c.this.f23706d.notify();
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                C6535c.this.f23703a = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* compiled from: OpenIDHelper.java */
        /* renamed from: d.c.a.a.a.a$c$b */
        /* loaded from: classes3.dex */
        public static class C6537b {

            /* renamed from: a */
            public static final C6535c f23709a = new C6535c(null);
        }

        public /* synthetic */ C6535c(ServiceConnectionC6536a serviceConnectionC6536a) {
        }

        /* renamed from: a */
        public synchronized String m836a(Context context, String str) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                if (this.f23703a == null) {
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName("com.heytap.openid", "com.heytap.openid.IdentifyService"));
                    intent.setAction("action.com.heytap.openid.OPEN_ID_SERVICE");
                    if (context.bindService(intent, this.f23707e, 1)) {
                        synchronized (this.f23706d) {
                            try {
                                this.f23706d.wait(3000L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                        }
                    }
                    if (this.f23703a == null) {
                        return "";
                    }
                    try {
                        return m834c(context, str);
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                        return "";
                    }
                }
                try {
                    return m834c(context, str);
                } catch (RemoteException e3) {
                    e3.printStackTrace();
                    return "";
                }
            }
            throw new IllegalStateException("Cannot run on MainThread");
        }

        /* renamed from: b */
        public boolean m835b(Context context) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.heytap.openid", 0);
                return Build.VERSION.SDK_INT >= 28 ? packageInfo != null && packageInfo.getLongVersionCode() >= 1 : packageInfo != null && packageInfo.versionCode >= 1;
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
                return false;
            }
        }

        /* renamed from: c */
        public final String m834c(Context context, String str) {
            Signature[] signatureArr;
            if (TextUtils.isEmpty(this.f23704b)) {
                this.f23704b = context.getPackageName();
            }
            if (TextUtils.isEmpty(this.f23705c)) {
                String str2 = null;
                try {
                    signatureArr = context.getPackageManager().getPackageInfo(this.f23704b, 64).signatures;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    signatureArr = null;
                }
                if (signatureArr != null && signatureArr.length > 0) {
                    byte[] byteArray = signatureArr[0].toByteArray();
                    try {
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
                        if (messageDigest != null) {
                            byte[] digest = messageDigest.digest(byteArray);
                            StringBuilder sb = new StringBuilder();
                            for (byte b : digest) {
                                sb.append(Integer.toHexString((b & UnsignedBytes.MAX_VALUE) | 256).substring(1, 3));
                            }
                            str2 = sb.toString();
                        }
                    } catch (NoSuchAlgorithmException e2) {
                        e2.printStackTrace();
                    }
                }
                this.f23705c = str2;
            }
            String m837x = ((AbstractBinderC6532a.C6533a) this.f23703a).m837x(this.f23704b, this.f23705c, str);
            return TextUtils.isEmpty(m837x) ? "" : m837x;
        }
    }
}
