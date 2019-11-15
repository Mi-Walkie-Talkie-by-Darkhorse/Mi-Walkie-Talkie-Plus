package com.mi.mimsgsdk;

import android.content.Context;
import android.support.annotation.WorkerThread;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.mimsgsdk.service.aidl.MiMessage;

public interface MsgApiInterface {
    boolean destroy();

    String getVersion(Context context);

    @WorkerThread
    boolean init(String str, String str2, String str3, String str4, String str5, IMXMsgCallback iMXMsgCallback);

    boolean pullOldGroupMessage(String str, long j, int i);

    boolean pullOldUserMessage(long j, int i);

    boolean sendAudioMessage(int i, MiMessage miMessage, int i2);

    boolean sendGroupMessage(MiMessage miMessage, int i);

    boolean sendProtoMessage(PacketData packetData, int i, ResponseListener responseListener);

    boolean sendRoomMessage(MiMessage miMessage, int i);

    boolean sendUserMessage(MiMessage miMessage, int i);

    boolean setSyncLimit(int i);

    boolean syncGroupMessage(String str);
}
