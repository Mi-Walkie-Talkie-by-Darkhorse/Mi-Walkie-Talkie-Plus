package com.amap.api.col.sl;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: ILocationProviderService */
public interface j extends IInterface {

    /* compiled from: ILocationProviderService */
    public static abstract class a extends Binder implements j {

        /* renamed from: com.amap.api.col.sl.j$a$a reason: collision with other inner class name */
        /* compiled from: ILocationProviderService */
        private static class C0005a implements j {
            private IBinder a;

            C0005a(IBinder iBinder) {
                this.a = iBinder;
            }

            public final IBinder asBinder() {
                return this.a;
            }

            public final int a(Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.amap.api.service.locationprovider.ILocationProviderService");
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    if (obtain2.readInt() != 0) {
                        bundle.readFromParcel(obtain2);
                    }
                    return readInt;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static j a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.amap.api.service.locationprovider.ILocationProviderService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof j)) {
                return new C0005a(iBinder);
            }
            return (j) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.amap.api.service.locationprovider.ILocationProviderService");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle = null;
                    }
                    int a = a(bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(a);
                    if (bundle != null) {
                        parcel2.writeInt(1);
                        bundle.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 1598968902:
                    parcel2.writeString("com.amap.api.service.locationprovider.ILocationProviderService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int a(Bundle bundle) throws RemoteException;
}
