package com.mi.mimsgsdk.service;

import android.os.RemoteException;
import com.mi.mimsgsdk.service.aidl.ISendCallback.Stub;
import com.mi.mimsgsdk.service.aidl.MsgPacketData;

public class SendListener extends Stub {
    public void onRsponse(MsgPacketData msgPacketData) throws RemoteException {
    }

    public void onFailed(int i, String str) throws RemoteException {
    }
}
