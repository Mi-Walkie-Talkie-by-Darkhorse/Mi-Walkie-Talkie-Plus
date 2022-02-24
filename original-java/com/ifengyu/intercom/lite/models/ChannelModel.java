package com.ifengyu.intercom.lite.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.room.ColumnInfo;
import androidx.room.Entity;
import androidx.room.ForeignKey;
import androidx.room.Ignore;
import androidx.room.Index;
import androidx.room.PrimaryKey;
import com.google.android.material.timepicker.TimeModel;
import com.ifengyu.intercom.lite.b.a;
import com.ifengyu.intercom.protos.LiteProtos;

@Entity(foreignKeys = {@ForeignKey(childColumns = {"config_id"}, entity = ConfigFileModel.class, onDelete = 5, parentColumns = {"id"})}, indices = {@Index({"config_id"})}, tableName = "channel")
/* loaded from: classes2.dex */
public class ChannelModel implements Parcelable {
    public static final Parcelable.Creator<ChannelModel> CREATOR = new Parcelable.Creator<ChannelModel>() { // from class: com.ifengyu.intercom.lite.models.ChannelModel.1
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
    @ColumnInfo(name = "channel_seq")
    private int channelSeq;
    @ColumnInfo(name = "config_id")
    private Long configId;
    @PrimaryKey(autoGenerate = true)
    private Long id;
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
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getChannelSeq() {
        return this.channelSeq;
    }

    public Long getConfigId() {
        return this.configId;
    }

    public String getDisplayReceiveFreq() {
        int i = this.receiveFreq;
        return i <= 0 ? "" : String.format("%.4f", Float.valueOf(i / 1000000.0f));
    }

    public String getDisplayReceiveFreqWithTone() {
        int i = this.receiveFreq;
        return i <= 0 ? "" : String.format("%.4f/%s", Float.valueOf(i / 1000000.0f), a.f5335b[this.receiveToneType][this.receiveToneValue]);
    }

    public String getDisplayReceiveTone() {
        return a.f5335b[this.receiveToneType][this.receiveToneValue];
    }

    public String getDisplaySendFreq() {
        int i = this.sendFreq;
        return i <= 0 ? "" : String.format("%.4f", Float.valueOf(i / 1000000.0f));
    }

    public String getDisplaySendFreqWithTone() {
        int i = this.sendFreq;
        return i <= 0 ? "" : String.format("%.4f/%s", Float.valueOf(i / 1000000.0f), a.f5335b[this.sendToneType][this.sendToneValue]);
    }

    public String getDisplaySendTone() {
        return a.f5335b[this.sendToneType][this.sendToneValue];
    }

    public String getDisplaySeq() {
        return String.format(TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(this.channelSeq + 1));
    }

    public Long getId() {
        return this.id;
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

    public void setChannelSeq(int i) {
        this.channelSeq = i;
    }

    public void setConfigId(Long l) {
        this.configId = l;
    }

    public void setId(Long l) {
        this.id = l;
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

    public LiteProtos.ChannelInfo toChannelInfo() {
        LiteProtos.ChannelInfo.Builder rxFreq = LiteProtos.ChannelInfo.newBuilder().setSeq(this.channelSeq + 1).setRxFreq(this.receiveFreq);
        int i = this.receiveToneValue;
        int i2 = 0;
        LiteProtos.ChannelInfo.Builder txFreq = rxFreq.setRxCss(i == 0 ? 0 : ((this.receiveToneType + 1) << 8) + i).setTxFreq(this.sendFreq);
        int i3 = this.sendToneValue;
        if (i3 != 0) {
            i2 = ((this.sendToneType + 1) << 8) + i3;
        }
        return txFreq.setTxCss(i2).build();
    }

    @NonNull
    public String toString() {
        return "ChannelModel{id=" + this.id + ", configId=" + this.configId + ", channelSeq=" + this.channelSeq + ", receiveFreq=" + this.receiveFreq + ", sendFreq=" + this.sendFreq + ", receiveToneType=" + this.receiveToneType + ", receiveToneValue=" + this.receiveToneValue + ", sendToneType=" + this.sendToneType + ", sendToneValue=" + this.sendToneValue + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeValue(this.id);
        parcel.writeValue(this.configId);
        parcel.writeInt(this.channelSeq);
        parcel.writeInt(this.receiveFreq);
        parcel.writeInt(this.sendFreq);
        parcel.writeInt(this.receiveToneType);
        parcel.writeInt(this.receiveToneValue);
        parcel.writeInt(this.sendToneType);
        parcel.writeInt(this.sendToneValue);
    }

    @Ignore
    public ChannelModel(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        this.channelSeq = i;
        this.receiveFreq = i2;
        this.sendFreq = i3;
        this.receiveToneType = i4;
        this.receiveToneValue = i5;
        this.sendToneType = i6;
        this.sendToneValue = i7;
    }

    public ChannelModel(LiteProtos.ChannelInfo channelInfo) {
        int seq = channelInfo.getSeq() - 1;
        int i = 0;
        this.channelSeq = seq < 0 ? 0 : seq;
        this.receiveFreq = channelInfo.getRxFreq();
        this.sendFreq = channelInfo.getTxFreq();
        int rxCss = ((channelInfo.getRxCss() >> 8) & 255) - 1;
        this.receiveToneType = rxCss < 0 ? 0 : rxCss;
        this.receiveToneValue = channelInfo.getRxCss() & 255;
        int txCss = ((channelInfo.getTxCss() >> 8) & 255) - 1;
        this.sendToneType = txCss >= 0 ? txCss : i;
        this.sendToneValue = channelInfo.getTxCss() & 255;
    }

    protected ChannelModel(Parcel parcel) {
        this.id = (Long) parcel.readValue(Long.class.getClassLoader());
        this.configId = (Long) parcel.readValue(Long.class.getClassLoader());
        this.channelSeq = parcel.readInt();
        this.receiveFreq = parcel.readInt();
        this.sendFreq = parcel.readInt();
        this.receiveToneType = parcel.readInt();
        this.receiveToneValue = parcel.readInt();
        this.sendToneType = parcel.readInt();
        this.sendToneValue = parcel.readInt();
    }
}
