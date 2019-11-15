package cn.bingoogolapple.qrcode.core;

import android.hardware.Camera;
import android.hardware.Camera.Size;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.os.Build.VERSION;

public class ProcessDataTask extends AsyncTask<Void, Void, String> {
    private Camera mCamera;
    private byte[] mData;
    private Delegate mDelegate;
    private int orientation;

    public interface Delegate {
        String processData(byte[] bArr, int i, int i2, boolean z);
    }

    public ProcessDataTask(Camera camera, byte[] bArr, Delegate delegate, int i) {
        this.mCamera = camera;
        this.mData = bArr;
        this.mDelegate = delegate;
        this.orientation = i;
    }

    public ProcessDataTask perform() {
        if (VERSION.SDK_INT >= 11) {
            executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            execute(new Void[0]);
        }
        return this;
    }

    public void cancelTask() {
        if (getStatus() != Status.FINISHED) {
            cancel(true);
        }
    }

    /* access modifiers changed from: protected */
    public void onCancelled() {
        super.onCancelled();
        this.mDelegate = null;
    }

    /* access modifiers changed from: protected */
    public String doInBackground(Void... voidArr) {
        String str = null;
        Size previewSize = this.mCamera.getParameters().getPreviewSize();
        int i = previewSize.width;
        int i2 = previewSize.height;
        byte[] bArr = this.mData;
        if (this.orientation == 0) {
            bArr = new byte[this.mData.length];
            for (int i3 = 0; i3 < i2; i3++) {
                for (int i4 = 0; i4 < i; i4++) {
                    bArr[(((i4 * i2) + i2) - i3) - 1] = this.mData[(i3 * i) + i4];
                }
            }
        } else {
            int i5 = i2;
            i2 = i;
            i = i5;
        }
        try {
            if (this.mDelegate == null) {
                return str;
            }
            return this.mDelegate.processData(bArr, i2, i, false);
        } catch (Exception e) {
            try {
                return this.mDelegate.processData(bArr, i2, i, true);
            } catch (Exception e2) {
                return str;
            }
        }
    }
}
