package com.mi.milinkforgame.sdk.session.util;

import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.base.Global;
import com.mi.milinkforgame.sdk.base.data.Convert;
import com.mi.milinkforgame.sdk.base.os.Device;
import com.mi.milinkforgame.sdk.data.Const;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.BusiControl;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.TokenInfo;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.UpstreamPacket;
import com.mi.milinkforgame.sdk.proto.UpstreamPacketProto.UpstreamPacket.Builder;
import com.mi.milinkforgame.sdk.util.compress.CompressionFactory;
import com.mi.milinkforgame.sdk.util.crypt.Cryptor;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

public class StreamUtil {
    private static final int BUSI_CONTROL_NO_COMPRESS = 0;
    private static final int BUSI_CONTROL_ZLIB_COMPRESS = 1;
    private static final String CLASSTAG = "StreamUtil";
    private static final int DEFAULT_COMPRESS_LEN = 512;
    public static final byte[] MNS = {109, 108, 112, 0};
    public static final byte MNS_ENCODE_B2_TOKEN = 2;
    public static final byte MNS_ENCODE_NONE = 0;
    public static final byte MNS_ENCODE_RSA_PUBLIC_KEY = 4;
    private static final int NO_NEED_RESPONSE_MASK = 16;
    private static final int PING_MASK = 256;
    private static final String QUA_HEAD = "v1-and-";

    private StreamUtil() {
    }

    public static boolean isPingFlag(int i) {
        return (i & 256) == 256;
    }

    public static boolean isNoNeedResponseFlag(int i) {
        return (i & 16) == 16;
    }

    public static String getQua() {
        StringBuilder sb = new StringBuilder();
        sb.append(QUA_HEAD);
        sb.append(Global.getClientAppInfo().getAppName());
        sb.append("-");
        sb.append(Global.getClientAppInfo().getVersionName());
        sb.append("-");
        sb.append(Global.getClientAppInfo().getReleaseChannel());
        sb.append("-");
        sb.append(Global.getClientAppInfo().getLanguageCode());
        return sb.toString().toLowerCase();
    }

    public static byte[] toUpBytes(String str, PacketData packetData, boolean z, byte b) {
        int i;
        byte[] bArr;
        String str2 = str + CLASSTAG;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(MNS);
            byteArrayOutputStream.write(new byte[]{0, 0, 0, 0});
            byteArrayOutputStream.write(Global.getMiLinkProtocolVersion());
            byteArrayOutputStream.write(b);
            int bytesToInt = Convert.bytesToInt(new byte[]{0, 0, 0, 0});
            if (z) {
                bytesToInt |= 256;
            }
            if (packetData == null || packetData.needResponse()) {
                i = bytesToInt;
            } else {
                i = bytesToInt | 16;
            }
            byteArrayOutputStream.write(Convert.intToBytes(i));
            byteArrayOutputStream.write(Convert.intToBytes(Global.getClientAppInfo().getAppId()));
            long j = 0;
            if (!TextUtils.isEmpty(MiAccountManager.getInstance().getUserId())) {
                j = Long.parseLong(MiAccountManager.getInstance().getUserId());
            }
            byteArrayOutputStream.write(Convert.longToBytes(j));
            if (b == 4) {
                bArr = MiAccountManager.getInstance().getKeyId();
            } else if (b == 2) {
                bArr = MiAccountManager.getInstance().getB2Token();
            } else {
                bArr = null;
            }
            if (bArr == null) {
                byteArrayOutputStream.write(Convert.shortToBytes(0));
            } else {
                byteArrayOutputStream.write(Convert.shortToBytes((short) bArr.length));
                byteArrayOutputStream.write(bArr);
            }
            byteArrayOutputStream.write(Convert.intToBytes(0));
            byteArrayOutputStream.write(Convert.intToBytes(packetData.getSeqNo()));
            if (packetData != null && !z) {
                byte[] encrypt = encrypt(getUpStream(str, packetData, b).toByteArray(), b);
                if (encrypt == null) {
                    return null;
                }
                byteArrayOutputStream.write(encrypt);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byte[] intToBytes = Convert.intToBytes(byteArray.length);
            byteArray[4] = intToBytes[0];
            byteArray[5] = intToBytes[1];
            byteArray[6] = intToBytes[2];
            byteArray[7] = intToBytes[3];
            MiLinkLog.v(str2, "up stream packet: seq=" + packetData.getSeqNo() + ", isPing=" + z + ", flag=" + i + ", len=" + byteArray.length);
            return byteArray;
        } catch (IOException e) {
            MiLinkLog.e(str2, "byte error", e);
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:45:0x024f  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x0279  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.mi.milinkforgame.sdk.aidl.PacketData getDownPacket(java.lang.String r17, byte[] r18) throws java.io.IOException {
        /*
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r0 = r17
            java.lang.StringBuilder r2 = r2.append(r0)
            java.lang.String r3 = "StreamUtil"
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r7 = r2.toString()
            if (r18 != 0) goto L_0x0019
            r2 = 0
        L_0x0018:
            return r2
        L_0x0019:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "recv data: len="
            java.lang.StringBuilder r2 = r2.append(r3)
            r0 = r18
            int r3 = r0.length
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r2)
            java.io.ByteArrayInputStream r2 = new java.io.ByteArrayInputStream
            r0 = r18
            r2.<init>(r0)
            r3 = 4
            byte[] r3 = com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r3)
            byte[] r4 = MNS
            boolean r3 = com.mi.milinkforgame.sdk.base.data.Convert.compare(r3, r4)
            if (r3 != 0) goto L_0x0048
            r2 = 0
            goto L_0x0018
        L_0x0048:
            r3 = 4
            byte[] r3 = com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r3)
            int r8 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToInt(r3)
            r2.read()
            int r3 = r2.read()
            byte r3 = (byte) r3
            r4 = 4
            byte[] r4 = com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r4)
            int r4 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToInt(r4)
            r5 = 4
            com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r5)
            r5 = 8
            byte[] r5 = new byte[r5]
            r6 = 0
            r9 = 8
            com.mi.milinkforgame.sdk.base.data.Convert.readBytes(r2, r5, r6, r9)
            com.mi.milinkforgame.sdk.base.data.Convert.bytesToLong(r5)
            r5 = 2
            byte[] r5 = new byte[r5]
            r6 = 0
            r9 = 2
            com.mi.milinkforgame.sdk.base.data.Convert.readBytes(r2, r5, r6, r9)
            int r5 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToUshort(r5)
            byte[] r6 = new byte[r5]
            r9 = 0
            com.mi.milinkforgame.sdk.base.data.Convert.readBytes(r2, r6, r9, r5)
            int r5 = r5 + 28
            r9 = 4
            com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r9)
            int r5 = r5 + 4
            r9 = 4
            byte[] r2 = com.mi.milinkforgame.sdk.base.data.Convert.readByte(r2, r9)
            int r5 = r5 + 4
            int r9 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToInt(r2)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r10 = "down stream packet: seq="
            java.lang.StringBuilder r2 = r2.append(r10)
            java.lang.StringBuilder r2 = r2.append(r9)
            java.lang.String r10 = ", encodeType="
            java.lang.StringBuilder r2 = r2.append(r10)
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r10 = ", flag="
            java.lang.StringBuilder r2 = r2.append(r10)
            java.lang.StringBuilder r2 = r2.append(r4)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r2)
            r2 = r4 & 256(0x100, float:3.59E-43)
            r4 = 256(0x100, float:3.59E-43)
            if (r2 != r4) goto L_0x00d7
            com.mi.milinkforgame.sdk.aidl.PacketData r2 = new com.mi.milinkforgame.sdk.aidl.PacketData
            r2.<init>()
            r2.setSeqNo(r9)
            java.lang.String r3 = "milink.ping"
            r2.setCommand(r3)
            goto L_0x0018
        L_0x00d7:
            int r2 = r8 - r5
            byte[] r4 = new byte[r2]
            r2 = 0
            int r10 = r8 - r5
            r0 = r18
            java.lang.System.arraycopy(r0, r5, r4, r2, r10)
            r2 = 0
            byte[] r3 = decrypt(r4, r6, r3)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            if (r3 == 0) goto L_0x00f4
            com.mi.milinkforgame.sdk.proto.DownstreamPacketProto$DownstreamPacket r2 = com.mi.milinkforgame.sdk.proto.DownstreamPacketProto.DownstreamPacket.parseFrom(r3)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
        L_0x00ee:
            r6 = r2
        L_0x00ef:
            if (r6 != 0) goto L_0x013c
            r2 = 0
            goto L_0x0018
        L_0x00f4:
            java.lang.String r3 = "decrypt error, down == null !!!"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.w(r7, r3)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            r3.<init>()     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            java.lang.String r5 = "decrypt error stream:"
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            r5 = 2048000(0x1f4000, float:2.869859E-39)
            java.lang.String r5 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToHexStr(r4, r5)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            java.lang.String r3 = r3.toString()     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            com.mi.milinkforgame.sdk.debug.MiLinkLog.w(r7, r3)     // Catch:{ InvalidProtocolBufferException -> 0x0117 }
            goto L_0x00ee
        L_0x0117:
            r3 = move-exception
            java.lang.String r5 = "parser downstream error"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r7, r5, r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "error stream:"
            java.lang.StringBuilder r3 = r3.append(r5)
            r5 = 2048000(0x1f4000, float:2.869859E-39)
            java.lang.String r4 = com.mi.milinkforgame.sdk.base.data.Convert.bytesToHexStr(r4, r5)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r7, r3)
            r6 = r2
            goto L_0x00ef
        L_0x013c:
            java.lang.String r5 = r6.getServiceCmd()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "mnscode:"
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r6.getMnsCode()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = ", busicode:"
            java.lang.StringBuilder r2 = r2.append(r3)
            int r3 = r6.getBusiCode()
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.String r3 = ", cmd="
            java.lang.StringBuilder r2 = r2.append(r3)
            java.lang.StringBuilder r2 = r2.append(r5)
            java.lang.String r2 = r2.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r2)
            com.mi.milinkforgame.sdk.aidl.PacketData r3 = new com.mi.milinkforgame.sdk.aidl.PacketData
            r3.<init>()
            com.google.protobuf.ByteString r2 = r6.getExtra()
            com.mi.milinkforgame.sdk.proto.DownstreamPacketProto$ExtraInfo r2 = com.mi.milinkforgame.sdk.proto.DownstreamPacketProto.ExtraInfo.parseFrom(r2)
            if (r2 == 0) goto L_0x021c
            boolean r4 = r2.hasHasClientInfo()
            if (r4 == 0) goto L_0x021c
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r10 = "cmd="
            java.lang.StringBuilder r4 = r4.append(r10)
            java.lang.StringBuilder r4 = r4.append(r5)
            java.lang.String r10 = ", hasClientInfo ="
            java.lang.StringBuilder r4 = r4.append(r10)
            boolean r10 = r2.getHasClientInfo()
            java.lang.StringBuilder r4 = r4.append(r10)
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r4)
            boolean r2 = r2.getHasClientInfo()
            r3.setHasClientInfo(r2)
        L_0x01b2:
            com.google.protobuf.ByteString r2 = r6.getBusiBuff()
            boolean r4 = r6.hasBusiControl()
            if (r4 == 0) goto L_0x020f
            com.mi.milinkforgame.sdk.proto.UpstreamPacketProto$BusiControl r4 = r6.getBusiControl()
            int r10 = r4.getCompFlag()
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "hasBusiContro, compFlag= "
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.StringBuilder r11 = r11.append(r10)
            java.lang.String r11 = r11.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r11)
            r11 = 1
            if (r10 != r11) goto L_0x020f
            r10 = 1
            com.mi.milinkforgame.sdk.util.compress.ICompression r10 = com.mi.milinkforgame.sdk.util.compress.CompressionFactory.createCompression(r10)
            byte[] r11 = r2.toByteArray()
            byte[] r10 = r10.decompress(r11)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "len of decompress is "
            java.lang.StringBuilder r11 = r11.append(r12)
            int r12 = r10.length
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.String r11 = r11.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r11)
            int r11 = r10.length
            long r12 = (long) r11
            long r14 = r4.getLenBeforeComp()
            int r11 = (r12 > r14 ? 1 : (r12 == r14 ? 0 : -1))
            if (r11 != 0) goto L_0x0221
            com.google.protobuf.ByteString r2 = com.google.protobuf.ByteString.copyFrom(r10)
        L_0x020f:
            java.lang.String r4 = "milink.push"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0280
            if (r2 != 0) goto L_0x023c
            r2 = 0
            goto L_0x0018
        L_0x021c:
            r2 = 0
            r3.setHasClientInfo(r2)
            goto L_0x01b2
        L_0x0221:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r11 = "len of decompress is not equal origin len, origin len="
            java.lang.StringBuilder r10 = r10.append(r11)
            long r12 = r4.getLenBeforeComp()
            java.lang.StringBuilder r4 = r10.append(r12)
            java.lang.String r4 = r4.toString()
            com.mi.milinkforgame.sdk.debug.MiLinkLog.v(r7, r4)
            goto L_0x020f
        L_0x023c:
            r4 = 1
            r3.setIsPushPacket(r4)     // Catch:{ InvalidProtocolBufferException -> 0x026d }
            com.mi.milinkforgame.sdk.proto.PushPacketProto$SimplePushData r10 = com.mi.milinkforgame.sdk.proto.PushPacketProto.SimplePushData.parseFrom(r2)     // Catch:{ InvalidProtocolBufferException -> 0x026d }
            com.google.protobuf.ByteString r4 = r10.getPushdata()     // Catch:{ InvalidProtocolBufferException -> 0x026d }
            java.lang.String r2 = r10.getCmd()     // Catch:{ InvalidProtocolBufferException -> 0x027e }
            r5 = r2
        L_0x024d:
            if (r4 != 0) goto L_0x0279
            r2 = 0
        L_0x0250:
            r3.setData(r2)
            r3.setSeqNo(r9)
            r3.setCommand(r5)
            int r2 = r6.getMnsCode()
            r3.setMnsCode(r2)
            int r2 = r6.getBusiCode()
            r3.setBusiCode(r2)
            r3.setResponseSize(r8)
            r2 = r3
            goto L_0x0018
        L_0x026d:
            r4 = move-exception
            r16 = r4
            r4 = r2
            r2 = r16
        L_0x0273:
            java.lang.String r10 = "parser pushdata error"
            com.mi.milinkforgame.sdk.debug.MiLinkLog.e(r7, r10, r2)
            goto L_0x024d
        L_0x0279:
            byte[] r2 = r4.toByteArray()
            goto L_0x0250
        L_0x027e:
            r2 = move-exception
            goto L_0x0273
        L_0x0280:
            r4 = r2
            goto L_0x024d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.milinkforgame.sdk.session.util.StreamUtil.getDownPacket(java.lang.String, byte[]):com.mi.milinkforgame.sdk.aidl.PacketData");
    }

    private static UpstreamPacket getUpStream(String str, PacketData packetData, int i) {
        String str2 = str + CLASSTAG;
        Builder newBuilder = UpstreamPacket.newBuilder();
        newBuilder.setSeq(packetData.getSeqNo());
        newBuilder.setAppId(Global.getClientAppInfo().getAppId());
        if (packetData.needClientInfo()) {
            String qua = getQua();
            MiLinkLog.v(str2, "send packet, cmd=" + packetData.getCommand() + " seq=" + packetData.getSeqNo() + " qua=" + qua + " device=" + Device.getInstance().getDeviceInfo() + " encodeType=" + i);
            if (i != 0) {
                newBuilder.setDeviceInfo(ByteString.copyFromUtf8(Device.getInstance().getDeviceSimplifiedInfo()));
            }
            newBuilder.setUa(qua);
        } else {
            MiLinkLog.v(str2, "send packet don't need qua and deviceInfo, seq=" + packetData.getSeqNo() + ", cmd=" + packetData.getCommand());
        }
        newBuilder.setServiceCmd(packetData.getCommand());
        byte[] data = packetData.getData();
        if (!Const.isMnsCmd(packetData.getCommand()) && data != null) {
            BusiControl.Builder newBuilder2 = BusiControl.newBuilder();
            int length = data.length;
            MiLinkLog.v(str2, "origin busibuff.size=" + length);
            if (length > 512) {
                data = CompressionFactory.createCompression(1).compress(data);
                MiLinkLog.v(str2, "after zlib compress, busibuff.size=" + data.length);
                newBuilder2.setCompFlag(1);
                newBuilder2.setLenBeforeComp((long) length);
            }
            newBuilder2.setIsSupportComp(true);
            newBuilder.setBusiControl(newBuilder2.build());
        }
        newBuilder.setBusiBuff(ByteString.copyFrom(data));
        String userId = MiAccountManager.getInstance().getUserId();
        if (!TextUtils.isEmpty(userId)) {
            newBuilder.setMiUid(userId);
            newBuilder.setMiUin(Long.parseLong(userId));
            if (i != 0 && packetData.needClientInfo()) {
                TokenInfo.Builder newBuilder3 = TokenInfo.newBuilder();
                newBuilder3.setKey(ByteString.copyFrom(MiAccountManager.getInstance().getKeyId()));
                newBuilder3.setType(4);
                newBuilder.setToken(newBuilder3.build());
            }
        } else {
            newBuilder.setMiUin(0);
            newBuilder.setMiUid("0");
        }
        newBuilder.setGid(MiAccountManager.getInstance().getGId());
        return newBuilder.build();
    }

    private static byte[] encrypt(byte[] bArr, byte b) {
        switch (b) {
            case 2:
                return Cryptor.encrypt(bArr, MiAccountManager.getInstance().getB2Security());
            case 4:
                return Cryptor.encryptRSA(bArr, MiAccountManager.getInstance().getPublicKeyStr());
            default:
                return bArr;
        }
    }

    private static byte[] decrypt(byte[] bArr, byte[] bArr2, byte b) {
        switch (b) {
            case 2:
                return Cryptor.decrypt(bArr, MiAccountManager.getInstance().getB2SecurityByB2Token(bArr2));
            case 4:
                return Cryptor.decrypt(bArr, MiAccountManager.getInstance().getPrivateKey());
            default:
                return bArr;
        }
    }
}
