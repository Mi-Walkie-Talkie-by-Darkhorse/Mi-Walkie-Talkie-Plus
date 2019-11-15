package com.xiaomi.broadcaster.VideoHWCodec;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.util.Log;
import com.xiaomi.broadcaster.VideoHWCodec.H264HWCodec.H264I420Frame;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class H264Decoder {
    private static final String AVC_MIME_TYPE = "video/avc";
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final int DEQUEUE_TIMEOUT = 0;
    private static final String TAG = "H264Decoder";
    private static final int[] supportedColorList = {19, 21, 2141391872, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m};
    private static final String[] supportedHwCodecPrefixes = {"OMX.qcom.", "OMX.Nvidia.", "OMX.IMG.", "OMX.Exynos", "OMX.MTK", "OMX.hantro", "OMX.Intel"};
    private int colorFormat;
    int counter = 0;
    private int dequedBufferIndex = -1;
    private int getHeight;
    private int getWidth;
    private boolean hasDequedBuffer = false;
    private int height;
    private ByteBuffer[] inputBuffers;
    private int lastSize = -1;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private ByteBuffer[] outputBuffers;
    private int sliceHeight;
    private int stride;
    private int width;

    private static class DecoderProperties {
        public final String codecName;
        public final int colorFormat;

        DecoderProperties(String str, int i) {
            this.codecName = str;
            this.colorFormat = i;
        }
    }

    private static DecoderProperties findH264HwDecoder() {
        String str;
        String[] strArr;
        int[] iArr;
        int[] iArr2;
        try {
            if (VERSION.SDK_INT < 19) {
                Log.i(TAG, "sdk version too low");
                return null;
            }
            for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
                MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
                if (!codecInfoAt.isEncoder()) {
                    String[] supportedTypes = codecInfoAt.getSupportedTypes();
                    int length = supportedTypes.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            str = null;
                            break;
                        }
                        String str2 = supportedTypes[i2];
                        if (str2.equals(AVC_MIME_TYPE)) {
                            Log.i(TAG, "mimeType is " + str2);
                            String name = codecInfoAt.getName();
                            Log.i(TAG, "name is  " + name);
                            str = name;
                            break;
                        }
                        i2++;
                    }
                    if (str != null) {
                        Log.d(TAG, "Found candidate decoder " + str);
                        CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(AVC_MIME_TYPE);
                        for (int hexString : capabilitiesForType.colorFormats) {
                            Log.d(TAG, "   Color: 0x" + Integer.toHexString(hexString));
                        }
                        for (String str3 : supportedHwCodecPrefixes) {
                            Log.i(TAG, " hwCodecPrefix :" + str3);
                            if (str.startsWith(str3)) {
                                for (int i3 : supportedColorList) {
                                    for (int i4 : capabilitiesForType.colorFormats) {
                                        if (i4 == i3) {
                                            Log.d(TAG, "Found target decoder " + str + ". Color: 0x" + Integer.toHexString(i4));
                                            return new DecoderProperties(str, i4);
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
            Log.e(TAG, "find exception at initDecode:", e);
            return null;
        }
    }

    private static boolean isPlatformSupported() {
        return findH264HwDecoder() != null;
    }

    private void checkOnMediaCodecThread() {
    }

    public boolean initDecoder(int i, int i2, int i3, int i4) throws IOException {
        try {
            Log.i(TAG, "decoder init with:" + i + " height:" + i2 + " getWidth:" + i3 + " getHeight:" + i4);
            DecoderProperties findH264HwDecoder = findH264HwDecoder();
            if (findH264HwDecoder == null) {
                return false;
            }
            Log.d(TAG, "Java initDecode: " + i + " x " + i2 + ". Color: 0x" + Integer.toHexString(findH264HwDecoder.colorFormat));
            this.mediaCodecThread = Thread.currentThread();
            this.width = i;
            this.height = i2;
            this.getWidth = i3;
            this.getHeight = i4;
            this.stride = i;
            this.sliceHeight = i2;
            this.hasDequedBuffer = false;
            this.dequedBufferIndex = -1;
            this.lastSize = -1;
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(AVC_MIME_TYPE, i, i2);
            createVideoFormat.setInteger("color-format", findH264HwDecoder.colorFormat);
            Log.d(TAG, "  Format: " + createVideoFormat + " codecName:" + findH264HwDecoder.codecName);
            this.mediaCodec = MediaCodec.createByCodecName(findH264HwDecoder.codecName);
            if (this.mediaCodec == null) {
                Log.i("hevc decoder", "decoder init error null");
                return false;
            }
            this.mediaCodec.configure(createVideoFormat, null, null, 0);
            this.mediaCodec.start();
            this.colorFormat = findH264HwDecoder.colorFormat;
            this.outputBuffers = this.mediaCodec.getOutputBuffers();
            this.inputBuffers = this.mediaCodec.getInputBuffers();
            Log.d(TAG, "Input buffers: " + this.inputBuffers.length + ". Output buffers: " + this.outputBuffers.length);
            Log.i(TAG, "decoder init done");
            return true;
        } catch (Exception e) {
            Log.e(TAG, "find exception at initDecode:", e);
            return false;
        }
    }

    public void release() {
        try {
            Log.i(TAG, "decoder release begin");
            checkOnMediaCodecThread();
            this.mediaCodec.stop();
            this.mediaCodec.release();
            this.mediaCodec = null;
            this.mediaCodecThread = null;
            Log.i(TAG, "decoder release done");
        } catch (Exception e) {
            Log.e(TAG, "find exception at release decoder:", e);
        }
    }

    private int dequeueInputBuffer() {
        try {
            checkOnMediaCodecThread();
            return this.mediaCodec.dequeueInputBuffer(-1);
        } catch (Exception e) {
            Log.e(TAG, "find exception at dequeueIntputBuffer:", e);
            return -2;
        }
    }

    private boolean queueInputBuffer(int i, int i2, long j) {
        try {
            checkOnMediaCodecThread();
            this.inputBuffers[i].position(0);
            this.inputBuffers[i].limit(i2);
            this.mediaCodec.queueInputBuffer(i, 0, i2, j, 0);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "find exception at queueInputBuffer:", e);
            return false;
        }
    }

    private int dequeueOutputBuffer(H264I420Frame h264I420Frame) {
        boolean z;
        try {
            checkOnMediaCodecThread();
            BufferInfo bufferInfo = new BufferInfo();
            int dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
            while (true) {
                if (dequeueOutputBuffer != -3 && dequeueOutputBuffer != -2) {
                    return dequeueOutputBuffer;
                }
                if (dequeueOutputBuffer == -3) {
                    this.outputBuffers = this.mediaCodec.getOutputBuffers();
                } else if (dequeueOutputBuffer == -2) {
                    MediaFormat outputFormat = this.mediaCodec.getOutputFormat();
                    Log.d(TAG, "Format changed: " + outputFormat.toString());
                    this.width = outputFormat.getInteger("width");
                    this.height = outputFormat.getInteger("height");
                    h264I420Frame.info.order(ByteOrder.LITTLE_ENDIAN);
                    h264I420Frame.info.putInt(0, this.width);
                    h264I420Frame.info.putInt(4, this.height);
                    Log.d(TAG, "new width: " + this.width + "new height:" + this.height);
                    if (outputFormat.containsKey("color-format")) {
                        this.colorFormat = outputFormat.getInteger("color-format");
                        Log.d(TAG, "Color: 0x" + Integer.toHexString(this.colorFormat));
                        int[] iArr = supportedColorList;
                        int length = iArr.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            }
                            if (this.colorFormat == iArr[i]) {
                                z = true;
                                break;
                            }
                            i++;
                        }
                        if (!z) {
                            Log.e(TAG, "Non supported color format");
                            return -2;
                        }
                    }
                    if (outputFormat.containsKey("stride")) {
                        this.stride = outputFormat.getInteger("stride");
                    }
                    if (outputFormat.containsKey("slice-height")) {
                        this.sliceHeight = outputFormat.getInteger("slice-height");
                    }
                    Log.i(TAG, "Frame stride and slice height: " + this.stride + " x " + this.sliceHeight);
                    this.stride = Math.max(this.width, this.stride);
                    this.sliceHeight = Math.max(this.height, this.sliceHeight);
                } else {
                    continue;
                }
                dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
            }
        } catch (Exception e) {
            Log.e(TAG, "find exception at dequeueOutputBuffer:", e);
            return -2;
        }
    }

    private boolean releaseOutputBuffer(int i) {
        try {
            checkOnMediaCodecThread();
            this.mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } catch (Exception e) {
            Log.e(TAG, "find exception at releaseOutputBuffer:", e);
            return false;
        }
    }

    public boolean decodeFrameInputStream(H264I420Frame h264I420Frame) {
        try {
            int dequeueInputBuffer = dequeueInputBuffer();
            if (dequeueInputBuffer >= 0) {
                ByteBuffer byteBuffer = this.inputBuffers[dequeueInputBuffer];
                byteBuffer.clear();
                byteBuffer.put(h264I420Frame.buffer);
                this.counter++;
                queueInputBuffer(dequeueInputBuffer, h264I420Frame.size, 0);
            } else {
                Log.i(TAG, " get inputBuffer error, maybe discard a frame");
            }
            return true;
        } catch (Exception e) {
            Log.e(TAG, "find exception at decodeFrameInputStream:", e);
            return false;
        }
    }

    public boolean decodeFrameGetPicture(H264I420Frame h264I420Frame) {
        int dequeueOutputBuffer;
        try {
            new BufferInfo();
            if (this.hasDequedBuffer) {
                dequeueOutputBuffer = this.dequedBufferIndex;
            } else {
                dequeueOutputBuffer = dequeueOutputBuffer(h264I420Frame);
            }
            if (dequeueOutputBuffer >= 0) {
                this.counter--;
                ByteBuffer byteBuffer = this.outputBuffers[dequeueOutputBuffer];
                byteBuffer.position(0);
                if (this.getWidth <= 0 || this.getHeight <= 0) {
                    h264I420Frame.buffer.put(byteBuffer);
                } else {
                    byte[] bArr = new byte[(((this.stride * this.height) * 3) / 2)];
                    byteBuffer.get(bArr);
                    for (int i = 0; i < this.getHeight; i++) {
                        h264I420Frame.buffer.put(bArr, this.stride * i, this.getWidth);
                    }
                }
                releaseOutputBuffer(dequeueOutputBuffer);
                int dequeueOutputBuffer2 = dequeueOutputBuffer(h264I420Frame);
                h264I420Frame.info.order(ByteOrder.LITTLE_ENDIAN);
                h264I420Frame.info.putInt(8, dequeueOutputBuffer2);
                if (dequeueOutputBuffer2 >= 0) {
                    this.counter--;
                    this.hasDequedBuffer = true;
                    this.dequedBufferIndex = dequeueOutputBuffer2;
                    return true;
                } else if (dequeueOutputBuffer2 == -2) {
                    ByteBuffer byteBuffer2 = this.outputBuffers[dequeueOutputBuffer2];
                    byteBuffer2.position(0);
                    if (this.getWidth <= 0 || this.getHeight <= 0) {
                        h264I420Frame.buffer.put(byteBuffer2);
                    } else {
                        byte[] bArr2 = new byte[(((this.stride * this.height) * 3) / 2)];
                        byteBuffer2.get(bArr2);
                        for (int i2 = 0; i2 < this.getHeight; i2++) {
                            h264I420Frame.buffer.put(bArr2, this.stride * i2, this.getWidth);
                        }
                    }
                    releaseOutputBuffer(dequeueOutputBuffer2);
                    this.hasDequedBuffer = false;
                    this.dequedBufferIndex = -1;
                    h264I420Frame.info.putInt(8, -1);
                    return true;
                } else {
                    this.hasDequedBuffer = false;
                    this.dequedBufferIndex = -1;
                    return true;
                }
            } else {
                h264I420Frame.info.putInt(8, -1);
                this.hasDequedBuffer = false;
                this.dequedBufferIndex = -1;
                return false;
            }
        } catch (Exception e) {
            Log.e(TAG, "find exception at decode decodeFrameGetPicture:", e);
            return false;
        }
    }
}
