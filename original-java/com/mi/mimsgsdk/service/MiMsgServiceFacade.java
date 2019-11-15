package com.mi.mimsgsdk.service;

import android.content.Context;
import android.os.Process;
import android.os.RemoteException;
import android.support.annotation.BinderThread;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.data.ClientAppInfo;
import com.mi.mimsgsdk.BuildConfig;
import com.mi.mimsgsdk.controller.MessageController;
import com.mi.mimsgsdk.log.upload.LogUploadCommandListener;
import com.mi.mimsgsdk.log.upload.UploadLogParameter;
import com.mi.mimsgsdk.service.aidl.ICustomCallback;
import com.mi.mimsgsdk.service.aidl.IMessageListener;
import com.mi.mimsgsdk.service.aidl.IMiMsgService.Stub;
import com.mi.mimsgsdk.service.aidl.ISendCallback;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.MsgPacketData;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.VersionUtils;
import java.util.Locale;

public class MiMsgServiceFacade extends Stub {
    private static final String TAG = MiMsgServiceFacade.class.getSimpleName();
    private Context mContext;

    public MiMsgServiceFacade(Context context, int i) {
        this.mContext = context;
        GlobalData.initialize(context, i);
        Global.init(this.mContext, new ClientAppInfo(i, VersionUtils.getCurrentVersionCode(this.mContext), VersionUtils.getVersionName(this.mContext), "RELEASE", "MiMsgSdk", BuildConfig.APPLICATION_ID, "", Locale.getDefault().toString(), "com.mi.mimsgsdk:milink"));
        MnsPacketDispatcher.getInstance().addPacketDataHandler(new MessageHandler());
        MnsPacketDispatcher.getInstance().addPacketDataHandler(new LogUploadCommandListener());
    }

    @BinderThread
    public boolean init(String str, String str2, String str3, String str4, String str5, IMessageListener iMessageListener) throws RemoteException {
        return MessageController.getInstance().init(this.mContext, str, str2, str3, str4, str5, iMessageListener);
    }

    public boolean setMessageListener(IMessageListener iMessageListener) throws RemoteException {
        return MessageController.getInstance().setMessageListener(iMessageListener);
    }

    public boolean sendUserMessage(MiMessage miMessage, int i) throws RemoteException {
        return MessageController.getInstance().sendUserMessage(miMessage, i);
    }

    public boolean sendGroupMessage(MiMessage miMessage, int i) throws RemoteException {
        return MessageController.getInstance().sendGroupMessage(miMessage, i);
    }

    public boolean sendRoomMessage(MiMessage miMessage, int i) throws RemoteException {
        return MessageController.getInstance().sendRoomMessage(miMessage, i);
    }

    public boolean sendAudioMessage(int i, MiMessage miMessage, int i2) throws RemoteException {
        return MessageController.getInstance().sendAudioMessage(i, miMessage, i2);
    }

    public boolean getConferenceMember(long j) throws RemoteException {
        return MessageController.getInstance().getConferenceMember(j);
    }

    public boolean getGuidfromMediaId(int i, int i2) throws RemoteException {
        return MessageController.getInstance().getGuidfromMediaId(i, i2);
    }

    public boolean sendChannelCheckMessage(long j, int i, String str) throws RemoteException {
        return MessageController.getInstance().sendChannelCheckMessage(j, i, str);
    }

    public boolean syncGroupMessage(String str) {
        return MessageController.getInstance().syncGroupMessage(str);
    }

    public boolean pullOldUserMessage(long j, int i) {
        return MessageController.getInstance().pullOldUserMessage(j, i);
    }

    public boolean pullOldGroupMessage(String str, long j, int i) {
        return MessageController.getInstance().pullOldGroupMessage(str, j, i);
    }

    public boolean setSyncLimit(int i) throws RemoteException {
        return MessageController.getInstance().setSyncLimit(i);
    }

    public boolean destroy() throws RemoteException {
        return MessageController.getInstance().destroy();
    }

    public int getProcessPid() throws RemoteException {
        return Process.myPid();
    }

    public boolean isAlive() throws RemoteException {
        return true;
    }

    public boolean sendVideoMessage(int i, MiMessage miMessage, int i2) throws RemoteException {
        return MessageController.getInstance().sendVideoMessage(i, miMessage, i2);
    }

    public void uploadVideo(MiMessage miMessage) throws RemoteException {
        MessageController.getInstance().uploadVideo(miMessage);
    }

    public void downloadMediaFile(int i, String str) throws RemoteException {
        MessageController.getInstance().downloadMediaFile(i, str);
    }

    public void uploadLogs(String str, int i, long j, boolean z, String str2) {
        UploadLogParameter uploadLogParameter = new UploadLogParameter();
        uploadLogParameter.setSubPath(str);
        uploadLogParameter.setLimit(i);
        uploadLogParameter.setMaxLength(j);
        uploadLogParameter.setStillUploadWithoutWifi(z);
        uploadLogParameter.setFeedbackMessage(str2);
        MessageController.getInstance().uploadLogs(true, uploadLogParameter);
    }

    public boolean uploadImage(String str, ICustomCallback iCustomCallback) throws RemoteException {
        return MessageController.getInstance().uploadImage(str, iCustomCallback);
    }

    public void scribe(String str) throws RemoteException {
        MessageController.getInstance().scribe(str);
    }

    public void sendAsyncWithResponse(MsgPacketData msgPacketData, int i, ISendCallback iSendCallback) throws RemoteException {
        MessageController.getInstance().sendAsyncWithResponse(msgPacketData.toService(), i, iSendCallback);
    }
}
