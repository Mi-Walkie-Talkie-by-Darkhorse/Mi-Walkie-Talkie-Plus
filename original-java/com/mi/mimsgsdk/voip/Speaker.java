package com.mi.mimsgsdk.voip;

public class Speaker {
    public long speaderVolume;
    public String speakerGuid;

    public void setSpeakerUid(String str) {
        this.speakerGuid = str;
    }

    public String getSpeakerUid() {
        return this.speakerGuid;
    }

    public void setVolume(long j) {
        this.speaderVolume = j;
    }

    public long getVolume() {
        return this.speaderVolume;
    }
}
