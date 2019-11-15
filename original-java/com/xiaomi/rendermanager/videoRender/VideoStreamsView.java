package com.xiaomi.rendermanager.videoRender;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.mi.milinkforgame.sdk.data.Error;
import com.xiaomi.rendermanager.videoRender.VideoRenderer.I420Frame;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.bouncycastle.crypto.tls.CipherSuite;

public class VideoStreamsView extends GLSurfaceView implements Renderer {
    private static final String FRAGMENT_SHADER_STRING = "precision mediump float;\nvarying vec2 interp_tc;\n\nuniform float width;\nuniform float height;\nuniform float width_stride;\nuniform float height_stride;\nuniform float offset;\nuniform float slope;\nuniform float sharpCoff;\nuniform float sourceCoff;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\n\nvarying highp float imageWidthFactor; \nvarying highp float imageHeightFactor; \nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate; \nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 bottomTextureCoordinate;\n\nvarying highp float centerMultiplier;\nvarying highp float edgeMultiplier;\n\nuniform sampler2D inputImageTexture;\n\nvoid main() {\n  float wRatio = (width - 1.0) / width_stride;\n  float hRatio = height / height_stride;\n  vec2 pos = interp_tc * vec2(wRatio, hRatio);\n  mediump vec2 widthStep = vec2(imageWidthFactor, 0.0);\n  mediump vec2 heightStep = vec2(0.0, imageHeightFactor);\n  vec2 leftTextureCoordinate = interp_tc.xy - widthStep/width;\n  vec2 rightTextureCoordinate = interp_tc.xy + widthStep/width;\n  vec2 topTextureCoordinate = interp_tc.xy + heightStep/height;     \n  vec2 bottomTextureCoordinate = interp_tc.xy - heightStep/height;\n  vec2 lpos = leftTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 rpos = rightTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 tpos = topTextureCoordinate * vec2(wRatio, hRatio);\n  vec2 bpos = bottomTextureCoordinate * vec2(wRatio, hRatio);\n  mediump float ly = texture2D(y_tex, lpos).r;\n  mediump float lu = texture2D(u_tex, lpos).r - .5;\n  mediump float lv = texture2D(v_tex, lpos).r - .5;\n  mediump float ry = texture2D(y_tex, rpos).r;\n  mediump float ru = texture2D(u_tex, rpos).r - .5;\n  mediump float rv = texture2D(v_tex, rpos).r - .5;\n  mediump float ty = texture2D(y_tex, tpos).r;\n  mediump float tu = texture2D(u_tex, tpos).r - .5;\n  mediump float tv = texture2D(v_tex, tpos).r - .5;\n  mediump float by = texture2D(y_tex, bpos).r;\n  mediump float bu = texture2D(u_tex, bpos).r - .5;\n  mediump float bv = texture2D(v_tex, bpos).r - .5;\n  float y =  texture2D(y_tex, pos).r;\n  float u =  texture2D(u_tex, pos).r - .5;\n  float v =  texture2D(v_tex, pos).r - .5;\n  y = (y * centerMultiplier - (ly + ry +ty  + by) * edgeMultiplier)*sharpCoff + y*sourceCoff;\n  y = (1.0 + slope)*y  -  slope*offset;\n  gl_FragColor = vec4(y + 1.403 * v,                       y - 0.344 * u - 0.714 * v,                       y + 1.77 * u, 1);\n}\n";
    private static final int ORIENTATION_DOWN = 1;
    private static final int ORIENTATION_LEFT = 2;
    private static final int ORIENTATION_RIGHT = 3;
    private static final int ORIENTATION_UP = 0;
    private static final String TAG = "VideoStreamsView";
    private static final String VERTEX_SHADER_STRING = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec2 in_tc;\n\nvarying float imageWidthFactor; \nvarying float imageHeightFactor; \nuniform float sharpStrength; \nvarying float sharpness;\n\nvarying vec2 textureCoordinate;\n\nvarying float centerMultiplier;\nvarying float edgeMultiplier;\n\n\nvoid main() {\n  gl_Position = in_pos;\n    \n imageWidthFactor = 1.0;\n imageHeightFactor = 1.0;\n sharpness = sharpStrength;\n    \n    textureCoordinate = in_tc.xy;\n    \n    centerMultiplier = 1.0 + 4.0 * sharpness;\n    edgeMultiplier = sharpness;\n  interp_tc = in_tc ;\n}\n";
    private static final FloatBuffer downTextureCoord = directNativeFloatBuffer(new float[]{0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 0.0f});
    private static final FloatBuffer downTextureCoordMirror = directNativeFloatBuffer(new float[]{1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f});
    private static final FloatBuffer leftTextureCoord = directNativeFloatBuffer(new float[]{1.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f});
    private static final FloatBuffer leftTextureCoordMirror = directNativeFloatBuffer(new float[]{0.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f});
    private static int logCounter = 0;
    private static final FloatBuffer rightTextureCoord = directNativeFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
    private static final FloatBuffer rightTextureCoordMirror = directNativeFloatBuffer(new float[]{1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f});
    private static final FloatBuffer upTextureCoord = directNativeFloatBuffer(new float[]{1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f});
    private static final FloatBuffer upTextureCoordMirror = directNativeFloatBuffer(new float[]{0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f, 1.0f});
    private static final FloatBuffer vertices = directNativeFloatBuffer(new float[]{1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f});
    public int _RatioHeight;
    public int _RatioWidth;
    public int _RatioX = 0;
    public int _RatioY = 0;
    public int _lastFrameAngle = 0;
    public int _lastYStride = 0;
    public int _lastYUVHeight = 0;
    public int _lastYUVWidth = 0;
    public int _oriViewHeight;
    public int _oriViewWidth;
    private boolean _renderModelChanged = false;
    private float _shiftUpVideoRatio = 0.0f;
    private float _shiftUpVideoRatioDelta = -1.0f;
    private float _shiftUpVideoValue = 0.0f;
    private float _shiftUpViewRatio = 0.0f;
    private float _shiftUpViewRatioDelta = -1.0f;
    public boolean _surfaceSizeChanged = true;
    private float canvasToFrameRatio = 1.0f;
    public int currentIndex;
    private int debug_increment = 0;
    private FramePool framePool = null;
    private I420Frame framesToRender;
    private int heightLocation = -1;
    private int heightStrideLocation = -1;
    public boolean isRenderThreadRunning = false;
    private long lastFPSLogTime = System.nanoTime();
    public long nativeObject = 0;
    private long numFramesSinceLastLog = 0;
    private int offsetLocation = -1;
    public String participantUID = "";
    private int posLocation = -1;
    private RenderModel renderModel;
    private Point screenDimensions;
    public int screenHeight = 0;
    public int screenWidth = 0;
    private int sharpCoffLocation = -1;
    private int sharpStrengthLocation = -1;
    private int slopeLocation = -1;
    private int sourceCoffLocation = -1;
    private int tcLocation = -1;
    private int widthLocation = -1;
    private int widthStrideLocation = -1;
    private int[] yuvTextures = {-1, -1, -1};

    public enum RenderModel {
        RENDER_MODEL_AUTO,
        RENDER_MODEL_FIT,
        RENDER_MODEL_CUT
    }

    private native boolean bindStream(long j, String str, boolean z);

    private native long create();

    private native void destory(long j);

    private native void setPreviewRender(long j);

    private native void setShiftUp(long j, float f, float f2, float f3, float f4, float f5);

    private native void setUIViewSize(long j, long j2, long j3);

    private native boolean setWindowsResolution(String str, float f, float f2);

    private native boolean unbindStream(long j);

    public VideoStreamsView(Context context, Point point) {
        super(context);
        this._oriViewWidth = point.x;
        this._oriViewHeight = point.y;
        Log.i("VideoStreamView", "init stream view");
        this.screenDimensions = point;
        setEGLContextClientVersion(2);
        setRenderer(this);
        setRenderMode(0);
        setDebugFlags(1);
        this.nativeObject = create();
        synchronized (this) {
            this.framePool = new FramePool();
            Log.i("VideoStreamView", "creating the java frame pool");
        }
        this.currentIndex = 0;
        this.renderModel = RenderModel.RENDER_MODEL_AUTO;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        this.screenWidth = width;
        this.screenWidth = width;
        int height = defaultDisplay.getHeight();
        this.screenHeight = height;
        this.screenHeight = height;
        Log.i("VideoStreamView", " get screen resolution:" + this.screenWidth + "x" + this.screenHeight);
        Log.i("VideoStreamView", " init OK");
    }

    public VideoStreamsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Log.i("VideoStreamView", "init stream view");
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        int width = defaultDisplay.getWidth();
        this.screenWidth = width;
        this.screenWidth = width;
        int height = defaultDisplay.getHeight();
        this.screenHeight = height;
        this.screenHeight = height;
        Log.i("VideoStreamView", " get screen resolution:" + this.screenWidth + "x" + this.screenHeight);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842996, 16842997});
        int layoutDimension = obtainStyledAttributes.getLayoutDimension(0, -1);
        int layoutDimension2 = obtainStyledAttributes.getLayoutDimension(1, -1);
        obtainStyledAttributes.recycle();
        if (layoutDimension < 0) {
            layoutDimension = this.screenWidth;
        }
        if (layoutDimension2 < 0) {
            layoutDimension2 = this.screenHeight;
        }
        this._oriViewWidth = layoutDimension;
        this._oriViewHeight = layoutDimension2;
        this.screenDimensions = new Point(this._oriViewWidth, this._oriViewHeight);
        setEGLContextClientVersion(2);
        setRenderer(this);
        setRenderMode(0);
        setDebugFlags(1);
        synchronized (this) {
            this.framePool = new FramePool();
            Log.i(TAG, "VideoStreamView: creating the java frame pool");
        }
        this.currentIndex = 0;
        this.renderModel = RenderModel.RENDER_MODEL_AUTO;
        Log.i("VideoStreamView", " init OK");
    }

    public int CalcRatioViewPort(int i, int i2, int i3) {
        int i4;
        int i5;
        if (i3 == 90 || i3 == 270) {
            i5 = i;
            i4 = i2;
        } else {
            i5 = i2;
            i4 = i;
        }
        float f = (float) ((((double) i4) * 1.0d) / ((double) this._oriViewWidth));
        float f2 = (float) ((((double) i5) * 1.0d) / ((double) this._oriViewHeight));
        if (f > f2) {
            this._RatioHeight = this._oriViewHeight;
            this._RatioWidth = (this._oriViewHeight * i4) / i5;
            this._RatioX = (this._oriViewWidth - this._RatioWidth) / 2;
            this._RatioY = 0;
        } else {
            this._RatioWidth = this._oriViewWidth;
            this._RatioHeight = (this._oriViewWidth * i5) / i4;
            this._RatioY = (this._oriViewHeight - this._RatioHeight) / 2;
            this._RatioX = 0;
        }
        int i6 = this._oriViewWidth * this._oriViewHeight;
        int i7 = this._RatioWidth * this._RatioHeight;
        float f3 = ((float) i6) / ((float) i7);
        Log.i(TAG, "VideoStreamView: VideoStreamView opengl setting first calculate: " + this._RatioX + " _RatioY:" + this._RatioY + " _RatioWidth:" + this._RatioWidth + " _RatioHeight:" + this._RatioHeight + " screen height:" + this._oriViewHeight + " screen Width:" + this._oriViewWidth + " frame height:" + i2 + " frame width:" + i + " showRatio:" + f3 + " screen:" + i6 + " showsize:" + i7 + " wRatio:" + f + " hRatio:" + f2 + " rotateImageWidth:" + i4 + " rotateImageHeight:" + i5);
        if ((((double) f3) >= 0.45d || this.renderModel != RenderModel.RENDER_MODEL_AUTO) && this.renderModel != RenderModel.RENDER_MODEL_FIT) {
            Log.i(TAG, "VideoStreamView: opengl setting using CUT modal");
        } else {
            Log.i(TAG, "VideoStreamView: opengl setting using FIT modal");
            if (f2 > f) {
                this._RatioHeight = this._oriViewHeight;
                this._RatioWidth = (this._RatioHeight * i4) / i5;
                this._RatioX = (this._oriViewWidth - this._RatioWidth) / 2;
                this._RatioY = 0;
            } else {
                this._RatioWidth = this._oriViewWidth;
                this._RatioHeight = (this._RatioWidth * i5) / i4;
                this._RatioX = 0;
                this._RatioY = (this._oriViewHeight - this._RatioHeight) / 2;
            }
        }
        if (f < f2) {
            this.canvasToFrameRatio = (((float) (this._oriViewHeight * i4)) * 1.0f) / ((float) (this._oriViewWidth * i5));
        } else {
            this.canvasToFrameRatio = (((float) (this._oriViewWidth * i5)) * 1.0f) / ((float) (this._oriViewHeight * i4));
        }
        float max = ((float) this._oriViewWidth) / ((float) Math.max(this._oriViewHeight, 1));
        if (Math.abs((((float) i4) / ((float) Math.max(i5, 1))) - this._shiftUpVideoRatio) < this._shiftUpVideoRatioDelta && Math.abs(max - this._shiftUpViewRatio) < this._shiftUpViewRatioDelta) {
            this._RatioY = (int) (((float) this._RatioY) + (this._shiftUpVideoValue * ((float) this._oriViewHeight)));
        }
        Log.i(TAG, "VideoStreamView: VideoStreamView opengl setting _RatioX: " + this._RatioX + " _RatioY:" + this._RatioY + " _RatioWidth:" + this._RatioWidth + " _RatioHeight:" + this._RatioHeight + " screen height:" + this._oriViewHeight + " screen Width:" + this._oriViewWidth + " frame height:" + i2 + " frame width:" + i);
        return 0;
    }

    public void onPause() {
        Log.i(TAG, "VideoStreamView: VideoStreamView paused render. view:" + this);
        super.onPause();
    }

    public void onResume() {
        Log.i(TAG, "VideoStreamView: VideoStreamView resume render. view:" + this);
        super.onResume();
    }

    public void destoryNativeRender() {
        destory(this.nativeObject);
        synchronized (this) {
            Log.i(TAG, "VideoStreamView:release the java frame pool");
            this.framePool = null;
        }
    }

    public void setShiftUpImpl(float f, float f2, float f3, float f4, float f5) {
        this._shiftUpVideoRatio = f3;
        this._shiftUpVideoRatioDelta = f4;
        this._shiftUpViewRatio = f;
        this._shiftUpViewRatioDelta = f2;
        this._shiftUpVideoValue = f5;
    }

    public void setShiftUpInternal(float f, float f2, float f3, float f4, float f5) {
        Log.i(TAG, "VideoStreamView: setShiftUp with:" + f + " viewRatioDelta:" + f2 + " videoRatio:" + f3 + " videoRatioDelta:" + f4 + " shiftUpValue:" + f5 + " view:" + this);
        setShiftUp(this.nativeObject, f, f2, f3, f4, f5);
    }

    public boolean bindRenderWithStream(String str, boolean z) {
        Log.i(TAG, "VideoStreamView: bindRenderWithStream with:" + str + " view:" + this);
        this.participantUID = str;
        if (this.nativeObject == 0) {
            this.nativeObject = create();
        }
        setWindowsResolution(this.participantUID, ((float) this._oriViewWidth) / ((float) this.screenWidth), ((float) this._oriViewHeight) / ((float) this.screenHeight));
        return bindStream(this.nativeObject, str, z);
    }

    public boolean unbindRenderWithStream() {
        Log.i(TAG, "VideoStreamView: unbindRenderWithStream" + this);
        return unbindStream(this.nativeObject);
    }

    public void setRenderModel(RenderModel renderModel2) {
        if (renderModel2 != this.renderModel) {
            this.renderModel = renderModel2;
            this._renderModelChanged = true;
        }
    }

    /* access modifiers changed from: private */
    public void updateFrames() {
        int i = logCounter;
        logCounter = i + 1;
        if (i % 200 == 0) {
            Log.i(TAG, "The view size top:" + getTop() + " bottom:" + getBottom() + " left:" + getLeft() + " right:" + getRight() + " visiblility:" + getVisibility() + " 0 for visible 4 for invisible and 8 for gone" + " view:" + this);
        }
        requestRender();
    }

    public void videoSizeChanged(int i, int i2) {
        Log.i(TAG, "VideoStreamView: The video size changed to " + i + Token.SEPARATOR + i2);
    }

    public float getConvertRatio() {
        if (this.renderModel == RenderModel.RENDER_MODEL_FIT) {
            return 1.0f / this.canvasToFrameRatio;
        }
        return this.canvasToFrameRatio;
    }

    private static void fill(ByteBuffer byteBuffer, int i) {
        for (int i2 = 0; i2 < byteBuffer.capacity(); i2++) {
            byteBuffer.put(i2, (byte) i);
        }
    }

    public void generateTexture(int i, int i2) {
        ByteBuffer byteBuffer;
        Log.i(TAG, "VideoStreamView: Generate the texture.");
        ByteBuffer allocate = ByteBuffer.allocate(i * i2);
        fill(allocate, 0);
        ByteBuffer allocate2 = ByteBuffer.allocate(((i / 2) * i2) / 2);
        fill(allocate2, 128);
        int[] iArr = this.yuvTextures;
        GLES20.glGenTextures(3, iArr, 0);
        checkNoGLES2Error();
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < 3) {
                int i5 = i4 == 0 ? i : i / 2;
                int i6 = i4 == 0 ? i2 : i2 / 2;
                GLES20.glActiveTexture(33984 + i4);
                checkNoGLES2Error();
                GLES20.glBindTexture(3553, iArr[i4]);
                checkNoGLES2Error();
                if (i4 == 0) {
                    byteBuffer = allocate;
                } else {
                    byteBuffer = allocate2;
                }
                GLES20.glTexImage2D(3553, 0, 6409, i5, i6, 0, 6409, 5121, byteBuffer);
                checkNoGLES2Error();
                GLES20.glTexParameterf(3553, 10241, 9729.0f);
                checkNoGLES2Error();
                GLES20.glTexParameterf(3553, 10240, 9729.0f);
                checkNoGLES2Error();
                GLES20.glTexParameterf(3553, 10242, 33071.0f);
                checkNoGLES2Error();
                GLES20.glTexParameterf(3553, 10243, 33071.0f);
                checkNoGLES2Error();
                i3 = i4 + 1;
            } else {
                return;
            }
        }
    }

    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        Log.i(TAG, "VideoStreamView: On Surface changed with with:" + i + " height:" + i2);
        this._oriViewWidth = i;
        this._oriViewHeight = i2;
        this._surfaceSizeChanged = true;
        float f = ((float) i) / ((float) this.screenWidth);
        float f2 = ((float) i2) / ((float) this.screenHeight);
        Log.i(TAG, "VideoStreamView: On Surface set width_ratio:" + f + " height_ratio:" + f2);
        setWindowsResolution(this.participantUID, f, f2);
    }

    public void onDrawFrame(GL10 gl10) {
        boolean z = false;
        synchronized (this) {
            if (this.framesToRender == null) {
                Log.i(TAG, "onDrawFrame: framesToRender  is null !");
                return;
            }
            I420Frame i420Frame = this.framesToRender;
            this.framesToRender = null;
            if (this.framePool == null) {
                Log.i(TAG, "onDrawFrame: framePool is null !");
                return;
            }
            if (i420Frame == null) {
                Log.i(TAG, "updateFrames: frame is null !");
            }
            if (i420Frame != null) {
                if (!(this._lastYUVWidth == i420Frame.width && this._lastYUVHeight == i420Frame.height && !this._renderModelChanged && !this._surfaceSizeChanged && this._lastFrameAngle == i420Frame.rotateAngle && this._lastYStride == i420Frame.yuvStrides[0])) {
                    Log.i(TAG, "Generate texture because one of following property change: _lastYUVWidth:" + this._lastYUVWidth + " _lastYUVHeight:" + this._lastYUVHeight + " _renderModelChanged:" + this._renderModelChanged + " _surfaceSizeChanged:" + this._surfaceSizeChanged + " _lastYStride:" + this._lastYStride);
                    this._lastYStride = i420Frame.yuvStrides[0];
                    CalcRatioViewPort(i420Frame.width, i420Frame.height, (i420Frame.rotateAngle + 720) % 360);
                    checkNoGLES2Error();
                    this._lastYUVWidth = i420Frame.width;
                    this._lastYUVHeight = i420Frame.height;
                    this._lastFrameAngle = i420Frame.rotateAngle;
                    this._surfaceSizeChanged = false;
                    this._renderModelChanged = false;
                }
                texImage2D(i420Frame, this.yuvTextures);
                checkNoGLES2Error();
                this.framePool.returnFrame(i420Frame);
            }
            if (i420Frame != null) {
                z = true;
            }
            abortUnless(z, "Nothing to render!");
            GLES20.glViewport(this._RatioX, this._RatioY, this._RatioWidth, this._RatioHeight);
            GLES20.glClear(16384);
            Boolean valueOf = Boolean.valueOf(false);
            FloatBuffer directNativeFloatBuffer = directNativeFloatBuffer(new float[]{0.0f - ((float) ((((double) this.debug_increment) * 0.01d) + 0.5d)), 0.0f - ((float) ((((double) this.debug_increment) * 0.01d) + 0.5d)), 0.0f - ((float) ((((double) this.debug_increment) * 0.01d) + 0.5d)), 0.0f - ((float) ((((double) this.debug_increment) * 0.01d) + 0.5d)), (float) ((((double) this.debug_increment) * 0.01d) + 0.5d), (float) ((((double) this.debug_increment) * 0.01d) + 0.5d), (float) ((((double) this.debug_increment) * 0.01d) + 0.5d), 0.0f - ((float) ((((double) this.debug_increment) * 0.01d) + 0.5d))});
            this.debug_increment++;
            this.debug_increment %= 50;
            int[] iArr = this.yuvTextures;
            if (!valueOf.booleanValue()) {
                directNativeFloatBuffer = vertices;
            }
            drawRectangle(iArr, directNativeFloatBuffer);
            checkNoGLES2Error();
            this.numFramesSinceLastLog++;
            long nanoTime = System.nanoTime();
            if (this.lastFPSLogTime == -1 || ((double) (nanoTime - this.lastFPSLogTime)) > 1.0E9d) {
                double d = ((double) this.numFramesSinceLastLog) / (((double) (nanoTime - this.lastFPSLogTime)) / 1.0E9d);
                this.lastFPSLogTime = nanoTime;
                this.numFramesSinceLastLog = 1;
            }
            checkNoGLES2Error();
        }
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14 = false;
        Log.i(TAG, "VideoStreamView: surface created");
        try {
            generateTexture(1024, 1024);
        } catch (Exception e) {
            MemoryInfo memoryInfo = new MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            Log.i(TAG, " dalvikPrivateDirty: " + memoryInfo.dalvikPrivateDirty + "");
            Log.i(TAG, " nativePss: " + memoryInfo.nativePss + "");
            Log.i(TAG, " otherSharedDirty: " + memoryInfo.otherSharedDirty + "");
            Log.i(TAG, " totalPrivate: " + memoryInfo.getTotalPrivateDirty() + ", " + " totalPss:" + memoryInfo.getTotalPss() + " totalShared" + memoryInfo.getTotalSharedDirty() + "");
            Log.i(TAG, "NativeHeapSizeTotal:" + (Debug.getNativeHeapSize() >> 10));
            Log.i(TAG, "NativeAllocatedHeapSize:" + (Debug.getNativeHeapAllocatedSize() >> 10));
            Log.i(TAG, "NativeAllocatedFree:" + (Debug.getNativeHeapFreeSize() >> 10));
        }
        int glCreateProgram = GLES20.glCreateProgram();
        if (glCreateProgram > 0) {
            z = true;
        } else {
            z = false;
        }
        abortUnless(z, "Create OpenGL program failed.");
        addShaderTo(35633, VERTEX_SHADER_STRING, glCreateProgram);
        checkNoGLES2Error();
        addShaderTo(35632, FRAGMENT_SHADER_STRING, glCreateProgram);
        checkNoGLES2Error();
        GLES20.glLinkProgram(glCreateProgram);
        checkNoGLES2Error();
        int[] iArr = {0};
        iArr[0] = 0;
        GLES20.glGetProgramiv(glCreateProgram, 35714, iArr, 0);
        checkNoGLES2Error();
        abortUnless(iArr[0] == 1, GLES20.glGetProgramInfoLog(glCreateProgram));
        checkNoGLES2Error();
        GLES20.glUseProgram(glCreateProgram);
        checkNoGLES2Error();
        int glGetUniformLocation = GLES20.glGetUniformLocation(glCreateProgram, "y_tex");
        if (glGetUniformLocation != -1) {
            z2 = true;
        } else {
            z2 = false;
        }
        abortUnless(z2, "get y_tex failed.");
        checkNoGLES2Error();
        GLES20.glUniform1i(glGetUniformLocation, 0);
        checkNoGLES2Error();
        int glGetUniformLocation2 = GLES20.glGetUniformLocation(glCreateProgram, "u_tex");
        if (glGetUniformLocation2 != -1) {
            z3 = true;
        } else {
            z3 = false;
        }
        abortUnless(z3, "get u_tex failed.");
        checkNoGLES2Error();
        GLES20.glUniform1i(glGetUniformLocation2, 1);
        checkNoGLES2Error();
        int glGetUniformLocation3 = GLES20.glGetUniformLocation(glCreateProgram, "v_tex");
        if (glGetUniformLocation3 != -1) {
            z4 = true;
        } else {
            z4 = false;
        }
        abortUnless(z4, "get v_tex failed.");
        checkNoGLES2Error();
        GLES20.glUniform1i(glGetUniformLocation3, 2);
        checkNoGLES2Error();
        this.posLocation = GLES20.glGetAttribLocation(glCreateProgram, "in_pos");
        if (this.posLocation != -1) {
            z5 = true;
        } else {
            z5 = false;
        }
        abortUnless(z5, "Get opengl variable in_pos address failed.");
        checkNoGLES2Error();
        this.tcLocation = GLES20.glGetAttribLocation(glCreateProgram, "in_tc");
        if (this.posLocation != -1) {
            z6 = true;
        } else {
            z6 = false;
        }
        abortUnless(z6, "Get opengl variable in_tc address failed.");
        checkNoGLES2Error();
        GLES20.glEnableVertexAttribArray(this.tcLocation);
        checkNoGLES2Error();
        GLES20.glVertexAttribPointer(this.tcLocation, 2, 5126, false, 0, upTextureCoord);
        checkNoGLES2Error();
        this.widthStrideLocation = GLES20.glGetUniformLocation(glCreateProgram, "width_stride");
        abortUnless(this.widthStrideLocation != -1, "Get opengl variable width_stride address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.widthStrideLocation, 256.0f);
        checkNoGLES2Error();
        this.heightStrideLocation = GLES20.glGetUniformLocation(glCreateProgram, "height_stride");
        if (this.heightStrideLocation != -1) {
            z7 = true;
        } else {
            z7 = false;
        }
        abortUnless(z7, "Get opengl variable height_stride address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.heightStrideLocation, 256.0f);
        checkNoGLES2Error();
        this.offsetLocation = GLES20.glGetUniformLocation(glCreateProgram, "offset");
        if (this.offsetLocation != -1) {
            z8 = true;
        } else {
            z8 = false;
        }
        abortUnless(z8, "Get opengl variable offset_stride address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.offsetLocation, 256.0f);
        checkNoGLES2Error();
        this.slopeLocation = GLES20.glGetUniformLocation(glCreateProgram, "slope");
        if (this.slopeLocation != -1) {
            z9 = true;
        } else {
            z9 = false;
        }
        abortUnless(z9, "Get opengl variable slope address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.slopeLocation, 256.0f);
        checkNoGLES2Error();
        this.sharpCoffLocation = GLES20.glGetUniformLocation(glCreateProgram, "sharpCoff");
        if (this.sharpCoffLocation != -1) {
            z10 = true;
        } else {
            z10 = false;
        }
        abortUnless(z10, "Get opengl variable sharpCoffLocation address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.sharpCoffLocation, 256.0f);
        checkNoGLES2Error();
        this.sharpStrengthLocation = GLES20.glGetUniformLocation(glCreateProgram, "sharpStrength");
        if (this.sharpStrengthLocation != -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        abortUnless(z11, "Get opengl variable sharpStrengthLocation address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.sharpStrengthLocation, 256.0f);
        checkNoGLES2Error();
        this.sourceCoffLocation = GLES20.glGetUniformLocation(glCreateProgram, "sourceCoff");
        if (this.sourceCoffLocation != -1) {
            z12 = true;
        } else {
            z12 = false;
        }
        abortUnless(z12, "Get opengl variable sourceCoffLocation address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.sourceCoffLocation, 256.0f);
        checkNoGLES2Error();
        this.widthLocation = GLES20.glGetUniformLocation(glCreateProgram, "width");
        if (this.widthLocation != -1) {
            z13 = true;
        } else {
            z13 = false;
        }
        abortUnless(z13, "Get opengl variable width address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.widthLocation, 256.0f);
        checkNoGLES2Error();
        this.heightLocation = GLES20.glGetUniformLocation(glCreateProgram, "height");
        if (this.heightLocation != -1) {
            z14 = true;
        }
        abortUnless(z14, "Get opengl variable height address failed.");
        checkNoGLES2Error();
        GLES20.glUniform1f(this.heightLocation, 256.0f);
        checkNoGLES2Error();
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        checkNoGLES2Error();
        GLES20.glPixelStorei(3317, 1);
        checkNoGLES2Error();
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Log.i(TAG, "surfaceCreated, this pointer is  " + this);
        super.surfaceCreated(surfaceHolder);
        this.isRenderThreadRunning = true;
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Log.i(TAG, "surfaceDestroyed, this pointer is  " + this);
        super.surfaceDestroyed(surfaceHolder);
        this.isRenderThreadRunning = false;
        synchronized (this) {
            if (this.framesToRender != null) {
                if (this.framePool != null) {
                    this.framePool.returnFrame(this.framesToRender);
                }
                this.framesToRender = null;
            }
        }
    }

    private static FloatBuffer directNativeFloatBuffer(float[] fArr) {
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.put(fArr);
        asFloatBuffer.flip();
        return asFloatBuffer;
    }

    private void texImage2D(I420Frame i420Frame, int[] iArr) {
        int i = 0;
        while (i < 3) {
            ByteBuffer byteBuffer = i420Frame.yuvPlanes[i];
            GLES20.glActiveTexture(33984 + i);
            checkNoGLES2Error();
            GLES20.glBindTexture(3553, iArr[i]);
            checkNoGLES2Error();
            GLES20.glTexImage2D(3553, 0, 6409, i == 0 ? i420Frame.yuvStrides[0] : i420Frame.yuvStrides[0] / 2, i == 0 ? i420Frame.height : i420Frame.height / 2, 0, 6409, 5121, byteBuffer);
            checkNoGLES2Error();
            i++;
        }
        GLES20.glUniform1f(this.widthLocation, (float) i420Frame.width);
        GLES20.glUniform1f(this.heightLocation, (float) i420Frame.height);
        GLES20.glUniform1f(this.widthStrideLocation, (float) i420Frame.yuvStrides[0]);
        GLES20.glUniform1f(this.heightStrideLocation, (float) i420Frame.height);
        GLES20.glUniform1f(this.offsetLocation, i420Frame.offset);
        GLES20.glUniform1f(this.slopeLocation, i420Frame.slope);
        GLES20.glUniform1f(this.sourceCoffLocation, i420Frame.sourceCoff);
        GLES20.glUniform1f(this.sharpCoffLocation, i420Frame.sharpCoff);
        GLES20.glUniform1f(this.sharpStrengthLocation, i420Frame.sharpStrength);
        GLES20.glEnableVertexAttribArray(this.tcLocation);
        checkNoGLES2Error();
        boolean z = i420Frame.localPreview && !i420Frame.backCamera;
        Buffer buffer = null;
        int i2 = (i420Frame.rotateAngle + 720) % 360;
        switch (i2) {
            case 0:
                buffer = z ? upTextureCoordMirror : upTextureCoord;
                break;
            case 90:
                buffer = z ? leftTextureCoordMirror : leftTextureCoord;
                break;
            case CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256 /*180*/:
                buffer = z ? downTextureCoordMirror : downTextureCoord;
                break;
            case Error.E_WTSDK_A1_DECRYPT /*270*/:
                buffer = z ? rightTextureCoordMirror : rightTextureCoord;
                break;
            default:
                abortUnless(false, "totalAngle: " + i2 + " not supported.");
                break;
        }
        GLES20.glVertexAttribPointer(this.tcLocation, 2, 5126, false, 0, buffer);
        checkNoGLES2Error();
    }

    private void drawRectangle(int[] iArr, FloatBuffer floatBuffer) {
        for (int i = 0; i < 3; i++) {
            GLES20.glActiveTexture(33984 + i);
            checkNoGLES2Error();
            GLES20.glBindTexture(3553, iArr[i]);
            checkNoGLES2Error();
        }
        GLES20.glVertexAttribPointer(this.posLocation, 2, 5126, false, 0, floatBuffer);
        checkNoGLES2Error();
        GLES20.glEnableVertexAttribArray(this.posLocation);
        checkNoGLES2Error();
        GLES20.glDrawArrays(5, 0, 4);
        checkNoGLES2Error();
    }

    private static void addShaderTo(int i, String str, int i2) {
        boolean z = true;
        int[] iArr = {0};
        int glCreateShader = GLES20.glCreateShader(i);
        abortUnless(glCreateShader != 0, "Create opengl shader failed.");
        GLES20.glShaderSource(glCreateShader, str);
        checkNoGLES2Error();
        GLES20.glCompileShader(glCreateShader);
        checkNoGLES2Error();
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            z = false;
        }
        abortUnless(z, GLES20.glGetShaderInfoLog(glCreateShader) + ", source: " + str);
        GLES20.glAttachShader(i2, glCreateShader);
        checkNoGLES2Error();
        GLES20.glDeleteShader(glCreateShader);
        checkNoGLES2Error();
    }

    private static void abortUnless(boolean z, String str) {
        if (!z) {
            throw new RuntimeException(str);
        }
    }

    public void setSize(final int i, final int i2) {
        Log.i(TAG, "VideoStreamView: The thread id (NATIVE thread) for setSize is:" + Thread.currentThread().getId());
        queueEvent(new Runnable() {
            public void run() {
                Log.i(VideoStreamsView.TAG, "VideoStreamView: The thread id for videoSizeChanged is:" + Thread.currentThread().getId());
                this.videoSizeChanged(i, i2);
            }
        });
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x006c, code lost:
        if (r4.framesToRender != null) goto L_0x0075;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x006e, code lost:
        android.util.Log.w(TAG, "updateFrame renderFrame framesToRender is null");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0075, code lost:
        if (r0 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0077, code lost:
        queueEvent(new com.xiaomi.rendermanager.videoRender.VideoStreamsView.AnonymousClass2(r4));
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void renderFrame(com.xiaomi.rendermanager.videoRender.VideoRenderer.I420Frame r5) {
        /*
            r4 = this;
            boolean r0 = com.xiaomi.rendermanager.videoRender.FramePool.validateDimensions(r5)
            java.lang.String r1 = "Frame too large!"
            abortUnless(r0, r1)
            boolean r0 = r4.isRenderThreadRunning
            if (r0 != 0) goto L_0x0015
            java.lang.String r0 = "VideoStreamsView"
            java.lang.String r1 = "VideoStreamView: The render thread is not running, so we discard this frame."
            android.util.Log.w(r0, r1)
        L_0x0014:
            return
        L_0x0015:
            monitor-enter(r4)
            com.xiaomi.rendermanager.videoRender.FramePool r0 = r4.framePool     // Catch:{ all -> 0x0023 }
            if (r0 != 0) goto L_0x0026
            java.lang.String r0 = "VideoStreamsView"
            java.lang.String r1 = "VideoStreamView: frame pool is null!"
            android.util.Log.w(r0, r1)     // Catch:{ all -> 0x0023 }
            monitor-exit(r4)     // Catch:{ all -> 0x0023 }
            goto L_0x0014
        L_0x0023:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0023 }
            throw r0
        L_0x0026:
            com.xiaomi.rendermanager.videoRender.FramePool r0 = r4.framePool     // Catch:{ all -> 0x0023 }
            com.xiaomi.rendermanager.videoRender.VideoRenderer$I420Frame r1 = r0.takeFrame(r5)     // Catch:{ all -> 0x0023 }
            if (r1 != 0) goto L_0x0056
            java.lang.String r0 = "VideoStreamsView"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0023 }
            r1.<init>()     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = "VideoStreamView: Take an frame from frame pool is empty, discard this frame:"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            int r2 = r5.width     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r2 = " X "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            int r2 = r5.height     // Catch:{ all -> 0x0023 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0023 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0023 }
            android.util.Log.w(r0, r1)     // Catch:{ all -> 0x0023 }
            monitor-exit(r4)     // Catch:{ all -> 0x0023 }
            goto L_0x0014
        L_0x0056:
            r1.copyFrom(r5)     // Catch:{ all -> 0x0023 }
            com.xiaomi.rendermanager.videoRender.VideoRenderer$I420Frame r0 = r4.framesToRender     // Catch:{ all -> 0x0023 }
            if (r0 != 0) goto L_0x0080
            r0 = 1
        L_0x005e:
            com.xiaomi.rendermanager.videoRender.VideoRenderer$I420Frame r2 = r4.framesToRender     // Catch:{ all -> 0x0023 }
            if (r2 == 0) goto L_0x0067
            com.xiaomi.rendermanager.videoRender.FramePool r3 = r4.framePool     // Catch:{ all -> 0x0023 }
            r3.returnFrame(r2)     // Catch:{ all -> 0x0023 }
        L_0x0067:
            r4.framesToRender = r1     // Catch:{ all -> 0x0023 }
            monitor-exit(r4)     // Catch:{ all -> 0x0023 }
            com.xiaomi.rendermanager.videoRender.VideoRenderer$I420Frame r1 = r4.framesToRender
            if (r1 != 0) goto L_0x0075
            java.lang.String r1 = "VideoStreamsView"
            java.lang.String r2 = "updateFrame renderFrame framesToRender is null"
            android.util.Log.w(r1, r2)
        L_0x0075:
            if (r0 == 0) goto L_0x0014
            com.xiaomi.rendermanager.videoRender.VideoStreamsView$2 r0 = new com.xiaomi.rendermanager.videoRender.VideoStreamsView$2
            r0.<init>()
            r4.queueEvent(r0)
            goto L_0x0014
        L_0x0080:
            r0 = 0
            goto L_0x005e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.xiaomi.rendermanager.videoRender.VideoStreamsView.renderFrame(com.xiaomi.rendermanager.videoRender.VideoRenderer$I420Frame):void");
    }

    private void sleep(int i) {
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.i(TAG, "attach the surface to window");
        this.isRenderThreadRunning = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Log.i(TAG, "detach the surface to window");
        this.isRenderThreadRunning = false;
    }

    private static void checkNoGLES2Error() {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            Log.e(TAG, "GLES20 error:" + glGetError);
        }
        abortUnless(glGetError == 0, "GLES20 error: " + glGetError);
    }
}
