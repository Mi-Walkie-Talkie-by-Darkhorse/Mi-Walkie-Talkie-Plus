package com.mi.milinkforgame.sdk.session;

import android.os.Message;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.interaction.IPacketCallback;

public class MnsPacketDispatcher extends CustomHandlerThread {
    private static final int MSG_DISPATCH_PACKET = 1;
    private static final String TAG = "MnsPacketDispatcher";
    private static MnsPacketDispatcher sInstance = new MnsPacketDispatcher();
    private IPacketCallback mCallBack;

    private MnsPacketDispatcher() {
        super(TAG);
        MiLinkLog.v(TAG, "MnsPacketDispatcher created, threadId=" + Thread.currentThread().getId());
    }

    public static MnsPacketDispatcher getInstance() {
        return sInstance;
    }

    public void setCallback(IPacketCallback iPacketCallback) {
        if (iPacketCallback != null) {
            MiLinkLog.v(TAG, "register packet callback. callback=" + iPacketCallback);
            this.mCallBack = iPacketCallback;
            return;
        }
        MiLinkLog.v(TAG, "register packet callback, but callback is null");
    }

    public void dispatchPacket(PacketData packetData) {
        if (packetData != null) {
            MiLinkLog.v(TAG, "dispatch packet data, seq=" + packetData.getSeqNo());
            Message obtainMessage = obtainMessage();
            obtainMessage.what = 1;
            obtainMessage.obj = packetData;
            sendMessage(obtainMessage);
            return;
        }
        MiLinkLog.v(TAG, "dispatch packet data, but data is null");
    }

    /* access modifiers changed from: protected */
    public void processMessage(Message message) {
        switch (message.what) {
            case 1:
                PacketData packetData = (PacketData) message.obj;
                if (packetData != null) {
                    MiLinkLog.v(TAG, "MSG_DISPATCH_PACKET, seq=" + packetData.getSeqNo());
                    if (this.mCallBack != null) {
                        this.mCallBack.onReceive(packetData);
                        MiLinkLog.v(TAG, "delivery data success");
                        return;
                    }
                    return;
                }
                return;
            default:
                MiLinkLog.e(TAG, "handleMessage unknown msgid = " + message.what);
                return;
        }
    }
}
