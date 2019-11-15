package com.liulishuo.filedownloader.c;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.liulishuo.filedownloader.message.MessageSnapshot;

/* compiled from: IFileDownloadIPCCallback */
public interface a extends IInterface {

    /* renamed from: com.liulishuo.filedownloader.c.a$a reason: collision with other inner class name */
    /* compiled from: IFileDownloadIPCCallback */
    public static abstract class C0045a extends Binder implements a {

        /* renamed from: com.liulishuo.filedownloader.c.a$a$a reason: collision with other inner class name */
        /* compiled from: IFileDownloadIPCCallback */
        private static class C0046a implements a {
            private IBinder a;

            C0046a(IBinder iBinder) {
                this.a = iBinder;
            }

            public IBinder asBinder() {
                return this.a;
            }

            public void a(MessageSnapshot messageSnapshot) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    if (messageSnapshot != null) {
                        obtain.writeInt(1);
                        messageSnapshot.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        public C0045a() {
            attachInterface(this, "com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
            if (queryLocalInterface == null || !(queryLocalInterface instanceof a)) {
                return new C0046a(iBinder);
            }
            return (a) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            MessageSnapshot messageSnapshot;
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    if (parcel.readInt() != 0) {
                        messageSnapshot = (MessageSnapshot) MessageSnapshot.CREATOR.createFromParcel(parcel);
                    } else {
                        messageSnapshot = null;
                    }
                    a(messageSnapshot);
                    return true;
                case 1598968902:
                    parcel2.writeString("com.liulishuo.filedownloader.i.IFileDownloadIPCCallback");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void a(MessageSnapshot messageSnapshot) throws RemoteException;
}
