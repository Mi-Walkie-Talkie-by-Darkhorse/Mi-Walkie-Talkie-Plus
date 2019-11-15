package com.mi.mimsgsdk.service;

import android.os.Message;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.CustomHandlerThread;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.proto.MiMsgProto;
import com.mi.mimsgsdk.proto.MiMsgProto.PushGroupMsg;
import com.mi.mimsgsdk.proto.MiMsgProto.PushRoomMsg;
import com.mi.mimsgsdk.proto.MiMsgProto.PushUserMsg;
import com.mi.mimsgsdk.proto.MiMsgProto.SyncGroupMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.SyncUserMsgResponse;
import com.mi.mimsgsdk.service.MnsPacketDispatcher.PacketDataHandler;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.utils.BusinessDBUtils;
import com.mi.mimsgsdk.utils.MnsCommand;

public class MessageHandler implements PacketDataHandler {
    private static final String TAG = "MessageHandler";
    private volatile CustomHandlerThread mHandlerThread;

    private void runOnThread(Runnable runnable) {
        initHandlerThread();
        this.mHandlerThread.post(runnable);
    }

    private void initHandlerThread() {
        if (this.mHandlerThread == null) {
            this.mHandlerThread = new CustomHandlerThread(TAG) {
                /* access modifiers changed from: protected */
                public void processMessage(Message message) {
                }
            };
        }
    }

    public MessageHandler() {
        initHandlerThread();
    }

    public boolean processPacketData(@NonNull final PacketData packetData) {
        runOnThread(new Runnable() {
            /* JADX WARNING: Code restructure failed: missing block: B:43:0x00c7, code lost:
                if (r2.equals(com.mi.mimsgsdk.utils.MnsCommand.OPENSDK_GROUPMSG_SYNC) != false) goto L_0x00a8;
             */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r5 = this;
                    r0 = 0
                    r1 = -1
                    java.lang.String r2 = "MessageHandler"
                    java.lang.StringBuilder r3 = new java.lang.StringBuilder
                    r3.<init>()
                    java.lang.String r4 = "processPacketData command="
                    java.lang.StringBuilder r3 = r3.append(r4)
                    com.mi.milinkforgame.sdk.aidl.PacketData r4 = r2
                    java.lang.String r4 = r4.getCommand()
                    java.lang.StringBuilder r3 = r3.append(r4)
                    java.lang.String r3 = r3.toString()
                    com.mi.milinkforgame.sdk.client.ClientLog.v(r2, r3)
                    com.mi.milinkforgame.sdk.aidl.PacketData r2 = r2
                    java.lang.String r2 = r2.getCommand()
                    boolean r3 = android.text.TextUtils.isEmpty(r2)
                    if (r3 != 0) goto L_0x004b
                    java.lang.String r3 = "opensdk.usermsg"
                    boolean r3 = r2.startsWith(r3)
                    if (r3 == 0) goto L_0x007b
                    com.mi.milinkforgame.sdk.aidl.PacketData r3 = r2
                    boolean r3 = r3.isPushPacket()
                    if (r3 == 0) goto L_0x0051
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2     // Catch:{ InvalidProtocolBufferException -> 0x004c }
                    byte[] r0 = r0.getData()     // Catch:{ InvalidProtocolBufferException -> 0x004c }
                    com.mi.mimsgsdk.proto.MiMsgProto$PushUserMsg r0 = com.mi.mimsgsdk.proto.MiMsgProto.PushUserMsg.parseFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x004c }
                    com.mi.mimsgsdk.service.MessageHandler r1 = com.mi.mimsgsdk.service.MessageHandler.this     // Catch:{ InvalidProtocolBufferException -> 0x004c }
                    r1.onUserMessagePush(r0)     // Catch:{ InvalidProtocolBufferException -> 0x004c }
                L_0x004b:
                    return
                L_0x004c:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x004b
                L_0x0051:
                    int r3 = r2.hashCode()     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    switch(r3) {
                        case -789899983: goto L_0x0071;
                        default: goto L_0x0058;
                    }     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                L_0x0058:
                    switch(r1) {
                        case 0: goto L_0x005c;
                        default: goto L_0x005b;
                    }     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                L_0x005b:
                    goto L_0x004b
                L_0x005c:
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    byte[] r0 = r0.getData()     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    com.mi.mimsgsdk.proto.MiMsgProto$SyncUserMsgResponse r0 = com.mi.mimsgsdk.proto.MiMsgProto.SyncUserMsgResponse.parseFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    com.mi.mimsgsdk.service.MessageHandler r1 = com.mi.mimsgsdk.service.MessageHandler.this     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    r1.onSyncUserMessageResponse(r0)     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    goto L_0x004b
                L_0x006c:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x004b
                L_0x0071:
                    java.lang.String r3 = "opensdk.usermsg.sync"
                    boolean r2 = r2.equals(r3)     // Catch:{ InvalidProtocolBufferException -> 0x006c }
                    if (r2 == 0) goto L_0x0058
                    r1 = r0
                    goto L_0x0058
                L_0x007b:
                    java.lang.String r3 = "opensdk.groupmsg"
                    boolean r3 = r2.startsWith(r3)
                    if (r3 == 0) goto L_0x00ca
                    com.mi.milinkforgame.sdk.aidl.PacketData r3 = r2
                    boolean r3 = r3.isPushPacket()
                    if (r3 == 0) goto L_0x00a0
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2     // Catch:{ InvalidProtocolBufferException -> 0x009b }
                    byte[] r0 = r0.getData()     // Catch:{ InvalidProtocolBufferException -> 0x009b }
                    com.mi.mimsgsdk.proto.MiMsgProto$PushGroupMsg r0 = com.mi.mimsgsdk.proto.MiMsgProto.PushGroupMsg.parseFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x009b }
                    com.mi.mimsgsdk.service.MessageHandler r1 = com.mi.mimsgsdk.service.MessageHandler.this     // Catch:{ InvalidProtocolBufferException -> 0x009b }
                    r1.onGroupMessagePush(r0)     // Catch:{ InvalidProtocolBufferException -> 0x009b }
                    goto L_0x004b
                L_0x009b:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x004b
                L_0x00a0:
                    int r3 = r2.hashCode()     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    switch(r3) {
                        case 221068457: goto L_0x00c1;
                        default: goto L_0x00a7;
                    }     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                L_0x00a7:
                    r0 = r1
                L_0x00a8:
                    switch(r0) {
                        case 0: goto L_0x00ac;
                        default: goto L_0x00ab;
                    }     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                L_0x00ab:
                    goto L_0x004b
                L_0x00ac:
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    byte[] r0 = r0.getData()     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    com.mi.mimsgsdk.proto.MiMsgProto$SyncGroupMsgResponse r0 = com.mi.mimsgsdk.proto.MiMsgProto.SyncGroupMsgResponse.parseFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    com.mi.mimsgsdk.service.MessageHandler r1 = com.mi.mimsgsdk.service.MessageHandler.this     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    r1.onSyncGroupMessageResponse(r0)     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    goto L_0x004b
                L_0x00bc:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x004b
                L_0x00c1:
                    java.lang.String r3 = "opensdk.groupmsg.sync"
                    boolean r2 = r2.equals(r3)     // Catch:{ InvalidProtocolBufferException -> 0x00bc }
                    if (r2 == 0) goto L_0x00a7
                    goto L_0x00a8
                L_0x00ca:
                    java.lang.String r0 = "opensdk.roommsg"
                    boolean r0 = r2.startsWith(r0)
                    if (r0 == 0) goto L_0x004b
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2
                    boolean r0 = r0.isPushPacket()
                    if (r0 == 0) goto L_0x004b
                    com.mi.milinkforgame.sdk.aidl.PacketData r0 = r2     // Catch:{ InvalidProtocolBufferException -> 0x00eb }
                    byte[] r0 = r0.getData()     // Catch:{ InvalidProtocolBufferException -> 0x00eb }
                    com.mi.mimsgsdk.proto.MiMsgProto$PushRoomMsg r0 = com.mi.mimsgsdk.proto.MiMsgProto.PushRoomMsg.parseFrom(r0)     // Catch:{ InvalidProtocolBufferException -> 0x00eb }
                    com.mi.mimsgsdk.service.MessageHandler r1 = com.mi.mimsgsdk.service.MessageHandler.this     // Catch:{ InvalidProtocolBufferException -> 0x00eb }
                    r1.onRoomMessagePush(r0)     // Catch:{ InvalidProtocolBufferException -> 0x00eb }
                    goto L_0x004b
                L_0x00eb:
                    r0 = move-exception
                    com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
                    goto L_0x004b
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.service.MessageHandler.AnonymousClass2.run():void");
            }
        });
        return true;
    }

    public boolean isAcceptPacket(@NonNull PacketData packetData) {
        if (TextUtils.isEmpty(packetData.getCommand()) || !packetData.getCommand().startsWith(MnsCommand.OPENSDK)) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void onSyncUserMessageResponse(SyncUserMsgResponse syncUserMsgResponse) {
        if (syncUserMsgResponse != null) {
            ClientLog.d(TAG, "onSyncUserMessageResponse messageResponse=" + syncUserMsgResponse.toString());
            if (syncUserMsgResponse.getRetCode() == 0) {
                int msgsCount = syncUserMsgResponse.getMsgsCount();
                for (int i = 0; i < msgsCount; i++) {
                    MiMessage parseMessage = MessageController.parseMessage(syncUserMsgResponse.getMsgs(i));
                    if (parseMessage != null) {
                        BusinessDBUtils.insertUserRecordDb(parseMessage);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void onUserMessagePush(PushUserMsg pushUserMsg) {
        if (pushUserMsg != null) {
            ClientLog.v(TAG, "onUserMessagePush messagePush=" + pushUserMsg.toString());
            MiMsgProto.Message msg = pushUserMsg.getMsg();
            if (msg != null && msg.getBody() != null) {
                MiMessage parseMessage = MessageController.parseMessage(msg);
                if (parseMessage != null) {
                    BusinessDBUtils.insertUserRecord(parseMessage);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void onSyncGroupMessageResponse(SyncGroupMsgResponse syncGroupMsgResponse) {
        if (syncGroupMsgResponse != null) {
            ClientLog.v(TAG, "onSyncGroupMessageResponse messageResponse=" + syncGroupMsgResponse.toString());
            if (syncGroupMsgResponse.getRetCode() == 0) {
                int msgsCount = syncGroupMsgResponse.getMsgsCount();
                for (int i = 0; i < msgsCount; i++) {
                    MiMessage parseMessage = MessageController.parseMessage(syncGroupMsgResponse.getMsgs(i));
                    if (parseMessage != null) {
                        BusinessDBUtils.insertGroupRecordDb(parseMessage);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void onGroupMessagePush(PushGroupMsg pushGroupMsg) {
        if (pushGroupMsg != null) {
            ClientLog.v(TAG, "onGroupMessagePush messagePush=" + pushGroupMsg.toString());
            MiMsgProto.Message msg = pushGroupMsg.getMsg();
            if (msg != null && msg.getBody() != null) {
                MiMessage parseMessage = MessageController.parseMessage(msg);
                if (parseMessage != null) {
                    BusinessDBUtils.insertGroupRecord(parseMessage);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void onRoomMessagePush(PushRoomMsg pushRoomMsg) {
        if (pushRoomMsg != null) {
            ClientLog.v(TAG, "onRoomMessagePush messagePush=" + pushRoomMsg.toString());
            MiMsgProto.Message msg = pushRoomMsg.getMsg();
            if (msg != null && msg.getBody() != null) {
                MiMessage parseMessage = MessageController.parseMessage(msg);
                if (parseMessage != null) {
                    MessageController.getInstance().onReceiveGameMessage(2, parseMessage);
                }
            }
        }
    }
}
