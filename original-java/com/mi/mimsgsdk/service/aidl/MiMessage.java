package com.mi.mimsgsdk.service.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.protobuf.InvalidProtocolBufferException;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.message.AudioBody;
import com.mi.mimsgsdk.message.CustomBody;
import com.mi.mimsgsdk.message.DefaultBody;
import com.mi.mimsgsdk.message.MiMsgBody;
import com.mi.mimsgsdk.message.TextBody;
import com.mi.mimsgsdk.video.VideoBody;

public class MiMessage implements Parcelable {
    public static final Creator<MiMessage> CREATOR = new Creator() {
        public MiMessage createFromParcel(Parcel parcel) {
            return new MiMessage(parcel);
        }

        public MiMessage[] newArray(int i) {
            return new MiMessage[i];
        }
    };
    public MiMsgBody body;
    public int bodyType;
    public String from;
    public long msgId;
    public long msgSeq;
    public int sendTime;
    public String to;

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.msgId);
        parcel.writeLong(this.msgSeq);
        parcel.writeInt(this.sendTime);
        parcel.writeString(this.from);
        parcel.writeString(this.to);
        parcel.writeInt(this.bodyType);
        if (this.body == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(this.body.codeBody().length);
        }
        if (this.body != null) {
            parcel.writeByteArray(this.body.codeBody());
        }
    }

    public void setBody(MiMsgBody miMsgBody) {
        this.body = miMsgBody;
    }

    public MiMessage(Parcel parcel) {
        this.msgId = parcel.readLong();
        this.msgSeq = parcel.readLong();
        this.sendTime = parcel.readInt();
        this.from = parcel.readString();
        this.to = parcel.readString();
        this.bodyType = parcel.readInt();
        int readInt = parcel.readInt();
        if (readInt > 0) {
            byte[] bArr = new byte[readInt];
            parcel.readByteArray(bArr);
            try {
                switch (this.bodyType) {
                    case 0:
                        CustomBody customBody = new CustomBody();
                        customBody.setData(bArr);
                        this.body = customBody;
                        return;
                    case 1:
                        TextBody textBody = new TextBody();
                        textBody.decodeBody(bArr);
                        this.body = textBody;
                        return;
                    case 2:
                        AudioBody audioBody = new AudioBody();
                        audioBody.decodeBody(bArr);
                        this.body = audioBody;
                        return;
                    case 3:
                        VideoBody videoBody = new VideoBody();
                        videoBody.decodeBody(bArr);
                        this.body = videoBody;
                        return;
                    default:
                        DefaultBody defaultBody = new DefaultBody();
                        defaultBody.setTips("mimessage parcel can not recognize");
                        defaultBody.setContent(bArr);
                        this.body = defaultBody;
                        return;
                }
            } catch (InvalidProtocolBufferException e) {
                ClientLog.e("MiMessage", "parse pb failed", e);
            }
            ClientLog.e("MiMessage", "parse pb failed", e);
        }
    }

    public MiMessage() {
    }
}
