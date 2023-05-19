package com.ifengyu.intercom.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.google.android.material.timepicker.TimeModel;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p189l.p190a.p196c.ChToneConstants;
import com.ifengyu.library.utils.UIUtils;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"config_id"}, entity = ConfigFileModel.class, onDelete = 5, parentColumns = {"id"})}, indices = {@Index({"config_id"})}, tableName = "channel")
/* loaded from: classes2.dex */
public class ChannelModel implements Parcelable, Comparable<ChannelModel> {
    public static final int CHANNEL_TYPE_CUSTOM = 2;
    public static final int CHANNEL_TYPE_REMOTE = 1;
    public static final Parcelable.Creator<ChannelModel> CREATOR = new Parcelable.Creator<ChannelModel>() { // from class: com.ifengyu.intercom.models.ChannelModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelModel createFromParcel(Parcel parcel) {
            return new ChannelModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChannelModel[] newArray(int i) {
            return new ChannelModel[i];
        }
    };
    @ColumnInfo(name = "channel_name")
    private String channelName;
    @ColumnInfo(name = "channel_seq")
    private int channelSeq;
    @ColumnInfo(name = "channel_type")
    private int channelType;
    @ColumnInfo(name = "config_id")
    private Long configId;
    @PrimaryKey(autoGenerate = true)

    /* renamed from: id */
    private Long f14386id;
    @ColumnInfo(name = "receive_freq")
    private int receiveFreq;
    @ColumnInfo(name = "receive_tone_type")
    private int receiveToneType;
    @ColumnInfo(name = "receive_tone_value")
    private int receiveToneValue;
    @ColumnInfo(name = "send_freq")
    private int sendFreq;
    @ColumnInfo(name = "send_tone_type")
    private int sendToneType;
    @ColumnInfo(name = "send_tone_value")
    private int sendToneValue;

    public ChannelModel() {
    }

    public void clear() {
        this.receiveFreq = 0;
        this.sendFreq = 0;
        this.receiveToneType = 0;
        this.receiveToneValue = 0;
        this.sendToneType = 0;
        this.sendToneValue = 0;
        this.channelName = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getChannelName() {
        return this.channelName;
    }

    public int getChannelSeq() {
        return this.channelSeq;
    }

    public int getChannelType() {
        return this.channelType;
    }

    public Long getConfigId() {
        return this.configId;
    }

    public String getDisplayName() {
        return UIUtils.m8602p(R.string.channel_name_s_s, getDisplayNamePrefix(), getDisplayNameSuffix());
    }

    public String getDisplayNamePrefix() {
        int i = this.channelType;
        return i == 1 ? UIUtils.m8602p(R.string.remote_channel_name_prefix_s, getDisplaySeq()) : i == 2 ? UIUtils.m8602p(R.string.custom_channel_name_prefix_s, getDisplaySeq()) : "";
    }

    public String getDisplayNameSuffix() {
        int i = this.channelType;
        if (i == 1) {
            return UIUtils.m8603o(R.string.channel_remote);
        }
        if (i == 2) {
            if (!TextUtils.isEmpty(this.channelName)) {
                return this.channelName;
            }
            return UIUtils.m8603o(R.string.channel_custom);
        }
        return "";
    }

    public String getDisplayReceiveFreq() {
        int i = this.receiveFreq;
        return i <= 0 ? "" : String.format("%.4f", Float.valueOf(i / 1000000.0f));
    }

    public String getDisplayReceiveFreqWithTone() {
        int i = this.receiveFreq;
        return i <= 0 ? "" : String.format("%.4f/%s", Float.valueOf(i / 1000000.0f), ChToneConstants.f14119b[this.receiveToneType][this.receiveToneValue]);
    }

    public String getDisplayReceiveTone() {
        return ChToneConstants.f14119b[this.receiveToneType][this.receiveToneValue];
    }

    public String getDisplaySendFreq() {
        int i = this.sendFreq;
        return i <= 0 ? "" : String.format("%.4f", Float.valueOf(i / 1000000.0f));
    }

    public String getDisplaySendFreqWithTone() {
        int i = this.sendFreq;
        return i <= 0 ? "" : String.format("%.4f/%s", Float.valueOf(i / 1000000.0f), ChToneConstants.f14119b[this.sendToneType][this.sendToneValue]);
    }

    public String getDisplaySendTone() {
        return ChToneConstants.f14119b[this.sendToneType][this.sendToneValue];
    }

    public String getDisplaySeq() {
        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(this.channelSeq));
    }

    public Long getId() {
        return this.f14386id;
    }

    public boolean getIsCustomCh() {
        return this.channelType == 2;
    }

    public boolean getIsRemoteCh() {
        return this.channelType == 1;
    }

    public String getLiteDisplaySeq() {
        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(this.channelSeq + 1));
    }

    public int getReceiveFreq() {
        return this.receiveFreq;
    }

    public int getReceiveToneType() {
        return this.receiveToneType;
    }

    public int getReceiveToneValue() {
        return this.receiveToneValue;
    }

    public int getSendFreq() {
        return this.sendFreq;
    }

    public int getSendToneType() {
        return this.sendToneType;
    }

    public int getSendToneValue() {
        return this.sendToneValue;
    }

    public boolean isEmpty() {
        return this.receiveFreq <= 0 || this.sendFreq <= 0;
    }

    public void readFromParcel(Parcel parcel) {
        this.f14386id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.configId = (Long) parcel.readValue(Long.class.getClassLoader());
        this.channelSeq = parcel.readInt();
        this.receiveFreq = parcel.readInt();
        this.sendFreq = parcel.readInt();
        this.receiveToneType = parcel.readInt();
        this.receiveToneValue = parcel.readInt();
        this.sendToneType = parcel.readInt();
        this.sendToneValue = parcel.readInt();
        this.channelType = parcel.readInt();
        this.channelName = parcel.readString();
    }

    public void setChannelName(String str) {
        this.channelName = str;
    }

    public void setChannelSeq(int i) {
        this.channelSeq = i;
    }

    public void setChannelType(int i) {
        this.channelType = i;
    }

    public void setConfigId(Long l) {
        this.configId = l;
    }

    public void setId(Long l) {
        this.f14386id = l;
    }

    public void setReceiveFreq(int i) {
        this.receiveFreq = i;
    }

    public void setReceiveToneType(int i) {
        this.receiveToneType = i;
    }

    public void setReceiveToneValue(int i) {
        this.receiveToneValue = i;
    }

    public void setSendFreq(int i) {
        this.sendFreq = i;
    }

    public void setSendToneType(int i) {
        this.sendToneType = i;
    }

    public void setSendToneValue(int i) {
        this.sendToneValue = i;
    }

    public String toString() {
        return "ChannelModel{id=" + this.f14386id + ", configId=" + this.configId + ", channelSeq=" + this.channelSeq + ", receiveFreq=" + this.receiveFreq + ", sendFreq=" + this.sendFreq + ", receiveToneType=" + this.receiveToneType + ", receiveToneValue=" + this.receiveToneValue + ", sendToneType=" + this.sendToneType + ", sendToneValue=" + this.sendToneValue + ", channelType=" + this.channelType + ", channelName='" + this.channelName + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.f14386id);
        parcel.writeValue(this.configId);
        parcel.writeInt(this.channelSeq);
        parcel.writeInt(this.receiveFreq);
        parcel.writeInt(this.sendFreq);
        parcel.writeInt(this.receiveToneType);
        parcel.writeInt(this.receiveToneValue);
        parcel.writeInt(this.sendToneType);
        parcel.writeInt(this.sendToneValue);
        parcel.writeInt(this.channelType);
        parcel.writeString(this.channelName);
    }

    protected ChannelModel(Parcel parcel) {
        this.f14386id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.configId = (Long) parcel.readValue(Long.class.getClassLoader());
        this.channelSeq = parcel.readInt();
        this.receiveFreq = parcel.readInt();
        this.sendFreq = parcel.readInt();
        this.receiveToneType = parcel.readInt();
        this.receiveToneValue = parcel.readInt();
        this.sendToneType = parcel.readInt();
        this.sendToneValue = parcel.readInt();
        this.channelType = parcel.readInt();
        this.channelName = parcel.readString();
    }

    @Override // java.lang.Comparable
    public int compareTo(ChannelModel channelModel) {
        if (channelModel.getChannelType() != getChannelType()) {
            if (channelModel.getChannelType() == 1 && getChannelType() == 2) {
                return 1;
            }
            return (channelModel.getChannelType() == 2 && getChannelType() == 1) ? -1 : 0;
        }
        return getChannelSeq() - channelModel.getChannelSeq();
    }
}
