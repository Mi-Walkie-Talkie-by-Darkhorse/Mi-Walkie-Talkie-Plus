package miui.net;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IXiaomiAuthService extends IInterface {

    public static abstract class a extends Binder implements IXiaomiAuthService {

        /* renamed from: miui.net.IXiaomiAuthService$a$a reason: collision with other inner class name */
        private static class C0093a implements IXiaomiAuthService {
            private IBinder a;

            C0093a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException {
                Bundle bundle2;
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
                    this.a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException {
                Bundle bundle2;
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
                    this.a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException {
                Bundle bundle2;
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
                    this.a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(obtain2);
                    } else {
                        bundle2 = null;
                    }
                    return bundle2;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

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
                    this.a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static IXiaomiAuthService a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("miui.net.IXiaomiAuthService");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IXiaomiAuthService)) {
                return new C0093a(iBinder);
            }
            return (IXiaomiAuthService) queryLocalInterface;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Account account;
            Bundle bundle;
            Account account2;
            Bundle bundle2;
            Account account3;
            Bundle bundle3;
            Account account4;
            Bundle bundle4;
            switch (i) {
                case 1:
                    parcel.enforceInterface("miui.net.IXiaomiAuthService");
                    if (parcel.readInt() != 0) {
                        account4 = (Account) Account.CREATOR.createFromParcel(parcel);
                    } else {
                        account4 = null;
                    }
                    if (parcel.readInt() != 0) {
                        bundle4 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle4 = null;
                    }
                    Bundle miCloudUserInfo = getMiCloudUserInfo(account4, bundle4);
                    parcel2.writeNoException();
                    if (miCloudUserInfo != null) {
                        parcel2.writeInt(1);
                        miCloudUserInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 2:
                    parcel.enforceInterface("miui.net.IXiaomiAuthService");
                    if (parcel.readInt() != 0) {
                        account3 = (Account) Account.CREATOR.createFromParcel(parcel);
                    } else {
                        account3 = null;
                    }
                    if (parcel.readInt() != 0) {
                        bundle3 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle3 = null;
                    }
                    Bundle miCloudAccessToken = getMiCloudAccessToken(account3, bundle3);
                    parcel2.writeNoException();
                    if (miCloudAccessToken != null) {
                        parcel2.writeInt(1);
                        miCloudAccessToken.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface("miui.net.IXiaomiAuthService");
                    if (parcel.readInt() != 0) {
                        account2 = (Account) Account.CREATOR.createFromParcel(parcel);
                    } else {
                        account2 = null;
                    }
                    if (parcel.readInt() != 0) {
                        bundle2 = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle2 = null;
                    }
                    Bundle snsAccessToken = getSnsAccessToken(account2, bundle2);
                    parcel2.writeNoException();
                    if (snsAccessToken != null) {
                        parcel2.writeInt(1);
                        snsAccessToken.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface("miui.net.IXiaomiAuthService");
                    if (parcel.readInt() != 0) {
                        account = (Account) Account.CREATOR.createFromParcel(parcel);
                    } else {
                        account = null;
                    }
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    } else {
                        bundle = null;
                    }
                    invalidateAccessToken(account, bundle);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("miui.net.IXiaomiAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    Bundle getMiCloudAccessToken(Account account, Bundle bundle) throws RemoteException;

    Bundle getMiCloudUserInfo(Account account, Bundle bundle) throws RemoteException;

    Bundle getSnsAccessToken(Account account, Bundle bundle) throws RemoteException;

    void invalidateAccessToken(Account account, Bundle bundle) throws RemoteException;
}
