package com.mi.mimsgsdk.voip;

import android.os.Message;
import android.support.annotation.WorkerThread;
import com.mi.mimsgsdk.service.aidl.RetValue;
import io.agora.rtc.a.C0078a;

@WorkerThread
public interface MiVoipEngineCallback {
    void onJoinConferenceFailed(RetValue retValue);

    void onJoinRes(Message message);

    void onSpeakers(C0078a[] aVarArr);

    void onUserJoin(int i);

    void onUserLeave(int i);

    void onUserMute(int i, boolean z);

    void onWriteLog(Message message);
}
