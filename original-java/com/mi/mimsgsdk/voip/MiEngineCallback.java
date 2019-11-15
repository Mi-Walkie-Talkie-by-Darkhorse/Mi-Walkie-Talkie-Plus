package com.mi.mimsgsdk.voip;

import android.os.Message;
import com.mi.mimsgsdk.service.aidl.RetValue;
import java.util.List;

public interface MiEngineCallback {
    void onJoinConferenceFailed(RetValue retValue);

    void onJoinRes(Message message);

    void onSpeakers(List<Speaker> list);

    void onUserJoin(String str);

    void onUserLeave(String str);

    void onUserMute(String str, boolean z);

    void onWriteLog(Message message);
}
