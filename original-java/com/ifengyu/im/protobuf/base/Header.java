package com.ifengyu.im.protobuf.base;

import com.ifengyu.im.utils.Logger;

public class Header {
    private short commandId = 0;
    private short flag = 0;
    private int length = 0;
    private Logger logger = Logger.getLogger(Header.class);
    private short reserved = 0;
    private short seqnum = 0;
    private short serviceId = 0;
    private short version = 0;

    public short getFlag() {
        return this.flag;
    }

    public void setFlag(short s) {
        this.flag = s;
    }

    public short getSeqnum() {
        return this.seqnum;
    }

    public void setSeqnum(short s) {
        this.seqnum = s;
    }

    public DataBuffer encode() {
        DataBuffer dataBuffer = new DataBuffer(16);
        dataBuffer.writeInt(this.length);
        dataBuffer.writeShort(this.version);
        dataBuffer.writeShort(this.flag);
        dataBuffer.writeShort(this.serviceId);
        dataBuffer.writeShort(this.commandId);
        dataBuffer.writeShort(this.seqnum);
        dataBuffer.writeShort(this.reserved);
        return dataBuffer;
    }

    public void decode(DataBuffer dataBuffer) {
        if (dataBuffer != null) {
            try {
                this.length = dataBuffer.readInt();
                this.version = dataBuffer.readShort();
                this.flag = dataBuffer.readShort();
                this.serviceId = dataBuffer.readShort();
                this.commandId = dataBuffer.readShort();
                this.seqnum = dataBuffer.readShort();
                this.reserved = dataBuffer.readShort();
                this.logger.d("decode header, length:%d, version:%d, flag:%d serviceId:%d, commandId:%d, reserved:%d,seq:%d", Integer.valueOf(this.length), Short.valueOf(this.version), Short.valueOf(this.flag), Short.valueOf(this.serviceId), Short.valueOf(this.commandId), Short.valueOf(this.seqnum), Short.valueOf(this.reserved));
            } catch (Exception e) {
                this.logger.e(e.getMessage(), new Object[0]);
            }
        }
    }

    public String toString() {
        return "Header [length=" + this.length + ", version=" + this.version + ", flag=" + this.flag + ", serviceId=" + this.serviceId + ", commandId=" + this.commandId + ", seq=" + this.seqnum + ", reserved=" + this.reserved + "]";
    }

    public short getCommandId() {
        return this.commandId;
    }

    public void setCommandId(short s) {
        this.commandId = s;
    }

    public short getServiceId() {
        return this.serviceId;
    }

    public void setServiceId(short s) {
        this.serviceId = s;
    }

    public int getLength() {
        return this.length;
    }

    public void setLength(int i) {
        this.length = i;
    }

    public short getVersion() {
        return this.version;
    }

    public void setVersion(short s) {
        this.version = s;
    }

    public int getReserved() {
        return this.reserved;
    }

    public void setReserved(short s) {
        this.reserved = s;
    }
}
