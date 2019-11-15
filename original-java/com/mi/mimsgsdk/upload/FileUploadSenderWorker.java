package com.mi.mimsgsdk.upload;

import android.support.annotation.CheckResult;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.proto.BCKS3.AuthRequest;
import com.mi.mimsgsdk.proto.BCKS3.AuthRequest.Builder;
import com.mi.mimsgsdk.proto.BCKS3.AuthResponse;
import com.mi.mimsgsdk.proto.BCKS3.AuthType;
import com.mi.mimsgsdk.utils.StringUtils;

public class FileUploadSenderWorker {
    private static final String TAG = FileUploadSenderWorker.class.getName();

    @Nullable
    @CheckResult
    public static AuthResponse getKs3AuthToken(long j, String str, String str2, String str3, String str4, String str5, String str6, int i) {
        AuthResponse authResponse = null;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str4)) {
            Builder newBuilder = AuthRequest.newBuilder();
            ClientLog.d(TAG, "upload rid = " + j);
            newBuilder.setRid(j);
            newBuilder.setHttpVerb(str);
            newBuilder.setContentMd5(str2);
            newBuilder.setContentType(str3);
            newBuilder.setDate("");
            newBuilder.setCanonicalizedHeaders(str5);
            newBuilder.setSuffix(str6);
            if (i == 1) {
                newBuilder.setAuthType(AuthType.HEAD);
            }
            newBuilder.setVuid(0);
            AuthRequest build = newBuilder.build();
            try {
                PacketData packetData = new PacketData();
                packetData.setCommand("opensdk.mfas.auth");
                packetData.setData(build.toByteArray());
                ClientLog.d(TAG, "MsgPacketData is " + packetData.toString());
                ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.1");
                PacketData sendRequestSync = MessageController.getInstance().sendRequestSync(packetData, 10000);
                ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.2");
                authResponse = processPacketData(sendRequestSync);
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
                ClientLog.v(TAG, e.toString());
            } finally {
                ClientLog.v(TAG, "sendAuthRequest AuthRequest = " + build.toString());
            }
        }
        return authResponse;
    }

    public static void testMfasAuth() {
    }

    @Nullable
    private static AuthResponse processPacketData(@Nullable PacketData packetData) {
        if (packetData == null) {
            return null;
        }
        ClientLog.d(TAG, "authPacketData is " + packetData.toString());
        ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.3");
        ClientLog.v(TAG, "processPacketData command=" + packetData.getCommand());
        String command = packetData.getCommand();
        if (TextUtils.isEmpty(command) || !command.equals("opensdk.mfas.auth")) {
            return null;
        }
        ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.4");
        try {
            ClientLog.d(TAG, "服务器返回数据 :  " + new String(packetData.getData()));
            ClientLog.d(TAG, "服务器返回数据 HexString : " + StringUtils.getHexString(packetData.getData()));
            ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.5");
            AuthResponse parseFrom = AuthResponse.parseFrom(packetData.getData());
            ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.6, errorCode = " + parseFrom.getErrorCode());
            if (parseFrom.getErrorCode() == 0) {
                return parseFrom;
            }
            ClientLog.d(TAG, "UploadFileLoad  startUploadFile start upload 2.7");
            return null;
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(TAG, e.toString());
            return null;
        }
    }
}
