package com.xiaomi.broadcaster.VideoHWCodec;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Log;
import com.xiaomi.broadcaster.VideoHWCodec.H264HWCodec.H264I420Frame;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class H264Encoder {
    private static final String AVC_MIME_TYPE = "video/avc";
    private static final String TAG = "H264Encoder";
    private static final int VIDEO_ControlRateConstant = 2;
    private static boolean isQcomPlatform = false;
    private static final int[] supportedColorList = {21, 19};
    private static final String[] supportedHwCodecPrefixes = {"OMX.qcom.", "OMX.Nvidia.", "OMX.IMG.", "OMX.Exynos", "OMX.MTK", "OMX.hantro", "OMX.Intel"};
    private boolean Constructed = false;
    int counter = 0;
    private int dequedBufferIndex = -1;
    int frameCounter = 0;
    private boolean hasDequedBuffer = false;
    private int lastSize = -1;
    private long lastTimeStamp = 0;
    int m_height;
    byte[] m_info = null;
    int m_width;
    int maxHeight = 1280;
    int maxWidth = 720;
    private MediaCodec mediaCodec;
    private int supportColorFormat = 0;
    String tag = "1";
    private byte[] yuv420 = new byte[(((this.maxWidth * this.maxHeight) * 3) / 2)];

    private static class EncoderProperties {
        public final String codecName;
        public final int colorFormat;

        EncoderProperties(String str, int i) {
            this.codecName = str;
            this.colorFormat = i;
        }
    }

    private static EncoderProperties findAvcHwEncoder() {
        String str;
        int[] iArr;
        int[] iArr2;
        try {
            Log.i(TAG, "sdk version is: " + VERSION.SDK_INT);
            if (VERSION.SDK_INT < 16) {
                return null;
            }
            for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (codecInfoAt.isEncoder()) {
                    String[] supportedTypes = codecInfoAt.getSupportedTypes();
                    int length = supportedTypes.length;
                    for (int i2 = 0; i2 < length; i2++) {
                        Log.i(TAG, "codec name: " + supportedTypes[i2] + " company:" + codecInfoAt.getName());
                    }
                }
            }
            for (int i3 = 0; i3 < MediaCodecList.getCodecCount(); i3++) {
                MediaCodecInfo codecInfoAt2 = MediaCodecList.getCodecInfoAt(i3);
                if (codecInfoAt2.isEncoder()) {
                    String[] supportedTypes2 = codecInfoAt2.getSupportedTypes();
                    int length2 = supportedTypes2.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length2) {
                            str = null;
                            break;
                        }
                        String str2 = supportedTypes2[i4];
                        Log.i(TAG, "codec name: " + str2);
                        if (str2.equals(AVC_MIME_TYPE)) {
                            str = codecInfoAt2.getName();
                            break;
                        }
                        i4++;
                    }
                    if (str != null) {
                        Log.i(TAG, "Found candidate encoder " + str);
                        CodecCapabilities capabilitiesForType = codecInfoAt2.getCapabilitiesForType(AVC_MIME_TYPE);
                        for (int hexString : capabilitiesForType.colorFormats) {
                            Log.i(TAG, "   Color: 0x" + Integer.toHexString(hexString));
                        }
                        isQcomPlatform = str.startsWith(supportedHwCodecPrefixes[0]);
                        for (String startsWith : supportedHwCodecPrefixes) {
                            if (str.startsWith(startsWith)) {
                                for (int i5 : supportedColorList) {
                                    for (int i6 : capabilitiesForType.colorFormats) {
                                        if (i6 == i5) {
                                            Log.i(TAG, "Found target encoder " + str + ". Color: 0x" + Integer.toHexString(i6));
                                            return new EncoderProperties(str, i6);
                                        }
                                    }
                                }
                                continue;
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                }
            }
            return null;
        } catch (Exception e) {
            Log.i(TAG, "find exceptin :" + e);
            return null;
        }
    }

    private static boolean isPlatformSupported() {
        return findAvcHwEncoder() != null;
    }

    public boolean initEncoder(int i, int i2, int i3, int i4) throws IOException {
        boolean z;
        try {
            Log.i(TAG, "H264 encoder creat width" + i + "height:" + i2 + "framerate:" + i3 + "bitrate:" + i4 + "this:" + this);
            this.m_width = i;
            this.m_height = i2;
            this.m_info = null;
            if (this.m_width * this.m_height > this.maxWidth * this.maxHeight) {
                Log.i(TAG, "H264 encoder realloc output buffer with:  width: " + i + "height:" + i2);
                this.maxWidth = this.m_width;
                this.maxHeight = this.m_height;
                this.yuv420 = new byte[(((this.maxWidth * this.maxHeight) * 3) / 2)];
            }
            this.hasDequedBuffer = false;
            this.dequedBufferIndex = -1;
            this.lastSize = -1;
            this.lastTimeStamp = 0;
            this.tag += "1";
            EncoderProperties findAvcHwEncoder = findAvcHwEncoder();
            if (findAvcHwEncoder == null) {
                Log.i(TAG, "Can not find HW AVC encoder");
                return false;
            }
            this.mediaCodec = MediaCodec.createByCodecName(findAvcHwEncoder.codecName);
            if (this.mediaCodec == null) {
                Log.i(TAG, "creatByCodecName failed");
                return false;
            }
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(AVC_MIME_TYPE, i, i2);
            createVideoFormat.setInteger("bitrate", i4);
            createVideoFormat.setInteger("frame-rate", i3);
            if (VERSION.SDK_INT >= 21) {
                if (isQcomPlatform) {
                    createVideoFormat.setInteger("profile", 8);
                    if (VERSION.SDK_INT >= 23) {
                        createVideoFormat.setInteger("level", 32768);
                    } else {
                        createVideoFormat.setInteger("level", 2048);
                    }
                }
                createVideoFormat.setInteger("bitrate-mode", 2);
            } else {
                createVideoFormat.setInteger("bitrate-mode", 2);
            }
            this.supportColorFormat = findAvcHwEncoder.colorFormat;
            createVideoFormat.setInteger("color-format", findAvcHwEncoder.colorFormat);
            createVideoFormat.setInteger("i-frame-interval", 2);
            this.mediaCodec.configure(createVideoFormat, null, null, 1);
            this.mediaCodec.start();
            this.Constructed = true;
            String str = TAG;
            StringBuilder append = new StringBuilder().append("avc encoder creat done, isSemiPlanar:");
            if (findAvcHwEncoder.colorFormat == 21) {
                z = true;
            } else {
                z = false;
            }
            Log.i(str, append.append(z).toString());
            return true;
        } catch (Exception e) {
            Log.i(TAG, "find exception at init encoder :" + e);
            return false;
        }
    }

    public boolean isSemiPlanarSupport() {
        return this.supportColorFormat == 21;
    }

    public void release() {
        try {
            this.Constructed = false;
            Log.i(TAG, "avc encoder release begin");
            this.mediaCodec.stop();
            this.mediaCodec.release();
            this.mediaCodec = null;
            this.m_info = null;
            Log.i(TAG, "avc encoder release done");
        } catch (Exception e) {
            Log.i(TAG, "find exception at release encoder :" + e);
        }
    }

    public void reset() {
        try {
            if (this.Constructed) {
                this.mediaCodec.flush();
                Log.i(TAG, "avc encoder reset done");
            }
        } catch (Exception e) {
            Log.i(TAG, "find exception at reset encoder :" + e);
        }
    }

    public void setBitrate(int i) {
        try {
            if (this.Constructed && VERSION.SDK_INT >= 19) {
                Log.i(TAG, "setRates: " + i + " kbps ");
                Bundle bundle = new Bundle();
                bundle.putInt("video-bitrate", i);
                this.mediaCodec.setParameters(bundle);
            }
        } catch (Exception e) {
            Log.i(TAG, "find exception at set encoder bitrate:" + e);
        }
    }

    public boolean encodeFrameInput(H264I420Frame h264I420Frame, boolean z) {
        if (z) {
            try {
                Log.i(TAG, "force a key frame");
            } catch (Exception e) {
                Log.e(TAG, "find exception at frameInput:", e);
                return false;
            }
        }
        int dequeueInputBuffer = this.mediaCodec.dequeueInputBuffer(-1);
        if (z && VERSION.SDK_INT >= 19) {
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.mediaCodec.setParameters(bundle);
        }
        this.counter++;
        if (dequeueInputBuffer < 0) {
            return false;
        }
        ByteBuffer[] inputBuffers = this.mediaCodec.getInputBuffers();
        this.frameCounter++;
        ByteBuffer byteBuffer = inputBuffers[dequeueInputBuffer];
        byteBuffer.clear();
        byteBuffer.put(h264I420Frame.buffer);
        this.mediaCodec.queueInputBuffer(dequeueInputBuffer, 0, h264I420Frame.size, h264I420Frame.timeStamp * 1000, 0);
        return true;
    }

    public static void intToByteArray(int i, byte[] bArr) {
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
    }

    public static int byteArrayToInt(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i += (bArr[i2] & 255) << ((3 - i2) * 8);
        }
        return i;
    }

    public int encodeFrameOutput(H264I420Frame h264I420Frame) {
        int dequeueOutputBuffer;
        int i;
        long j;
        int i2;
        boolean z = true;
        try {
            byte[] bArr = new byte[(((this.m_width * this.m_height) * 3) / 2)];
            BufferInfo bufferInfo = new BufferInfo();
            h264I420Frame.buffer.clear();
            if (this.hasDequedBuffer) {
                dequeueOutputBuffer = this.dequedBufferIndex;
                i = this.lastSize;
                j = this.lastTimeStamp;
            } else {
                dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
                i = bufferInfo.size;
                j = bufferInfo.presentationTimeUs;
            }
            if (dequeueOutputBuffer >= 0) {
                ByteBuffer[] outputBuffers = this.mediaCodec.getOutputBuffers();
                byte[] bArr2 = new byte[i];
                this.frameCounter--;
                outputBuffers[dequeueOutputBuffer].get(bArr2);
                h264I420Frame.info.order(ByteOrder.LITTLE_ENDIAN);
                System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
                i2 = bArr2.length + 0;
                this.mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                int dequeueOutputBuffer2 = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
                if (dequeueOutputBuffer2 >= 0) {
                    this.hasDequedBuffer = true;
                    this.dequedBufferIndex = dequeueOutputBuffer2;
                    this.lastSize = bufferInfo.size;
                    this.lastTimeStamp = bufferInfo.presentationTimeUs;
                } else {
                    this.hasDequedBuffer = false;
                    this.dequedBufferIndex = -1;
                    this.lastSize = -1;
                    this.lastTimeStamp = 0;
                }
                h264I420Frame.info.putInt(8, dequeueOutputBuffer2);
            } else {
                h264I420Frame.info.putInt(8, -1);
                this.hasDequedBuffer = false;
                this.dequedBufferIndex = -1;
                this.lastSize = -1;
                this.lastTimeStamp = 0;
                i2 = 0;
            }
            h264I420Frame.info.putInt(4, bArr[4] & 31);
            byte b = bArr[4] & 31;
            if (b < 5 || b > 8) {
                z = false;
            }
            h264I420Frame.info.putLong(12, j);
            if (z) {
                Log.i(TAG, "h264 add frame header  cdr flag");
                h264I420Frame.info.put(0, 1);
            }
            if (i2 > 0) {
                h264I420Frame.buffer.put(bArr);
                h264I420Frame.size = i2;
                return i2;
            }
            h264I420Frame.size = 0;
            return i2;
        } catch (Exception e) {
            Log.e(TAG, "find exception at encode frame outputFrame:", e);
            return 0;
        }
    }
}
