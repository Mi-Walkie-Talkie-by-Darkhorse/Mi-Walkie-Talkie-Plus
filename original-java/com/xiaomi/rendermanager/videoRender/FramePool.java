package com.xiaomi.rendermanager.videoRender;

import android.util.Log;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.rendermanager.videoRender.VideoRenderer.I420Frame;
import java.util.LinkedList;

class FramePool {
    private static final int MAX_DIMENSION = 2048;
    private static final String TAG = "FramePool";
    private static int frameCount = 16;
    private BufferPoolInfo poolInfo = new BufferPoolInfo();

    class BufferPoolInfo {
        LinkedList<I420Frame> freeFrameList = new LinkedList<>();
        int totalAllocateCount = 2;

        public BufferPoolInfo() {
            int[] iArr = {2048, 1024, 1024};
            for (int i = 0; i < this.totalAllocateCount; i++) {
                this.freeFrameList.add(new I420Frame(2048, 2048, false, false, iArr, null, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0));
            }
        }
    }

    FramePool() {
    }

    public I420Frame takeFrame(I420Frame i420Frame) {
        I420Frame i420Frame2;
        synchronized (this.poolInfo) {
            LinkedList<I420Frame> linkedList = this.poolInfo.freeFrameList;
            if (i420Frame.width > 2048 || i420Frame.height > 2048) {
                throw new RuntimeException("resolution is out of boundary, width: " + i420Frame.width + ", height: " + i420Frame.height);
            } else if (!linkedList.isEmpty()) {
                i420Frame2 = (I420Frame) linkedList.pop();
                i420Frame2.localPreview = i420Frame.localPreview;
                i420Frame2.backCamera = i420Frame.backCamera;
                i420Frame2.width = i420Frame.width;
                i420Frame2.height = i420Frame.height;
                i420Frame2.yuvStrides = i420Frame.yuvStrides;
                i420Frame2.offset = i420Frame.offset;
                i420Frame2.slope = i420Frame.offset;
                i420Frame2.sourceCoff = i420Frame.sourceCoff;
                i420Frame2.sharpCoff = i420Frame.sharpCoff;
                i420Frame2.sharpStrength = i420Frame.sharpStrength;
                i420Frame2.rotateAngle = i420Frame.rotateAngle;
                frameCount--;
            } else {
                i420Frame2 = null;
                Log.e(TAG, "Buffer pool new a frame, totalAllocateCount: " + this.poolInfo.totalAllocateCount + " size:" + i420Frame.width + "x" + i420Frame.height + " for strid:" + i420Frame.yuvStrides[0] + Token.SEPARATOR + i420Frame.yuvStrides[1] + Token.SEPARATOR + i420Frame.yuvStrides[2]);
            }
        }
        return i420Frame2;
    }

    public int getFrameSize() {
        return frameCount;
    }

    public void returnFrame(I420Frame i420Frame) {
        if (this.poolInfo == null) {
            throw new IllegalArgumentException("Unexpected frame dimensions");
        }
        synchronized (this.poolInfo) {
            this.poolInfo.freeFrameList.add(i420Frame);
            frameCount++;
        }
    }

    public static boolean validateDimensions(I420Frame i420Frame) {
        return i420Frame.width <= 2048 && i420Frame.height <= 2048 && i420Frame.yuvStrides[0] <= 2048 && i420Frame.yuvStrides[1] <= 2048 && i420Frame.yuvStrides[2] <= 2048;
    }

    private static long summarizeFrameDimensions(I420Frame i420Frame) {
        return (((((((((long) i420Frame.width) * 2048) + ((long) i420Frame.height)) * 2048) + ((long) i420Frame.yuvStrides[0])) * 2048) + ((long) i420Frame.yuvStrides[1])) * 2048) + ((long) i420Frame.yuvStrides[2]);
    }
}
