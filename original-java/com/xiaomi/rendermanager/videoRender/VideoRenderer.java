package com.xiaomi.rendermanager.videoRender;

import java.nio.ByteBuffer;
import java.util.Arrays;

public class VideoRenderer {
    private final Callbacks callbacks;
    final long nativeVideoRenderer;

    public interface Callbacks {
        void renderFrame(I420Frame i420Frame);

        void setSize(int i, int i2);
    }

    public static class I420Frame {
        public boolean backCamera;
        public int height;
        public boolean localPreview;
        public float offset;
        public int rotateAngle;
        public float sharpCoff;
        public float sharpStrength;
        public float slope;
        public float sourceCoff;
        public int width;
        public final ByteBuffer[] yuvPlanes;
        public int[] yuvStrides;

        public I420Frame(int i, int i2, boolean z, boolean z2, int[] iArr, ByteBuffer[] byteBufferArr, float f, float f2, float f3, float f4, float f5, int i3) {
            this.width = i;
            this.height = i2;
            this.yuvStrides = iArr;
            this.localPreview = z;
            this.backCamera = z2;
            this.slope = f2;
            this.offset = f;
            this.sourceCoff = f3;
            this.sharpCoff = f4;
            this.sharpStrength = f5;
            this.rotateAngle = i3;
            if (byteBufferArr == null) {
                byteBufferArr = new ByteBuffer[]{ByteBuffer.allocateDirect(iArr[0] * i2), ByteBuffer.allocateDirect((iArr[1] * i2) / 2), ByteBuffer.allocateDirect((iArr[2] * i2) / 2)};
            }
            this.yuvPlanes = byteBufferArr;
        }

        public I420Frame copyFrom(I420Frame i420Frame) {
            System.currentTimeMillis();
            if (Arrays.equals(this.yuvStrides, i420Frame.yuvStrides) && this.width == i420Frame.width && this.height == i420Frame.height) {
                this.slope = i420Frame.slope;
                this.offset = i420Frame.offset;
                this.sourceCoff = i420Frame.sourceCoff;
                this.sharpCoff = i420Frame.sharpCoff;
                this.sharpStrength = i420Frame.sharpStrength;
                this.rotateAngle = i420Frame.rotateAngle;
                copyPlane(i420Frame.yuvPlanes[0], this.yuvPlanes[0]);
                copyPlane(i420Frame.yuvPlanes[1], this.yuvPlanes[1]);
                copyPlane(i420Frame.yuvPlanes[2], this.yuvPlanes[2]);
                return this;
            }
            throw new RuntimeException("Mismatched dimensions!  Source: " + i420Frame.toString() + ", destination: " + toString());
        }

        public String toString() {
            return this.width + "x" + this.height + ":" + this.yuvStrides[0] + ":" + this.yuvStrides[1] + ":" + this.yuvStrides[2];
        }

        private void copyPlane(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
            byteBuffer.position(0).limit(byteBuffer.capacity());
            byteBuffer2.put(byteBuffer);
            byteBuffer2.position(0).limit(byteBuffer2.capacity());
        }
    }

    private static native void free(long j);

    private static native long nativeCreateGuiVideoRenderer(int i, int i2);

    private static native long nativeWrapVideoRenderer(Callbacks callbacks2);

    public static VideoRenderer createGui(int i, int i2) {
        long nativeCreateGuiVideoRenderer = nativeCreateGuiVideoRenderer(i, i2);
        if (nativeCreateGuiVideoRenderer == 0) {
            return null;
        }
        return new VideoRenderer(nativeCreateGuiVideoRenderer);
    }

    public VideoRenderer(Callbacks callbacks2) {
        this.nativeVideoRenderer = nativeWrapVideoRenderer(callbacks2);
        this.callbacks = callbacks2;
    }

    private VideoRenderer(long j) {
        this.nativeVideoRenderer = j;
        this.callbacks = null;
    }

    public void dispose() {
        free(this.nativeVideoRenderer);
    }
}
