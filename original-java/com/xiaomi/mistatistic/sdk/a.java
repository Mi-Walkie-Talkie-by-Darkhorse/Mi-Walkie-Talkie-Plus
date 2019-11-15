package com.xiaomi.mistatistic.sdk;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.xiaomi.mistatistic.sdk.data.StatEventPojo;
import java.util.List;

/* compiled from: IBaseService */
public interface a extends IInterface {

    /* renamed from: com.xiaomi.mistatistic.sdk.a$a reason: collision with other inner class name */
    /* compiled from: IBaseService */
    public static abstract class C0065a extends Binder implements a {

        /* renamed from: com.xiaomi.mistatistic.sdk.a$a$a reason: collision with other inner class name */
        /* compiled from: IBaseService */
        private static class C0066a implements a {
            private IBinder a;

            C0066a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public StatEventPojo a(String str, String str2) throws RemoteException {
                StatEventPojo statEventPojo;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.xiaomi.mistatistic.sdk.IBaseService");
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        statEventPojo = (StatEventPojo) StatEventPojo.CREATOR.createFromParcel(obtain2);
                    } else {
                        statEventPojo = null;
                    }
                    return statEventPojo;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public List<StatEventPojo> a(long j) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.xiaomi.mistatistic.sdk.IBaseService");
                    obtain.writeLong(j);
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.createTypedArrayList(StatEventPojo.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public int a() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.xiaomi.mistatistic.sdk.IBaseService");
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public C0065a() {
            attachInterface(this, "com.xiaomi.mistatistic.sdk.IBaseService");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.xiaomi.mistatistic.sdk.IBaseService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof a)) {
                return new C0066a(iBinder);
            }
            return (a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.xiaomi.mistatistic.sdk.IBaseService");
                    StatEventPojo a = a(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    if (a != null) {
                        parcel2.writeInt(1);
                        a.writeToParcel(parcel2, 1);
                        return true;
                    }
                    parcel2.writeInt(0);
                    return true;
                case 2:
                    parcel.enforceInterface("com.xiaomi.mistatistic.sdk.IBaseService");
                    List a2 = a(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(a2);
                    return true;
                case 3:
                    parcel.enforceInterface("com.xiaomi.mistatistic.sdk.IBaseService");
                    int a3 = a();
                    parcel2.writeNoException();
                    parcel2.writeInt(a3);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.xiaomi.mistatistic.sdk.IBaseService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int a() throws RemoteException;

    StatEventPojo a(String str, String str2) throws RemoteException;

    List<StatEventPojo> a(long j) throws RemoteException;
}
