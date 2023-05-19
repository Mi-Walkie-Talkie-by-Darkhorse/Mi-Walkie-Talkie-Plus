package miui.net;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes3.dex */
public interface IXiaomiAuthService extends IInterface {

    /* renamed from: miui.net.IXiaomiAuthService$a */
    /* loaded from: classes3.dex */
    public static abstract class AbstractBinderC6571a extends Binder implements IXiaomiAuthService {

        /* renamed from: miui.net.IXiaomiAuthService$a$a */
        /* loaded from: classes3.dex */
        private static class C6572a implements IXiaomiAuthService {

            /* renamed from: a */
            private IBinder f23959a;

            C6572a(IBinder iBinder) {
                this.f23959a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f23959a;
            }

            @Override // miui.net.IXiaomiAuthService
            public Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("miui.net.IXiaomiAuthService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f23959a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // miui.net.IXiaomiAuthService
            public Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("miui.net.IXiaomiAuthService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f23959a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // miui.net.IXiaomiAuthService
            public Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("miui.net.IXiaomiAuthService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f23959a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // miui.net.IXiaomiAuthService
            public void invalidateAccessToken(Account account, Bundle bundle) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("miui.net.IXiaomiAuthService");
                    if (account != null) {
                        obtain.writeInt(1);
                        account.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.f23959a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        /* renamed from: x */
        public static IXiaomiAuthService m713x(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("miui.net.IXiaomiAuthService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IXiaomiAuthService)) {
                return (IXiaomiAuthService) queryLocalInterface;
            }
            return new C6572a(iBinder);
        }
    }

    Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException;

    Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException;

    Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException;

    void invalidateAccessToken(Account account, Bundle bundle) throws RemoteException;
}
