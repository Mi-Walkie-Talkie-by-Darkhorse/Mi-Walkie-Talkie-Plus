package com.mi.mimsgsdk.net;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.InvalidProtocolBufferException;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.mimsgsdk.controller.MessageController;

public abstract class BaseMiLinkRequest<Req extends GeneratedMessage, Rsp extends GeneratedMessage> {
    private final String TAG;
    protected Req mRequest;
    private int mTimeout = 10000;

    /* access modifiers changed from: protected */
    @NonNull
    public abstract String getCmd();

    /* access modifiers changed from: protected */
    @NonNull
    public abstract Rsp parseFrom(@NonNull byte[] bArr) throws InvalidProtocolBufferException;

    public BaseMiLinkRequest(@NonNull String str) {
        this.TAG = str;
    }

    /* access modifiers changed from: protected */
    public void setTimeout(int i) {
        if (i > 0) {
            this.mTimeout = i;
        }
    }

    private void checkBeforeSend() {
        if (this.mRequest == null) {
            throw new IllegalStateException("mRequest is null, do you forget to assign it in constructor?");
        }
    }

    private PacketData getRequestPacketData(boolean z) {
        PacketData packetData = new PacketData();
        packetData.setCommand(getCmd());
        packetData.setData(this.mRequest.toByteArray());
        ClientLog.d(this.TAG, (z ? "sync" : "async") + Token.SEPARATOR + getCmd() + " request:" + this.mRequest);
        return packetData;
    }

    public int getTimeout() {
        return this.mTimeout;
    }

    @Nullable
    @WorkerThread
    public Rsp sendSync() {
        checkBeforeSend();
        PacketData sendRequestSync = MessageController.getInstance().sendRequestSync(getRequestPacketData(true), this.mTimeout);
        if (sendRequestSync == null) {
            ClientLog.w(this.TAG, getCmd() + " rspData is null");
            return null;
        } else if (sendRequestSync.getData() == null) {
            ClientLog.w(this.TAG, getCmd() + " rspData.getData() is null");
            return null;
        } else {
            try {
                GeneratedMessage parseFrom = parseFrom(sendRequestSync.getData());
                ClientLog.d(this.TAG, getCmd() + " rsp:" + parseFrom);
                return parseFrom;
            } catch (InvalidProtocolBufferException e) {
                ClientLog.e(this.TAG, getCmd() + " parse byte[] to response fail", e);
                return null;
            }
        }
    }

    public void sendAsync() {
        sendAsync(0);
    }

    public void sendAsync(int i) {
        sendAsync(i, null);
    }

    public void sendAsync(int i, @Nullable ResponseListener responseListener) {
        MessageController.getInstance().sendRequestAsync(getRequestPacketData(false), i, responseListener);
    }
}
