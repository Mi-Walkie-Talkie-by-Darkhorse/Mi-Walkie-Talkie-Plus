package com.xiaomi.broadcaster.VideoHWCodec;

import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;

public class H264HWCodec {
    private static final String TAG = "H264HWCodec";
    private H264Decoder decoder = new H264Decoder();
    private H264Encoder encoder = new H264Encoder();

    public static class H264I420Frame {
        public final ByteBuffer buffer;
        public int height;
        public final ByteBuffer info;
        public int size;
        public long timeStamp;
        public int width;

        public H264I420Frame(int i, int i2, ByteBuffer byteBuffer, int i3, ByteBuffer byteBuffer2, long j) {
            this.width = i;
            this.height = i2;
            this.size = i3;
            this.buffer = byteBuffer;
            this.info = byteBuffer2;
            this.timeStamp = j;
        }

        public H264I420Frame copyFrom(H264I420Frame h264I420Frame) {
            System.currentTimeMillis();
            if (this.size == h264I420Frame.size && this.width == h264I420Frame.width && this.height == h264I420Frame.height) {
                this.timeStamp = h264I420Frame.timeStamp;
                ByteBuffer byteBuffer = h264I420Frame.buffer;
                ByteBuffer byteBuffer2 = this.buffer;
                byteBuffer.position(0).limit(byteBuffer.capacity());
                byteBuffer2.put(byteBuffer);
                byteBuffer2.position(0).limit(byteBuffer2.capacity());
                return this;
            }
            throw new RuntimeException("Mismatched dimensions!  Source: " + h264I420Frame.toString() + ", destination: " + toString());
        }

        public String toString() {
            return this.width + "x" + this.height + ":" + this.size;
        }
    }

    public boolean initEncoder(int i, int i2, int i3, int i4) throws IOException {
        Log.i(TAG, " init encoder with: " + i + " height:" + i2 + " framerate:" + i3 + " bitrate:" + i4);
        return this.encoder.initEncoder(i, i2, i3, i4);
    }

    public boolean isSemiPlanarSupport() {
        Log.i(TAG, " isSemiPlanarSupport");
        return this.encoder.isSemiPlanarSupport();
    }

    public void setBitrate(int i) {
        Log.i(TAG, "set encoder bitrate with " + i);
        this.encoder.setBitrate(i);
    }

    public boolean encodeFrameInput(H264I420Frame h264I420Frame, boolean z) {
        return this.encoder.encodeFrameInput(h264I420Frame, z);
    }

    public int encodeFrameOutput(H264I420Frame h264I420Frame) {
        return this.encoder.encodeFrameOutput(h264I420Frame);
    }

    public void encoderRelease() {
        Log.i(TAG, "release encoder");
        this.encoder.release();
    }

    public void encoderReset() {
        Log.i(TAG, "encoder reset");
        this.encoder.reset();
    }

    public boolean initDecoder(int i, int i2, int i3, int i4) throws IOException {
        Log.i(TAG, "init decoder with:" + i + " height:" + i2 + " getWidth:" + i3 + " getHeight:" + i4);
        return this.decoder.initDecoder(i, i2, i3, i4);
    }

    public void decoderRelease() {
        Log.i(TAG, "release decoder");
        this.decoder.release();
    }

    public boolean decodeFrameInputStream(H264I420Frame h264I420Frame) {
        return this.decoder.decodeFrameInputStream(h264I420Frame);
    }

    public boolean decodeFrameGetPicture(H264I420Frame h264I420Frame) {
        return this.decoder.decodeFrameGetPicture(h264I420Frame);
    }
}
