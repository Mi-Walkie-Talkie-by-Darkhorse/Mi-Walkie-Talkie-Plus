package com.xiaomi.xmsf.push.service;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Map;

/* compiled from: IHttpService */
public interface a extends IInterface {

    /* renamed from: com.xiaomi.xmsf.push.service.a$a reason: collision with other inner class name */
    /* compiled from: IHttpService */
    public static abstract class C0074a extends Binder implements a {

        /* renamed from: com.xiaomi.xmsf.push.service.a$a$a reason: collision with other inner class name */
        /* compiled from: IHttpService */
        private static class C0075a implements a {
            private IBinder a;

            C0075a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public String a(String str, Map map) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.xiaomi.xmsf.push.service.IHttpService");
                    obtain.writeString(str);
                    obtain.writeMap(map);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.xiaomi.xmsf.push.service.IHttpService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof a)) {
                return new C0075a(iBinder);
            }
            return (a) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.xiaomi.xmsf.push.service.IHttpService");
                    String a = a(parcel.readString(), parcel.readHashMap(getClass().getClassLoader()));
                    parcel2.writeNoException();
                    parcel2.writeString(a);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.xiaomi.xmsf.push.service.IHttpService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String a(String str, Map map) throws RemoteException;
}
