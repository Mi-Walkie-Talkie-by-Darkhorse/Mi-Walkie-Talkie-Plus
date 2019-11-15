package com.mi.mimsgsdk.service.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface IMiMsgService extends IInterface {

    public static abstract class Stub extends Binder implements IMiMsgService {
        private static final String DESCRIPTOR = "com.mi.mimsgsdk.service.aidl.IMiMsgService";
        static final int TRANSACTION_destroy = 21;
        static final int TRANSACTION_downloadMediaFile = 11;
        static final int TRANSACTION_getConferenceMember = 13;
        static final int TRANSACTION_getGuidfromMediaId = 14;
        static final int TRANSACTION_getProcessPid = 19;
        static final int TRANSACTION_init = 1;
        static final int TRANSACTION_isAlive = 20;
        static final int TRANSACTION_pullOldGroupMessage = 17;
        static final int TRANSACTION_pullOldUserMessage = 16;
        static final int TRANSACTION_scribe = 22;
        static final int TRANSACTION_sendAsyncWithResponse = 23;
        static final int TRANSACTION_sendAudioMessage = 6;
        static final int TRANSACTION_sendChannelCheckMessage = 12;
        static final int TRANSACTION_sendGroupMessage = 4;
        static final int TRANSACTION_sendRoomMessage = 5;
        static final int TRANSACTION_sendUserMessage = 3;
        static final int TRANSACTION_sendVideoMessage = 7;
        static final int TRANSACTION_setMessageListener = 2;
        static final int TRANSACTION_setSyncLimit = 18;
        static final int TRANSACTION_syncGroupMessage = 15;
        static final int TRANSACTION_uploadImage = 8;
        static final int TRANSACTION_uploadLogs = 10;
        static final int TRANSACTION_uploadVideo = 9;

        private static class Proxy implements IMiMsgService {
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

            public boolean init(String str, String str2, String str3, String str4, String str5, IMessageListener iMessageListener) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeString(str2);
                    obtain.writeString(str3);
                    obtain.writeString(str4);
                    obtain.writeString(str5);
                    obtain.writeStrongBinder(iMessageListener != null ? iMessageListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
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

            public boolean setMessageListener(IMessageListener iMessageListener) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(iMessageListener != null ? iMessageListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
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

            public boolean sendUserMessage(MiMessage miMessage, int i) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(3, obtain, obtain2, 0);
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

            public boolean sendGroupMessage(MiMessage miMessage, int i) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(4, obtain, obtain2, 0);
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

            public boolean sendRoomMessage(MiMessage miMessage, int i) throws RemoteException {
                boolean z = true;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (miMessage != null) {
                        obtain.writeInt(1);
                        miMessage.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    this.mRemote.transact(5, obtain, obtain2, 0);
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

            public boolean sendAudioMessage(int i, MiMessage miMessage, int i2) throws RemoteException {
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
                    obtain.writeInt(i2);
                    this.mRemote.transact(6, obtain, obtain2, 0);
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

            public boolean sendVideoMessage(int i, MiMessage miMessage, int i2) throws RemoteException {
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
                    obtain.writeInt(i2);
                    this.mRemote.transact(7, obtain, obtain2, 0);
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

            public boolean uploadImage(String str, ICustomCallback iCustomCallback) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeStrongBinder(iCustomCallback != null ? iCustomCallback.asBinder() : null);
                    this.mRemote.transact(8, obtain, obtain2, 0);
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

            public void uploadVideo(MiMessage miMessage) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
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

            public void uploadLogs(String str, int i, long j, boolean z, String str2) throws RemoteException {
                int i2 = 0;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeInt(i);
                    obtain.writeLong(j);
                    if (z) {
                        i2 = 1;
                    }
                    obtain.writeInt(i2);
                    obtain.writeString(str2);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void downloadMediaFile(int i, String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean sendChannelCheckMessage(long j, int i, String str) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    this.mRemote.transact(12, obtain, obtain2, 0);
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

            public boolean getConferenceMember(long j) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    this.mRemote.transact(13, obtain, obtain2, 0);
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

            public boolean getGuidfromMediaId(int i, int i2) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    this.mRemote.transact(14, obtain, obtain2, 0);
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

            public boolean syncGroupMessage(String str) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(15, obtain, obtain2, 0);
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

            public boolean pullOldUserMessage(long j, int i) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(16, obtain, obtain2, 0);
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

            public boolean pullOldGroupMessage(String str, long j, int i) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    obtain.writeLong(j);
                    obtain.writeInt(i);
                    this.mRemote.transact(17, obtain, obtain2, 0);
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

            public boolean setSyncLimit(int i) throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(18, obtain, obtain2, 0);
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

            public int getProcessPid() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public boolean isAlive() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, obtain, obtain2, 0);
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

            public boolean destroy() throws RemoteException {
                boolean z = false;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, obtain, obtain2, 0);
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

            public void scribe(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public void sendAsyncWithResponse(MsgPacketData msgPacketData, int i, ISendCallback iSendCallback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (msgPacketData != null) {
                        obtain.writeInt(1);
                        msgPacketData.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    obtain.writeInt(i);
                    obtain.writeStrongBinder(iSendCallback != null ? iSendCallback.asBinder() : null);
                    this.mRemote.transact(23, obtain, obtain2, 0);
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

        public static IMiMsgService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface == null || !(queryLocalInterface instanceof IMiMsgService)) {
                return new Proxy(iBinder);
            }
            return (IMiMsgService) queryLocalInterface;
        }

        public IBinder asBinder() {
            return this;
        }

        /* JADX WARNING: type inference failed for: r0v0 */
        /* JADX WARNING: type inference failed for: r0v1, types: [com.mi.mimsgsdk.service.aidl.MsgPacketData] */
        /* JADX WARNING: type inference failed for: r0v4, types: [com.mi.mimsgsdk.service.aidl.MsgPacketData] */
        /* JADX WARNING: type inference failed for: r0v38, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v41, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v45, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v49, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v50, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v54, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v55, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v59, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v60, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v64, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v65, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v69, types: [com.mi.mimsgsdk.service.aidl.MiMessage] */
        /* JADX WARNING: type inference failed for: r0v82 */
        /* JADX WARNING: type inference failed for: r0v83 */
        /* JADX WARNING: type inference failed for: r0v84 */
        /* JADX WARNING: type inference failed for: r0v85 */
        /* JADX WARNING: type inference failed for: r0v86 */
        /* JADX WARNING: type inference failed for: r0v87 */
        /* JADX WARNING: type inference failed for: r0v88 */
        /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r0v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], com.mi.mimsgsdk.service.aidl.MiMessage, com.mi.mimsgsdk.service.aidl.MsgPacketData]
  uses: [com.mi.mimsgsdk.service.aidl.MsgPacketData, com.mi.mimsgsdk.service.aidl.MiMessage]
  mth insns count: 266
        	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
        	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$0(DepthTraversal.java:13)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:13)
        	at jadx.core.ProcessClass.process(ProcessClass.java:30)
        	at jadx.core.ProcessClass.lambda$processDependencies$0(ProcessClass.java:49)
        	at java.util.ArrayList.forEach(Unknown Source)
        	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:49)
        	at jadx.core.ProcessClass.process(ProcessClass.java:35)
        	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
        	at jadx.api.JavaClass.decompile(JavaClass.java:62)
        	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
         */
        /* JADX WARNING: Unknown variable types count: 8 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean onTransact(int r10, android.os.Parcel r11, android.os.Parcel r12, int r13) throws android.os.RemoteException {
            /*
                r9 = this;
                r0 = 0
                r7 = 0
                r8 = 1
                switch(r10) {
                    case 1: goto L_0x0011;
                    case 2: goto L_0x0043;
                    case 3: goto L_0x005e;
                    case 4: goto L_0x0083;
                    case 5: goto L_0x00a9;
                    case 6: goto L_0x00cf;
                    case 7: goto L_0x00f9;
                    case 8: goto L_0x0123;
                    case 9: goto L_0x0143;
                    case 10: goto L_0x015e;
                    case 11: goto L_0x0185;
                    case 12: goto L_0x019a;
                    case 13: goto L_0x01ba;
                    case 14: goto L_0x01d2;
                    case 15: goto L_0x01ee;
                    case 16: goto L_0x0206;
                    case 17: goto L_0x0222;
                    case 18: goto L_0x0242;
                    case 19: goto L_0x025a;
                    case 20: goto L_0x026b;
                    case 21: goto L_0x027f;
                    case 22: goto L_0x0293;
                    case 23: goto L_0x02a4;
                    case 1598968902: goto L_0x000b;
                    default: goto L_0x0006;
                }
            L_0x0006:
                boolean r8 = super.onTransact(r10, r11, r12, r13)
            L_0x000a:
                return r8
            L_0x000b:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r12.writeString(r0)
                goto L_0x000a
            L_0x0011:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r1 = r11.readString()
                java.lang.String r2 = r11.readString()
                java.lang.String r3 = r11.readString()
                java.lang.String r4 = r11.readString()
                java.lang.String r5 = r11.readString()
                android.os.IBinder r0 = r11.readStrongBinder()
                com.mi.mimsgsdk.service.aidl.IMessageListener r6 = com.mi.mimsgsdk.service.aidl.IMessageListener.Stub.asInterface(r0)
                r0 = r9
                boolean r0 = r0.init(r1, r2, r3, r4, r5, r6)
                r12.writeNoException()
                if (r0 == 0) goto L_0x0041
                r0 = r8
            L_0x003d:
                r12.writeInt(r0)
                goto L_0x000a
            L_0x0041:
                r0 = r7
                goto L_0x003d
            L_0x0043:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                android.os.IBinder r0 = r11.readStrongBinder()
                com.mi.mimsgsdk.service.aidl.IMessageListener r0 = com.mi.mimsgsdk.service.aidl.IMessageListener.Stub.asInterface(r0)
                boolean r0 = r9.setMessageListener(r0)
                r12.writeNoException()
                if (r0 == 0) goto L_0x005a
                r7 = r8
            L_0x005a:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x005e:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                if (r1 == 0) goto L_0x0071
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x0071:
                int r1 = r11.readInt()
                boolean r0 = r9.sendUserMessage(r0, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x007f
                r7 = r8
            L_0x007f:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0083:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                if (r1 == 0) goto L_0x0096
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x0096:
                int r1 = r11.readInt()
                boolean r0 = r9.sendGroupMessage(r0, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x00a4
                r7 = r8
            L_0x00a4:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x00a9:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                if (r1 == 0) goto L_0x00bc
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x00bc:
                int r1 = r11.readInt()
                boolean r0 = r9.sendRoomMessage(r0, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x00ca
                r7 = r8
            L_0x00ca:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x00cf:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                int r2 = r11.readInt()
                if (r2 == 0) goto L_0x00e6
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x00e6:
                int r2 = r11.readInt()
                boolean r0 = r9.sendAudioMessage(r1, r0, r2)
                r12.writeNoException()
                if (r0 == 0) goto L_0x00f4
                r7 = r8
            L_0x00f4:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x00f9:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                int r2 = r11.readInt()
                if (r2 == 0) goto L_0x0110
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x0110:
                int r2 = r11.readInt()
                boolean r0 = r9.sendVideoMessage(r1, r0, r2)
                r12.writeNoException()
                if (r0 == 0) goto L_0x011e
                r7 = r8
            L_0x011e:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0123:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r0 = r11.readString()
                android.os.IBinder r1 = r11.readStrongBinder()
                com.mi.mimsgsdk.service.aidl.ICustomCallback r1 = com.mi.mimsgsdk.service.aidl.ICustomCallback.Stub.asInterface(r1)
                boolean r0 = r9.uploadImage(r0, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x013e
                r7 = r8
            L_0x013e:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0143:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                if (r1 == 0) goto L_0x0156
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MiMessage> r0 = com.mi.mimsgsdk.service.aidl.MiMessage.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MiMessage r0 = (com.mi.mimsgsdk.service.aidl.MiMessage) r0
            L_0x0156:
                r9.uploadVideo(r0)
                r12.writeNoException()
                goto L_0x000a
            L_0x015e:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r2 = r11.readString()
                int r3 = r11.readInt()
                long r4 = r11.readLong()
                int r0 = r11.readInt()
                if (r0 == 0) goto L_0x0183
                r6 = r8
            L_0x0176:
                java.lang.String r7 = r11.readString()
                r1 = r9
                r1.uploadLogs(r2, r3, r4, r6, r7)
                r12.writeNoException()
                goto L_0x000a
            L_0x0183:
                r6 = r7
                goto L_0x0176
            L_0x0185:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                int r0 = r11.readInt()
                java.lang.String r1 = r11.readString()
                r9.downloadMediaFile(r0, r1)
                r12.writeNoException()
                goto L_0x000a
            L_0x019a:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                long r0 = r11.readLong()
                int r2 = r11.readInt()
                java.lang.String r3 = r11.readString()
                boolean r0 = r9.sendChannelCheckMessage(r0, r2, r3)
                r12.writeNoException()
                if (r0 == 0) goto L_0x01b5
                r7 = r8
            L_0x01b5:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x01ba:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                long r0 = r11.readLong()
                boolean r0 = r9.getConferenceMember(r0)
                r12.writeNoException()
                if (r0 == 0) goto L_0x01cd
                r7 = r8
            L_0x01cd:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x01d2:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                int r0 = r11.readInt()
                int r1 = r11.readInt()
                boolean r0 = r9.getGuidfromMediaId(r0, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x01e9
                r7 = r8
            L_0x01e9:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x01ee:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r0 = r11.readString()
                boolean r0 = r9.syncGroupMessage(r0)
                r12.writeNoException()
                if (r0 == 0) goto L_0x0201
                r7 = r8
            L_0x0201:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0206:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                long r0 = r11.readLong()
                int r2 = r11.readInt()
                boolean r0 = r9.pullOldUserMessage(r0, r2)
                r12.writeNoException()
                if (r0 == 0) goto L_0x021d
                r7 = r8
            L_0x021d:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0222:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r0 = r11.readString()
                long r2 = r11.readLong()
                int r1 = r11.readInt()
                boolean r0 = r9.pullOldGroupMessage(r0, r2, r1)
                r12.writeNoException()
                if (r0 == 0) goto L_0x023d
                r7 = r8
            L_0x023d:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0242:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                int r0 = r11.readInt()
                boolean r0 = r9.setSyncLimit(r0)
                r12.writeNoException()
                if (r0 == 0) goto L_0x0255
                r7 = r8
            L_0x0255:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x025a:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                int r0 = r9.getProcessPid()
                r12.writeNoException()
                r12.writeInt(r0)
                goto L_0x000a
            L_0x026b:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                boolean r0 = r9.isAlive()
                r12.writeNoException()
                if (r0 == 0) goto L_0x027a
                r7 = r8
            L_0x027a:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x027f:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                boolean r0 = r9.destroy()
                r12.writeNoException()
                if (r0 == 0) goto L_0x028e
                r7 = r8
            L_0x028e:
                r12.writeInt(r7)
                goto L_0x000a
            L_0x0293:
                java.lang.String r0 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r0)
                java.lang.String r0 = r11.readString()
                r9.scribe(r0)
                r12.writeNoException()
                goto L_0x000a
            L_0x02a4:
                java.lang.String r1 = "com.mi.mimsgsdk.service.aidl.IMiMsgService"
                r11.enforceInterface(r1)
                int r1 = r11.readInt()
                if (r1 == 0) goto L_0x02b7
                android.os.Parcelable$Creator<com.mi.mimsgsdk.service.aidl.MsgPacketData> r0 = com.mi.mimsgsdk.service.aidl.MsgPacketData.CREATOR
                java.lang.Object r0 = r0.createFromParcel(r11)
                com.mi.mimsgsdk.service.aidl.MsgPacketData r0 = (com.mi.mimsgsdk.service.aidl.MsgPacketData) r0
            L_0x02b7:
                int r1 = r11.readInt()
                android.os.IBinder r2 = r11.readStrongBinder()
                com.mi.mimsgsdk.service.aidl.ISendCallback r2 = com.mi.mimsgsdk.service.aidl.ISendCallback.Stub.asInterface(r2)
                r9.sendAsyncWithResponse(r0, r1, r2)
                r12.writeNoException()
                goto L_0x000a
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.service.aidl.IMiMsgService.Stub.onTransact(int, android.os.Parcel, android.os.Parcel, int):boolean");
        }
    }

    boolean destroy() throws RemoteException;

    void downloadMediaFile(int i, String str) throws RemoteException;

    boolean getConferenceMember(long j) throws RemoteException;

    boolean getGuidfromMediaId(int i, int i2) throws RemoteException;

    int getProcessPid() throws RemoteException;

    boolean init(String str, String str2, String str3, String str4, String str5, IMessageListener iMessageListener) throws RemoteException;

    boolean isAlive() throws RemoteException;

    boolean pullOldGroupMessage(String str, long j, int i) throws RemoteException;

    boolean pullOldUserMessage(long j, int i) throws RemoteException;

    void scribe(String str) throws RemoteException;

    void sendAsyncWithResponse(MsgPacketData msgPacketData, int i, ISendCallback iSendCallback) throws RemoteException;

    boolean sendAudioMessage(int i, MiMessage miMessage, int i2) throws RemoteException;

    boolean sendChannelCheckMessage(long j, int i, String str) throws RemoteException;

    boolean sendGroupMessage(MiMessage miMessage, int i) throws RemoteException;

    boolean sendRoomMessage(MiMessage miMessage, int i) throws RemoteException;

    boolean sendUserMessage(MiMessage miMessage, int i) throws RemoteException;

    boolean sendVideoMessage(int i, MiMessage miMessage, int i2) throws RemoteException;

    boolean setMessageListener(IMessageListener iMessageListener) throws RemoteException;

    boolean setSyncLimit(int i) throws RemoteException;

    boolean syncGroupMessage(String str) throws RemoteException;

    boolean uploadImage(String str, ICustomCallback iCustomCallback) throws RemoteException;

    void uploadLogs(String str, int i, long j, boolean z, String str2) throws RemoteException;

    void uploadVideo(MiMessage miMessage) throws RemoteException;
}
