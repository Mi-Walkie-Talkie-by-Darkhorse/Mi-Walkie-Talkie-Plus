package com.mi.milinkforgame.sdk.connection;

import android.util.Log;
import android.util.SparseArray;
import com.mi.milinkforgame.sdk.base.os.Native;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.session.MsgProcessor;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class ConnectionImpl implements IConnection {
    private static final String CLASSTAG = "ConnectionImpl";
    private static final int MSG_ID_ON_CONNECT = 1;
    private static final int MSG_ID_ON_DISCONNECT = 2;
    private static final int MSG_ID_ON_ERROR = 3;
    private static final int MSG_ID_ON_MSGPROC = 8;
    private static final int MSG_ID_ON_RECV = 5;
    private static final int MSG_ID_ON_SENDBEGIN = 6;
    private static final int MSG_ID_ON_SENDEND = 7;
    private static final int MSG_ID_ON_START = 0;
    private static final int MSG_ID_ON_TIMEOUT = 4;
    private static volatile boolean sIsLoaded;
    private static List<ConnectPrintLogCallback> sLogCallbackList = new ArrayList();
    private static SparseArray<String> sMsgMap = new SparseArray<>();
    private String TAG;
    private IConnectionCallback mCallback = null;
    private int mCreatorSessionNO;
    private ConcurrentHashMap<Integer, Object> mMsgObjectMap = new ConcurrentHashMap<>();
    private MsgProcessor mMsgProc = null;
    private long mNativeContext;
    private AtomicInteger mReferenceNo = new AtomicInteger(1);
    private int mType = 0;

    public interface ConnectPrintLogCallback {
        void printLogCallback(int i, String str);
    }

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup(Object obj, int i, int i2);

    public native boolean connect(String str, int i, String str2, int i2, int i3, int i4);

    public native boolean disconnect();

    public native boolean isRunning();

    public native boolean isSendDone(int i);

    public native boolean postMessage(int i, int i2, int i3);

    public native void removeAllSendData();

    public native void removeSendData(int i);

    public native boolean sendData(byte[] bArr, int i, int i2);

    public native boolean start();

    public native boolean stop();

    public native void wakeUp();

    static {
        sIsLoaded = false;
        try {
            boolean loadLibrary = Native.loadLibrary("connectionbase");
            boolean loadLibrary2 = Native.loadLibrary("milinkgameconnection");
            if (!loadLibrary && loadLibrary2) {
                loadLibrary = Native.loadLibrary("connectionbase");
            }
            sIsLoaded = loadLibrary && loadLibrary2;
            native_init();
        } catch (UnsatisfiedLinkError e) {
            MiLinkLog.e(CLASSTAG, "System.loadLibrary failed", e);
            sIsLoaded = false;
        } catch (Exception e2) {
            MiLinkLog.e(CLASSTAG, "System.loadLibrary failed", e2);
            sIsLoaded = false;
        }
        MiLinkLog.i(CLASSTAG, "loadLibrary return " + sIsLoaded);
        sMsgMap.put(0, "onStart");
        sMsgMap.put(1, "onConnect");
        sMsgMap.put(2, "onDisconnect");
        sMsgMap.put(3, "onError");
        sMsgMap.put(4, "onTimeout");
        sMsgMap.put(5, "onRecv");
        sMsgMap.put(6, "onSendBegin");
        sMsgMap.put(7, "onSendEnd");
        sMsgMap.put(8, "onMsgProc");
    }

    public static boolean isLibLoaded() {
        return sIsLoaded;
    }

    public ConnectionImpl(int i, int i2) {
        if (sIsLoaded) {
            this.mCreatorSessionNO = i;
            this.TAG = String.format("[No:%d]%s", new Object[]{Integer.valueOf(i), CLASSTAG});
            this.mType = i2;
            try {
                native_setup(new WeakReference(this), this.mType, 1);
            } catch (Throwable th) {
                MiLinkLog.e(this.TAG, "native_setup failed", th);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        MiLinkLog.v(this.TAG, "finalize connection");
        try {
            native_finalize();
        } catch (UnsatisfiedLinkError e) {
        }
    }

    public boolean postMessage(int i, Object obj, int i2, MsgProcessor msgProcessor) {
        boolean z = false;
        if (!sIsLoaded) {
            MiLinkLog.e(this.TAG, "postMessage failed:lib is unloaded");
            return z;
        }
        this.mMsgProc = msgProcessor;
        Integer valueOf = Integer.valueOf(z ? 1 : 0);
        if (obj != null) {
            valueOf = Integer.valueOf(this.mReferenceNo.getAndIncrement());
            this.mMsgObjectMap.put(valueOf, obj);
        }
        try {
            return postMessage(i, valueOf.intValue(), i2);
        } catch (Throwable th) {
            MiLinkLog.e(this.TAG, "postMessage failed", th);
            return z;
        }
    }

    public void setCallback(IConnectionCallback iConnectionCallback) {
        this.mCallback = iConnectionCallback;
    }

    public String getServerIP() {
        return null;
    }

    public int getServerPort() {
        return 0;
    }

    public int getConnectionType() {
        return this.mType;
    }

    private static void postEventFromNative(Object obj, int i, int i2, int i3, Object obj2) {
        try {
            ConnectionImpl connectionImpl = (ConnectionImpl) ((WeakReference) obj).get();
            if (connectionImpl != null) {
                MiLinkLog.v(CLASSTAG, "postEventFromNative msg:" + ((String) sMsgMap.get(i)) + ", arg1=" + i2 + ", arg2=" + i3 + " to SessionNo:" + connectionImpl.mCreatorSessionNO);
                switch (i) {
                    case 0:
                        connectionImpl.onStart();
                        return;
                    case 1:
                        connectionImpl.onConnect(i2 != 0, i3);
                        return;
                    case 2:
                        connectionImpl.onDisconnect();
                        return;
                    case 3:
                        connectionImpl.onError(i2);
                        return;
                    case 4:
                        connectionImpl.onTimeOut(i2, i3);
                        return;
                    case 5:
                        connectionImpl.onRecv((byte[]) obj2);
                        return;
                    case 6:
                        connectionImpl.onSendBegin(i2);
                        return;
                    case 7:
                        connectionImpl.onSendEnd(i2);
                        return;
                    case 8:
                        connectionImpl.onMsgProc(i2, obj2, i3);
                        return;
                    default:
                        Log.e(CLASSTAG, "Unknown message type " + i);
                        return;
                }
                MiLinkLog.e(CLASSTAG, "postEventFromNative Exception", e);
            }
        } catch (Exception e) {
            MiLinkLog.e(CLASSTAG, "postEventFromNative Exception", e);
        }
    }

    public static final void printLog(int i, String str) {
        MiLinkLog.d("native", str);
        notifyConnectPrintLogCallback(i, str);
    }

    public static synchronized void addConnectPrintLogCallback(ConnectPrintLogCallback connectPrintLogCallback) {
        synchronized (ConnectionImpl.class) {
            if (connectPrintLogCallback != null) {
                sLogCallbackList.add(connectPrintLogCallback);
            }
        }
    }

    public static synchronized void removeConnectPrintLogCallback(ConnectPrintLogCallback connectPrintLogCallback) {
        synchronized (ConnectionImpl.class) {
            if (connectPrintLogCallback != null) {
                sLogCallbackList.remove(connectPrintLogCallback);
            }
        }
    }

    private static synchronized void notifyConnectPrintLogCallback(int i, String str) {
        synchronized (ConnectionImpl.class) {
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 < sLogCallbackList.size()) {
                    ((ConnectPrintLogCallback) sLogCallbackList.get(i3)).printLogCallback(i, str);
                    i2 = i3 + 1;
                }
            }
        }
    }

    public boolean onStart() {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onStart();
    }

    public boolean onConnect(boolean z, int i) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onConnect(z, i);
    }

    public boolean onDisconnect() {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onDisconnect();
    }

    public boolean onError(int i) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onError(i);
    }

    public boolean onTimeOut(int i, int i2) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onTimeOut(i, i2);
    }

    public boolean onRecv(byte[] bArr) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onRecv(bArr);
    }

    public boolean onSendBegin(int i) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onSendBegin(i);
    }

    public boolean onSendEnd(int i) {
        if (this.mCallback == null) {
            return false;
        }
        return this.mCallback.onSendEnd(i);
    }

    public boolean onMsgProc(int i, Object obj, int i2) {
        if (this.mMsgProc == null) {
            return false;
        }
        this.mMsgProc.onMsgProc(i, this.mMsgObjectMap.remove((Integer) obj), i2);
        return true;
    }
}
