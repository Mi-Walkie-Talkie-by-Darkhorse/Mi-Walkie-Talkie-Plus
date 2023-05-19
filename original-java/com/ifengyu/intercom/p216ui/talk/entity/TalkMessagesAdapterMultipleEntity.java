package com.ifengyu.intercom.p216ui.talk.entity;

import com.ifengyu.talk.models.HistoryMsgModel;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.TalkMessagesAdapterMultipleEntity */
/* loaded from: classes2.dex */
public class TalkMessagesAdapterMultipleEntity implements Comparable<TalkMessagesAdapterMultipleEntity> {
    public static final int AUDIO_STATE_HISTORY_PALING = 2;
    public static final int AUDIO_STATE_NORMAL = 1;
    public static final int AUDIO_STATE_SPEAKING = 3;
    public static final int TYPE_EVENT = 103;
    public static final int TYPE_OTHER_AUDIO_MSG = 101;
    public static final int TYPE_SELF_AUDIO_MSG = 102;
    private long audioDuration;
    private long audioSid;
    private int audioState;
    private long audioUid;
    private HistoryMsgModel historyEntity;
    private long msgTime;
    private int type;

    public boolean equals(Object obj) {
        if (obj instanceof TalkMessagesAdapterMultipleEntity) {
            TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = (TalkMessagesAdapterMultipleEntity) obj;
            return (getType() == 103 && talkMessagesAdapterMultipleEntity.getType() == 103) ? (getHistoryEntity() == null || talkMessagesAdapterMultipleEntity.getHistoryEntity() == null || getHistoryEntity().getId() != talkMessagesAdapterMultipleEntity.getHistoryEntity().getId()) ? false : true : getAudioSid() == talkMessagesAdapterMultipleEntity.getAudioSid();
        }
        return false;
    }

    public long getAudioDuration() {
        return this.audioDuration;
    }

    public long getAudioSid() {
        return this.audioSid;
    }

    public int getAudioState() {
        return this.audioState;
    }

    public long getAudioUid() {
        return this.audioUid;
    }

    public HistoryMsgModel getHistoryEntity() {
        return this.historyEntity;
    }

    public long getMsgTime() {
        return this.msgTime;
    }

    public int getType() {
        return this.type;
    }

    public void setAudioDuration(long j) {
        this.audioDuration = j;
    }

    public void setAudioSid(long j) {
        this.audioSid = j;
    }

    public void setAudioState(int i) {
        this.audioState = i;
    }

    public void setAudioUid(long j) {
        this.audioUid = j;
    }

    public void setHistoryEntity(HistoryMsgModel historyMsgModel) {
        this.historyEntity = historyMsgModel;
    }

    public void setMsgTime(long j) {
        this.msgTime = j;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
        return Long.compare(getMsgTime(), talkMessagesAdapterMultipleEntity.getMsgTime());
    }
}
