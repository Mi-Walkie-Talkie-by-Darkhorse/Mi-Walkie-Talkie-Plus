package com.mi.mimsgsdk.service.aidl;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.data.Const.MnsCmd;
import com.mi.milinkforgame.sdk.util.DataUtils;

public class MsgPacketData implements Parcelable {
    public static final Creator<MsgPacketData> CREATOR = new Creator<MsgPacketData>() {
        public MsgPacketData createFromParcel(Parcel parcel) {
            return new MsgPacketData(parcel);
        }

        public MsgPacketData[] newArray(int i) {
            return new MsgPacketData[i];
        }
    };
    protected int mBusiCode;
    protected String mCommand;
    protected byte[] mData;
    protected boolean mHasClientInfo;
    protected boolean mIsPushPacket;
    protected int mMnsCode;
    protected String mMnsErrorMsg;
    protected boolean mNeedCached;
    protected boolean mNeedClientInfo;
    protected boolean mNeedResponse;
    private int mResponseSize;
    private int mSeqNo;
    protected int mValidTime;

    public boolean needCached() {
        return this.mNeedCached;
    }

    public void setNeedCached(boolean z) {
        this.mNeedCached = z;
    }

    public void setValidTime(int i) {
        this.mValidTime = i;
    }

    public int getValidTime() {
        return this.mValidTime;
    }

    public boolean needResponse() {
        return this.mNeedResponse;
    }

    public void setNeedResponse(boolean z) {
        this.mNeedResponse = z;
    }

    public boolean needClientInfo() {
        return this.mNeedClientInfo;
    }

    public void setNeedClientInfo(boolean z) {
        this.mNeedClientInfo = z;
    }

    public boolean hasClientInfo() {
        return this.mHasClientInfo;
    }

    public void setHasClientInfo(boolean z) {
        this.mHasClientInfo = z;
    }

    public boolean isPushPacket() {
        return this.mIsPushPacket;
    }

    public void setIsPushPacket(boolean z) {
        this.mIsPushPacket = z;
    }

    public String getMnsErrorMsg() {
        return this.mMnsErrorMsg;
    }

    public void setMnsErrorMsg(String str) {
        this.mMnsErrorMsg = str;
    }

    public byte[] getData() {
        return this.mData;
    }

    public void setData(byte[] bArr) {
        this.mData = bArr;
    }

    public String getCommand() {
        return this.mCommand;
    }

    public void setCommand(String str) {
        this.mCommand = str;
    }

    public int getMnsCode() {
        return this.mMnsCode;
    }

    public void setMnsCode(int i) {
        this.mMnsCode = i;
    }

    public int getBusiCode() {
        return this.mBusiCode;
    }

    public void setBusiCode(int i) {
        this.mBusiCode = i;
    }

    public void setResponseSize(int i) {
        this.mResponseSize = i;
    }

    public int getResponseSize() {
        return this.mResponseSize;
    }

    private MsgPacketData(Parcel parcel) {
        this.mIsPushPacket = false;
        this.mNeedResponse = true;
        this.mNeedCached = true;
        this.mValidTime = 60000;
        this.mNeedClientInfo = true;
        this.mHasClientInfo = false;
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        boolean z;
        boolean z2;
        boolean z3 = true;
        this.mData = DataUtils.readParcelBytes(parcel);
        this.mSeqNo = parcel.readInt();
        this.mCommand = parcel.readString();
        this.mMnsCode = parcel.readInt();
        this.mBusiCode = parcel.readInt();
        this.mMnsErrorMsg = parcel.readString();
        if (parcel.readByte() == 1) {
            z = true;
        } else {
            z = false;
        }
        this.mIsPushPacket = z;
        if (parcel.readByte() == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.mNeedResponse = z2;
        if (parcel.readByte() != 1) {
            z3 = false;
        }
        this.mNeedCached = z3;
        this.mValidTime = parcel.readInt();
    }

    public MsgPacketData() {
        this.mIsPushPacket = false;
        this.mNeedResponse = true;
        this.mNeedCached = true;
        this.mValidTime = 60000;
        this.mNeedClientInfo = true;
        this.mHasClientInfo = false;
    }

    public int getSeqNo() {
        return this.mSeqNo;
    }

    public void setSeqNo(int i) {
        this.mSeqNo = i;
    }

    public boolean isPingPacket() {
        return MnsCmd.MNS_PING_CMD.equals(this.mCommand);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2;
        int i3;
        int i4 = 1;
        DataUtils.writeParcelBytes(parcel, this.mData);
        parcel.writeInt(this.mSeqNo);
        parcel.writeString(this.mCommand);
        parcel.writeInt(this.mMnsCode);
        parcel.writeInt(this.mBusiCode);
        parcel.writeString(this.mMnsErrorMsg);
        if (this.mIsPushPacket) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        parcel.writeByte((byte) i2);
        if (this.mNeedResponse) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        parcel.writeByte((byte) i3);
        if (!this.mNeedCached) {
            i4 = 0;
        }
        parcel.writeByte((byte) i4);
        parcel.writeInt(this.mValidTime);
    }

    public PacketData toService() {
        PacketData packetData = new PacketData();
        packetData.setData(this.mData);
        packetData.setSeqNo(this.mSeqNo);
        packetData.setCommand(this.mCommand);
        packetData.setMnsCode(this.mMnsCode);
        packetData.setBusiCode(this.mBusiCode);
        packetData.setMnsErrorMsg(this.mMnsErrorMsg);
        packetData.setIsPushPacket(this.mIsPushPacket);
        packetData.setNeedClientInfo(this.mNeedResponse);
        packetData.setNeedCached(this.mNeedCached);
        packetData.setValidTime(this.mValidTime);
        packetData.setHasClientInfo(this.mHasClientInfo);
        packetData.setNeedClientInfo(this.mNeedClientInfo);
        packetData.setResponseSize(this.mResponseSize);
        return packetData;
    }

    public static MsgPacketData parseFromMilink(PacketData packetData) {
        MsgPacketData msgPacketData = new MsgPacketData();
        msgPacketData.setData(packetData.getData());
        msgPacketData.setSeqNo(packetData.getSeqNo());
        msgPacketData.setCommand(packetData.getCommand());
        msgPacketData.setMnsCode(packetData.getMnsCode());
        msgPacketData.setBusiCode(packetData.getBusiCode());
        msgPacketData.setMnsErrorMsg(packetData.getMnsErrorMsg());
        msgPacketData.setIsPushPacket(packetData.isPushPacket());
        msgPacketData.setNeedClientInfo(packetData.needClientInfo());
        msgPacketData.setNeedCached(packetData.needCached());
        msgPacketData.setValidTime(packetData.getValidTime());
        msgPacketData.setHasClientInfo(packetData.hasClientInfo());
        msgPacketData.setNeedClientInfo(packetData.needClientInfo());
        msgPacketData.setResponseSize(packetData.getResponseSize());
        return msgPacketData;
    }
}
