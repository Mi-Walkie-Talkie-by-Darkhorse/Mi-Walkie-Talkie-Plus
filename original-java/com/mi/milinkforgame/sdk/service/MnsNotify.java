package com.mi.milinkforgame.sdk.service;

import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.mi.milinkforgame.sdk.data.Const.Event;
import java.io.Serializable;

public class MnsNotify {
    private static Messenger CLIENT_MESSENGER = null;

    public static void setMessenger(Messenger messenger) {
        CLIENT_MESSENGER = messenger;
    }

    public static Messenger getMessenger() {
        return CLIENT_MESSENGER;
    }

    public static final boolean sendEvent(int i) {
        return sendEvent(i, 0, null, null);
    }

    public static final boolean sendEvent(int i, int i2) {
        return sendEvent(i, i2, null, null);
    }

    public static final boolean sendEvent(int i, int i2, Object obj) {
        return sendEvent(i, i2, obj, null);
    }

    public static boolean sendEvent(int i, int i2, Object obj, String str) {
        Messenger messenger = getMessenger();
        if (messenger == null) {
            return false;
        }
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = i2;
        if (obj != null) {
            if (obj instanceof String) {
                obtain.getData().putString(Event.Extra, obj.toString());
            } else if (obj instanceof Integer) {
                obtain.arg2 = ((Integer) obj).intValue();
            } else if (obj instanceof Long) {
                obtain.getData().putLong(Event.Extra, ((Long) obj).longValue());
            } else if (obj instanceof Serializable) {
                obtain.getData().putSerializable(Event.Extra, (Serializable) obj);
            }
        }
        if (str != null) {
            obtain.getData().putString(Event.Extra2, str);
        }
        try {
            messenger.send(obtain);
            return true;
        } catch (RemoteException e) {
            return false;
        }
    }
}
