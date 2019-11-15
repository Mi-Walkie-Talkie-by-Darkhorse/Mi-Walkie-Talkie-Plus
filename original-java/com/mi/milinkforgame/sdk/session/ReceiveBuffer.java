package com.mi.milinkforgame.sdk.session;

import com.mi.milinkforgame.sdk.base.data.Convert;
import com.mi.milinkforgame.sdk.config.ConfigManager;
import com.mi.milinkforgame.sdk.config.Settings;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import java.io.UnsupportedEncodingException;

public class ReceiveBuffer {
    private static String CLASSTAG = "ReceiveBuffer";
    private static final int INTEGER_LENGTH = 4;
    private static final int MAX_HTTP_PACKAGE_HEADER_LENGTH = 2048;
    private static final int MIN_TCP_PACKAGE_HEADER_LENGTH = 8;
    private static final int MNS_CONTENT_B2_LENGTH_POS = 26;
    private static final int MNS_CONTENT_FLAG_POS = 10;
    private static final int MNS_CONTENT_VERSION_POS = 8;
    private static final int SHORT_LENGTH = 2;
    private String TAG;
    private byte[] mBuffer = null;
    private int mCreatorSessionNO;
    private int mPosition = 0;
    private ReceiveBufferSink mSink;

    public interface ReceiveBufferSink {
        boolean onAddTimeout(int i, int i2);

        boolean onRecvDownStream(int i, byte[] bArr);
    }

    public ReceiveBuffer(ReceiveBufferSink receiveBufferSink, int i, int i2) {
        this.mSink = receiveBufferSink;
        try {
            this.mBuffer = new byte[i];
        } catch (OutOfMemoryError e) {
            MiLinkLog.e(this.TAG, "ReceiveBuffer init failed", e);
        }
        this.mCreatorSessionNO = i2;
        this.TAG = String.format("[No:%d]%s", new Object[]{Integer.valueOf(i2), CLASSTAG});
    }

    private void removeToBegin(int i) {
        if (this.mBuffer != null) {
            int i2 = this.mPosition - i;
            this.mPosition = 0;
            for (int i3 = 0; i3 < i2; i3++) {
                byte[] bArr = this.mBuffer;
                int i4 = this.mPosition;
                this.mPosition = i4 + 1;
                bArr[i4] = this.mBuffer[i + i3];
            }
        }
    }

    public void append(byte[] bArr) throws InvalidPacketExecption {
        if (this.mBuffer != null) {
            int length = bArr.length;
            if (this.mBuffer.length - this.mPosition < length) {
                MiLinkLog.v(this.TAG, "buffer need to be increased");
                try {
                    byte[] bArr2 = new byte[(this.mPosition + length)];
                    System.arraycopy(this.mBuffer, 0, bArr2, 0, this.mPosition);
                    System.arraycopy(bArr, 0, bArr2, this.mPosition, length);
                    this.mBuffer = bArr2;
                    this.mPosition = length + this.mPosition;
                } catch (OutOfMemoryError e) {
                    MiLinkLog.e(this.TAG, "append new byte fail ", e);
                }
            } else {
                System.arraycopy(bArr, 0, this.mBuffer, this.mPosition, length);
                this.mPosition = length + this.mPosition;
            }
            parsePacket();
        }
    }

    private void parsePacket() throws InvalidPacketExecption {
        MiLinkLog.v(this.TAG, "parsePacket start");
        do {
        } while (parseNormalPacket());
    }

    private long getPacketLen() throws InvalidPacketExecption {
        MiLinkLog.i(this.TAG, "getPacketLen start, mPosition=" + this.mPosition);
        if (this.mPosition >= 8) {
            if (BufferUtil.isHttpHead(this.mBuffer)) {
                MiLinkLog.i(this.TAG, "getPacketLen isHttpHead");
                int findHttpHeaderEndFromByte = BufferUtil.findHttpHeaderEndFromByte(this.mBuffer);
                if (findHttpHeaderEndFromByte > 0) {
                    removeToBegin(findHttpHeaderEndFromByte - 1);
                } else if (this.mPosition <= 2048) {
                    return -1;
                } else {
                    MiLinkLog.i(this.TAG, "HTTP CONTENT : " + Convert.bytesToASCIIString(this.mBuffer, 2048));
                    throw new InvalidPacketExecption("wrong packet，cannot find http header end", 4);
                }
            }
            if (BufferUtil.isMNSHead(this.mBuffer)) {
                return Convert.bytesToUint(this.mBuffer, 4);
            }
            MiLinkLog.i(this.TAG, "no mns head: length=" + this.mBuffer.length + "; " + Convert.bytesToHexStr(this.mBuffer, 2048000));
            try {
                MiLinkLog.w(this.TAG, "no mns head , try to get string : " + new String(this.mBuffer, "UTF-8"));
            } catch (UnsupportedEncodingException e) {
            }
            throw new InvalidPacketExecption("wrong packet，no mns head", 1);
        } else if (this.mPosition == 0) {
            return -1;
        } else {
            MiLinkLog.i(this.TAG, "getPacketLen [position = " + this.mPosition + "] < TCP_PACKAGE_HEADER_LENGTH(" + 8 + ")");
            return -1;
        }
    }

    private boolean parseNormalPacket() throws InvalidPacketExecption {
        int i = (int) ConfigManager.getInstance().getSetting().getLong(Settings.MAX_PACKET_SIZE, 2097152);
        long packetLen = getPacketLen();
        MiLinkLog.i(this.TAG, "parseNormalPacket start, packetLen = " + packetLen + ", mPosition=" + this.mPosition);
        if (packetLen == -1) {
            return false;
        }
        if (packetLen < 8) {
            throw new InvalidPacketExecption("[wrong packetlen = " + packetLen + "]", 2);
        } else if (packetLen > ((long) i)) {
            throw new InvalidPacketExecption("[wrong packetlen = " + packetLen + "]", 3);
        } else if (packetLen <= ((long) this.mPosition)) {
            MiLinkLog.i(this.TAG, "parseNormalPacket [packetLen = " + packetLen + "]");
            byte[] bArr = new byte[((int) packetLen)];
            System.arraycopy(this.mBuffer, 0, bArr, 0, (int) packetLen);
            removeToBegin((int) packetLen);
            if (this.mSink != null) {
                this.mSink.onRecvDownStream(this.mCreatorSessionNO, bArr);
            }
            return true;
        } else if (this.mPosition < 26) {
            return false;
        } else {
            byte b = this.mBuffer[8];
            short bytesToShort = Convert.bytesToShort(this.mBuffer, 26);
            if (this.mPosition < bytesToShort + 28 + 4 + 4) {
                return false;
            }
            MiLinkLog.i(this.TAG, "[package size = " + packetLen + " position = " + this.mPosition + "]");
            int bytesToInt = Convert.bytesToInt(this.mBuffer, bytesToShort + 28 + 4);
            if (this.mSink == null) {
                return false;
            }
            this.mSink.onAddTimeout(this.mCreatorSessionNO, bytesToInt);
            return false;
        }
    }

    public void reset() {
        this.mPosition = 0;
    }
}
