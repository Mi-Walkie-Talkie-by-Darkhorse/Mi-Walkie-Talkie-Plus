package com.ifengyu.intercom.ui.imui.ui.chat;

import android.os.HandlerThread;
import android.os.Looper;
import com.ifengyu.library.util.j;
import com.ifengyu.library.util.l;
import com.mi.mimsgsdk.IMXMsgCallback;
import com.mi.mimsgsdk.MsgSdkManager;

public class MsgManager {
    private static final String TAG = MsgManager.class.getSimpleName();
    private static HandlerThread mWorkerThread;
    private static volatile MsgSdkManager sInstance;

    public static MsgSdkManager getManager() {
        if (sInstance == null) {
            synchronized (MsgManager.class) {
                if (sInstance == null) {
                    sInstance = new MsgSdkManager(l.a());
                }
            }
        }
        return sInstance;
    }

    private static Looper getWorkerLooper() {
        if (mWorkerThread == null) {
            mWorkerThread = new HandlerThread(TAG);
            mWorkerThread.start();
        }
        return mWorkerThread.getLooper();
    }

    public static void init(String str, String str2, String str3, String str4, String str5, IMXMsgCallback iMXMsgCallback) {
        j.a().execute(new MsgManager$$Lambda$0(str, str2, str3, str4, str5, iMXMsgCallback));
    }
}
