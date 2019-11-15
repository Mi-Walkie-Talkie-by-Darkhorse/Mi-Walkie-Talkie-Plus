package com.mi.mimsgsdk.log.upload;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.proto.Utils.UploadLogPush;
import com.mi.mimsgsdk.service.MnsPacketDispatcher.PacketDataHandler;
import com.mi.mimsgsdk.utils.MnsCommand;

public class LogUploadCommandListener implements PacketDataHandler {
    private static final String TAG = LogUploadCommandListener.class.getSimpleName();

    public boolean processPacketData(@NonNull PacketData packetData) {
        ClientLog.w(TAG, "received upload log push");
        if (packetData.getData() != null) {
            try {
                MessageController.getInstance().uploadLogs(false, UploadLogParameter.parseFrom(UploadLogPush.parseFrom(packetData.getData())));
            } catch (InvalidProtocolBufferException e) {
                ClientLog.e(TAG, "parse UploadLogPush fail", e);
            }
        }
        return false;
    }

    public boolean isAcceptPacket(@NonNull PacketData packetData) {
        return !TextUtils.isEmpty(packetData.getCommand()) && MnsCommand.UPLOAD_LOG.equals(packetData.getCommand());
    }
}
