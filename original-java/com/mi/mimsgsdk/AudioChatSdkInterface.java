package com.mi.mimsgsdk;

import java.util.ArrayList;

public interface AudioChatSdkInterface {

    public interface MiMsgCallBack {
        void onConnectionLost();

        void onError(int i);

        void onInit(boolean z);

        void onJoinSuccess();

        void onLeave(String str);

        void onRemoteMute(int i, boolean z);

        void onSpeakerReport(ArrayList arrayList);

        void onUserJoined(int i);
    }

    void destory();

    void init(MiMsgCallBack miMsgCallBack);

    void joinConference(String str, long j, String str2);

    void leaveConference();

    void muteAll();

    void muteSelf();

    void muteUser(long j);

    void unMuteAll();

    void unMuteSelf();

    void unMuteUser(long j);
}
