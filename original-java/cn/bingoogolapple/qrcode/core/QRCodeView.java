package cn.bingoogolapple.qrcode.core;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public abstract class QRCodeView extends RelativeLayout implements PreviewCallback, cn.bingoogolapple.qrcode.core.ProcessDataTask.Delegate {
    protected Camera mCamera;
    protected Delegate mDelegate;
    protected Handler mHandler;
    private Runnable mOneShotPreviewCallbackTask;
    private int mOrientation;
    protected CameraPreview mPreview;
    protected ProcessDataTask mProcessDataTask;
    protected ScanBoxView mScanBoxView;
    protected boolean mSpotAble;

    public interface Delegate {
        void onScanQRCodeOpenCameraError();

        void onScanQRCodeSuccess(String str);
    }

    public QRCodeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QRCodeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mSpotAble = false;
        this.mOneShotPreviewCallbackTask = new Runnable() {
            public void run() {
                if (QRCodeView.this.mCamera != null && QRCodeView.this.mSpotAble) {
                    try {
                        QRCodeView.this.mCamera.setOneShotPreviewCallback(QRCodeView.this);
                    } catch (Exception e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }
        };
        this.mHandler = new Handler();
        initView(context, attributeSet);
    }

    private void initView(Context context, AttributeSet attributeSet) {
        this.mPreview = new CameraPreview(getContext());
        this.mScanBoxView = new ScanBoxView(getContext());
        this.mScanBoxView.initCustomAttrs(context, attributeSet);
        this.mPreview.setId(R.id.bgaqrcode_camera_preview);
        addView(this.mPreview);
        LayoutParams layoutParams = new LayoutParams(context, attributeSet);
        layoutParams.addRule(6, this.mPreview.getId());
        layoutParams.addRule(8, this.mPreview.getId());
        addView(this.mScanBoxView, layoutParams);
        this.mOrientation = BGAQRCodeUtil.getOrientation(context);
    }

    public void setDelegate(Delegate delegate) {
        this.mDelegate = delegate;
    }

    public ScanBoxView getScanBoxView() {
        return this.mScanBoxView;
    }

    public void showScanRect() {
        if (this.mScanBoxView != null) {
            this.mScanBoxView.setVisibility(0);
        }
    }

    public void hiddenScanRect() {
        if (this.mScanBoxView != null) {
            this.mScanBoxView.setVisibility(8);
        }
    }

    public void startCamera() {
        startCamera(0);
    }

    public void startCamera(int i) {
        if (this.mCamera == null) {
            CameraInfo cameraInfo = new CameraInfo();
            for (int i2 = 0; i2 < Camera.getNumberOfCameras(); i2++) {
                Camera.getCameraInfo(i2, cameraInfo);
                if (cameraInfo.facing == i) {
                    startCameraById(i2);
                    return;
                }
            }
        }
    }

    private void startCameraById(int i) {
        try {
            this.mCamera = Camera.open(i);
            this.mPreview.setCamera(this.mCamera);
        } catch (Exception e) {
            if (this.mDelegate != null) {
                this.mDelegate.onScanQRCodeOpenCameraError();
            }
        }
    }

    public void stopCamera() {
        try {
            stopSpotAndHiddenRect();
            if (this.mCamera != null) {
                this.mPreview.stopCameraPreview();
                this.mPreview.setCamera(null);
                this.mCamera.release();
                this.mCamera = null;
            }
        } catch (Exception e) {
        }
    }

    public void startSpot() {
        startSpotDelay(1500);
    }

    public void startSpotDelay(int i) {
        this.mSpotAble = true;
        startCamera();
        this.mHandler.removeCallbacks(this.mOneShotPreviewCallbackTask);
        this.mHandler.postDelayed(this.mOneShotPreviewCallbackTask, (long) i);
    }

    public void stopSpot() {
        cancelProcessDataTask();
        this.mSpotAble = false;
        if (this.mCamera != null) {
            try {
                this.mCamera.setOneShotPreviewCallback(null);
            } catch (Exception e) {
            }
        }
        if (this.mHandler != null) {
            this.mHandler.removeCallbacks(this.mOneShotPreviewCallbackTask);
        }
    }

    public void stopSpotAndHiddenRect() {
        stopSpot();
        hiddenScanRect();
    }

    public void startSpotAndShowRect() {
        startSpot();
        showScanRect();
    }

    public void openFlashlight() {
        this.mPreview.openFlashlight();
    }

    public void closeFlashlight() {
        this.mPreview.closeFlashlight();
    }

    public void onDestroy() {
        stopCamera();
        this.mHandler = null;
        this.mDelegate = null;
        this.mOneShotPreviewCallbackTask = null;
    }

    /* access modifiers changed from: protected */
    public void cancelProcessDataTask() {
        if (this.mProcessDataTask != null) {
            this.mProcessDataTask.cancelTask();
            this.mProcessDataTask = null;
        }
    }

    public void changeToScanBarcodeStyle() {
        if (!this.mScanBoxView.getIsBarcode()) {
            this.mScanBoxView.setIsBarcode(true);
        }
    }

    public void changeToScanQRCodeStyle() {
        if (this.mScanBoxView.getIsBarcode()) {
            this.mScanBoxView.setIsBarcode(false);
        }
    }

    public boolean getIsScanBarcodeStyle() {
        return this.mScanBoxView.getIsBarcode();
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        if (this.mSpotAble) {
            cancelProcessDataTask();
            final Camera camera2 = camera;
            this.mProcessDataTask = new ProcessDataTask(camera, bArr, this, this.mOrientation) {
                /* access modifiers changed from: protected */
                public void onPostExecute(String str) {
                    if (!QRCodeView.this.mSpotAble) {
                        return;
                    }
                    if (QRCodeView.this.mDelegate == null || TextUtils.isEmpty(str)) {
                        try {
                            camera2.setOneShotPreviewCallback(QRCodeView.this);
                        } catch (Exception e) {
                        }
                    } else {
                        try {
                            QRCodeView.this.mDelegate.onScanQRCodeSuccess(str);
                        } catch (Exception e2) {
                        }
                    }
                }
            }.perform();
        }
    }
}
