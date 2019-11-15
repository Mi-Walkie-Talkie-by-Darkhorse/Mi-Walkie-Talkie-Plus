package com.mi.mimsgsdk.service.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

public interface IMessageListener extends IInterface {

    public static abstract class Stub extends Binder implements IMessageListener {
        private static final String DESCRIPTOR = "com.mi.mimsgsdk.service.aidl.IMessageListener";
        static final int TRANSACTION_onConnectionStateChanged = 3;
        static final int TRANSACTION_onDataSendResponse = 6;
        static final int TRANSACTION_onDownloadMediaFileResponse = 11;
        static final int TRANSACTION_onInitResult = 1;
        static final int TRANSACTION_onReceiveConferenceMembers = 8;
        static final int TRANSACTION_onReceiveMessage = 2;
        static final int TRANSACTION_onReceiveOldGroupMessage = 5;
        static final int TRANSACTION_onReceiveOldUserMessage = 4;
        static final int TRANSACTION_onReceiveSignalMessage = 7;
        static final int TRANSACTION_onUploadLogsResponse = 10;
        static final int TRANSACTION_onUploadVideoResponse = 9;

        private static class Proxy implements IMessageListener {
            private IBinder mRemote;

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            public void onInitResult(RetValue retValue) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean onReceiveMessage(int i, MiMessage miMessage) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() == 0) {
                        z = false;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onConnectionStateChanged(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean onReceiveOldUserMessage(List<MiMessage> list) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean onReceiveOldGroupMessage(String str, List<MiMessage> list) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeTypedList(list);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z = true;
                    }
                    return z;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onDataSendResponse(int i, RetValue retValue, MiMessage miMessage) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onReceiveSignalMessage(int i, RetValue retValue, long j, long j2, int i2) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeLong(j);
                    obtain.writeLong(j2);
                    obtain.writeInt(i2);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onReceiveConferenceMembers(int i, int i2, RetValue retValue, List<ConferenceMember> list) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeTypedList(list);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onUploadVideoResponse(RetValue retValue, MiMessage miMessage) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onUploadLogsResponse(RetValue retValue) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void onDownloadMediaFileResponse(int i, RetValue retValue) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    if (retValue != null) {
                        obtain.writeInt(1);
                        retValue.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMessageListener asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IMessageListener)) {
                return new Proxy(iBinder);
            }
            return (IMessageListener) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            RetValue retValue;
            RetValue retValue2;
            RetValue retValue3;
            MiMessage miMessage;
            RetValue retValue4;
            RetValue retValue5;
            RetValue retValue6;
            MiMessage miMessage2;
            MiMessage miMessage3;
            int i3;
            RetValue retValue7;
            int i4 = 0;
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        retValue7 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue7 = null;
                    }
                    onInitResult(retValue7);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        miMessage3 = (MiMessage) MiMessage.CREATOR.createFromParcel(parcel);
                    } else {
                        miMessage3 = null;
                    }
                    boolean onReceiveMessage = onReceiveMessage(readInt, miMessage3);
                    parcel2.writeNoException();
                    if (onReceiveMessage) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    parcel2.writeInt(i3);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onConnectionStateChanged(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onReceiveOldUserMessage = onReceiveOldUserMessage(parcel.createTypedArrayList(MiMessage.CREATOR));
                    parcel2.writeNoException();
                    if (onReceiveOldUserMessage) {
                        i4 = 1;
                    }
                    parcel2.writeInt(i4);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean onReceiveOldGroupMessage = onReceiveOldGroupMessage(parcel.readString(), parcel.createTypedArrayList(MiMessage.CREATOR));
                    parcel2.writeNoException();
                    if (onReceiveOldGroupMessage) {
                        i4 = 1;
                    }
                    parcel2.writeInt(i4);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt2 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        retValue6 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue6 = null;
                    }
                    if (parcel.readInt() != 0) {
                        miMessage2 = (MiMessage) MiMessage.CREATOR.createFromParcel(parcel);
                    } else {
                        miMessage2 = null;
                    }
                    onDataSendResponse(readInt2, retValue6, miMessage2);
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt3 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        retValue5 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue5 = null;
                    }
                    onReceiveSignalMessage(readInt3, retValue5, parcel.readLong(), parcel.readLong(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt4 = parcel.readInt();
                    int readInt5 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        retValue4 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue4 = null;
                    }
                    onReceiveConferenceMembers(readInt4, readInt5, retValue4, parcel.createTypedArrayList(ConferenceMember.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        retValue3 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue3 = null;
                    }
                    if (parcel.readInt() != 0) {
                        miMessage = (MiMessage) MiMessage.CREATOR.createFromParcel(parcel);
                    } else {
                        miMessage = null;
                    }
                    onUploadVideoResponse(retValue3, miMessage);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    if (parcel.readInt() != 0) {
                        retValue2 = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue2 = null;
                    }
                    onUploadLogsResponse(retValue2);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    int readInt6 = parcel.readInt();
                    if (parcel.readInt() != 0) {
                        retValue = (RetValue) RetValue.CREATOR.createFromParcel(parcel);
                    } else {
                        retValue = null;
                    }
                    onDownloadMediaFileResponse(readInt6, retValue);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onConnectionStateChanged(int i) throws RemoteException;

    void onDataSendResponse(int i, RetValue retValue, MiMessage miMessage) throws RemoteException;

    void onDownloadMediaFileResponse(int i, RetValue retValue) throws RemoteException;

    void onInitResult(RetValue retValue) throws RemoteException;

    void onReceiveConferenceMembers(int i, int i2, RetValue retValue, List<ConferenceMember> list) throws RemoteException;

    boolean onReceiveMessage(int i, MiMessage miMessage) throws RemoteException;

    boolean onReceiveOldGroupMessage(String str, List<MiMessage> list) throws RemoteException;

    boolean onReceiveOldUserMessage(List<MiMessage> list) throws RemoteException;

    void onReceiveSignalMessage(int i, RetValue retValue, long j, long j2, int i2) throws RemoteException;

    void onUploadLogsResponse(RetValue retValue) throws RemoteException;

    void onUploadVideoResponse(RetValue retValue, MiMessage miMessage) throws RemoteException;
}
