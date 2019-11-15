package com.mi.mimsgsdk;

import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.RetValue;
import com.mi.mimsgsdk.video.VideoBody;
import java.util.List;

public interface IMXMsgCallback {
    void onConnectionStateChanged(int i);

    void onDataSendResponse(int i, RetValue retValue, MiMessage miMessage);

    void onDownloadMediaFileResponse(int i, RetValue retValue);

    void onInitResult(RetValue retValue);

    boolean onReceiveMessage(int i, MiMessage miMessage);

    boolean onReceiveOldGroupMessage(String str, List<MiMessage> list);

    boolean onReceiveOldUserMessage(List<MiMessage> list);

    void onUploadLogsResponse(RetValue retValue);

    void onUploadVideoResponse(RetValue retValue, VideoBody videoBody);
}
