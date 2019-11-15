package com.ifengyu.im.imservice.services;

import android.annotation.SuppressLint;
import com.mi.mimsgsdk.IMXMsgCallback;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.RetValue;
import com.mi.mimsgsdk.video.VideoBody;
import java.util.List;

public class MxMsgCallbackAdapter implements IMXMsgCallback {
    private static final String TAG = MxMsgCallbackAdapter.class.getSimpleName();
    private MessageService mMessageService;

    public MxMsgCallbackAdapter(MessageService messageService) {
        this.mMessageService = messageService;
    }

    public void onConnectionStateChanged(int i) {
        this.mMessageService.handleConnectionStateChanged(i);
    }

    public void onDataSendResponse(int i, RetValue retValue, MiMessage miMessage) {
        this.mMessageService.handleDataSendResponse(i, retValue, miMessage);
    }

    public void onDownloadMediaFileResponse(int i, RetValue retValue) {
    }

    @SuppressLint({"DefaultLocale"})
    public void onInitResult(RetValue retValue) {
        this.mMessageService.setInitialized(retValue.retCode == 0);
    }

    @SuppressLint({"DefaultLocale"})
    public boolean onReceiveMessage(int i, MiMessage miMessage) {
        return this.mMessageService.handleReceiveMessage(i, miMessage);
    }

    public boolean onReceiveOldGroupMessage(String str, List<MiMessage> list) {
        return this.mMessageService.handleReceiveOldGroupMessage(str, list);
    }

    public boolean onReceiveOldUserMessage(List<MiMessage> list) {
        return false;
    }

    public void onUploadLogsResponse(RetValue retValue) {
    }

    public void onUploadVideoResponse(RetValue retValue, VideoBody videoBody) {
    }
}
