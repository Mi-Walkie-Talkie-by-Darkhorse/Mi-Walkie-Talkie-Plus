package com.mi.mimsgsdk.video;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Parameters;
import android.media.CamcorderProfile;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaRecorder;
import android.media.MediaRecorder.OnInfoListener;
import android.media.ThumbnailUtils;
import android.os.AsyncTask;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.Toast;
import android.widget.VideoView;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.data.Error;
import com.mi.mimsgsdk.upload.AttachmentUtils;
import com.mi.mimsgsdk.utils.HttpDownloader;
import com.mi.mimsgsdk.utils.ImageUtils;
import com.xiaomi.channel.common.audio.CustomAudioManager.DownloadCallback;
import java.io.File;
import java.io.IOException;
import org.bouncycastle.crypto.tls.CipherSuite;

@SuppressLint({"DefaultLocale"})
public class MiVideoManager {
    public static final int ERROR_ALREADY_IN_RECORDING = 5;
    public static final int ERROR_CAMERA_NOT_PREPARE = 6;
    public static final int ERROR_CREATE_THUMBNAIL_FAILED = 2;
    public static final int ERROR_DOWNLOAD_VIDEO_FAILED = 4;
    public static final int ERROR_SURFACEVIEW_NULL = 1;
    public static final int ERROR_UNKNOWN = 0;
    public static final int ERROR_VIDEO_TOO_SHORT = 3;
    /* access modifiers changed from: private */
    public static final String LOG_TAG = MiVideoManager.class.getSimpleName();
    public static final int MIN_VIDEO_DURATION = 500;
    private static final float VIDEO_HEIGHT = 640.0f;
    public static final int VIDEO_SIZE_LARGE = 1;
    public static final int VIDEO_SIZE_SMALL = 0;
    private static final float VIDEO_WIDTH = 480.0f;
    private final int DEFAULT_VIDEO_DURATION = 60000;
    private final int IDLE = 1;
    private final int INIT_RECORD = 2;
    private final int MAX_VIDEO_DURATION = 600000;
    private final int VIDEO_RECORD = 3;
    private final int VIDEO_RECORDING = 4;
    private final int VIDEO_RECORD_CANCELED = 6;
    private final int VIDEO_RECORD_FINISHED = 5;
    private final int VIDEO_RECORD_INTERRUPT = 7;
    private Camera camera;
    private int mCameraNum = 2;
    /* access modifiers changed from: private */
    public Context mContext;
    private int mCurrentCamera = 1;
    private int mCurrentMode;
    private MediaRecorder mMediaRecorder;
    /* access modifiers changed from: private */
    public String mPlayVideoPath;
    private SurfaceView mPreviewView;
    private int mRecordDuration = 60000;
    private int mRecordVideoLen;
    private String mRecordVideoPath;
    private long mStartTime = 0;
    /* access modifiers changed from: private */
    public VideoView mVideoView;
    /* access modifiers changed from: private */
    public MiVideoCallback miVideoCallback;

    public MiVideoManager(Context context) {
        this.mContext = context;
        this.mCurrentMode = 1;
    }

    public void initVideoManager(MiVideoCallback miVideoCallback2) {
        this.miVideoCallback = miVideoCallback2;
        this.mCurrentMode = 2;
    }

    public boolean setSurfaceView(SurfaceView surfaceView) {
        if (surfaceView == null) {
            return false;
        }
        this.mPreviewView = surfaceView;
        try {
            this.mCameraNum = Camera.getNumberOfCameras();
            ClientLog.d(LOG_TAG, "camera number " + this.mCameraNum);
            if (this.mCameraNum == 0) {
                return true;
            }
            if (this.mCameraNum == 1) {
                CameraInfo cameraInfo = new CameraInfo();
                Camera.getCameraInfo(0, cameraInfo);
                ClientLog.d(LOG_TAG, "camera facing " + cameraInfo.facing + " oritentation:" + cameraInfo.orientation);
                return true;
            }
            for (int i = 0; i < this.mCameraNum; i++) {
                CameraInfo cameraInfo2 = new CameraInfo();
                Camera.getCameraInfo(i, cameraInfo2);
                ClientLog.d(LOG_TAG, "camera facing " + cameraInfo2.facing + " oritentation:" + cameraInfo2.orientation);
            }
            return true;
        } catch (Exception e) {
            ClientLog.d(LOG_TAG, "e", e);
            return true;
        }
    }

    public boolean setVideoView(VideoView videoView) {
        if (videoView == null) {
            return false;
        }
        this.mVideoView = videoView;
        this.mVideoView.setOnPreparedListener(new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                if (MiVideoManager.this.miVideoCallback != null) {
                    MiVideoManager.this.miVideoCallback.onPlayBegin(MiVideoManager.this.mPlayVideoPath);
                }
                MiVideoManager.this.mVideoView.start();
            }
        });
        this.mVideoView.setOnErrorListener(new OnErrorListener() {
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                if (MiVideoManager.this.miVideoCallback != null) {
                    MiVideoManager.this.miVideoCallback.onPlayEnd(MiVideoManager.this.mPlayVideoPath, false);
                }
                return false;
            }
        });
        this.mVideoView.setOnCompletionListener(new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                if (MiVideoManager.this.miVideoCallback != null) {
                    MiVideoManager.this.miVideoCallback.onPlayEnd(MiVideoManager.this.mPlayVideoPath, true);
                }
            }
        });
        return true;
    }

    public boolean setMaxRecordDuration(int i) {
        if (i < 500 || i > 600000) {
            return false;
        }
        this.mRecordDuration = i;
        return true;
    }

    public void openPreview() {
        if (this.mPreviewView == null) {
            ClientLog.d(LOG_TAG, "surfaceview is null when call openPreview");
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onError(1, "surfaceview is null when open preview");
                return;
            }
            return;
        }
        this.mCurrentMode = 3;
        setCamera(this.mCurrentCamera);
    }

    public void closePreview() {
        this.mCurrentMode = 2;
        releaseCamera();
    }

    public void startRecordVideo(WindowManager windowManager, int i) {
        CamcorderProfile camcorderProfile;
        int i2 = 4;
        if (this.mCurrentMode == 4) {
            ClientLog.v(LOG_TAG, "You are under video recording status, can't do startRecordVideo!");
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onError(5, "You are under video recording status, can't do startRecordVideo!");
            }
        } else if (this.mCurrentMode != 3) {
            ClientLog.v(LOG_TAG, "camera not prepare");
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onError(6, "you have not open preview or open preview failed");
            }
        } else if (this.mPreviewView == null) {
            ClientLog.v(LOG_TAG, "surface view is null");
        } else {
            this.mCurrentMode = 4;
            try {
                this.mMediaRecorder = new MediaRecorder();
                this.mMediaRecorder.reset();
                this.mMediaRecorder.setCamera(this.camera);
                this.mMediaRecorder.setAudioSource(5);
                this.mMediaRecorder.setVideoSource(1);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                if (displayMetrics.densityDpi > 320) {
                    i2 = 5;
                }
                try {
                    camcorderProfile = CamcorderProfile.get(i2);
                } catch (RuntimeException e) {
                    ClientLog.e(LOG_TAG, "e", e);
                    camcorderProfile = CamcorderProfile.get(0);
                }
                ClientLog.d(LOG_TAG, "profile video frame size width=" + camcorderProfile.videoFrameWidth + " height=" + camcorderProfile.videoFrameHeight);
                this.mMediaRecorder.setAudioChannels(1);
                this.mMediaRecorder.setAudioEncodingBitRate(12200);
                this.mMediaRecorder.setOutputFormat(1);
                this.mMediaRecorder.setAudioEncoder(3);
                this.mMediaRecorder.setVideoEncoder(camcorderProfile.videoCodec);
                this.mMediaRecorder.setAudioSamplingRate(8000);
                this.mMediaRecorder.setVideoEncodingBitRate(2000000);
                this.mMediaRecorder.setVideoFrameRate(camcorderProfile.videoFrameRate);
                this.mMediaRecorder.setMaxDuration(this.mRecordDuration);
                switch (i) {
                    case 0:
                        this.mMediaRecorder.setVideoSize(320, 240);
                        break;
                    case 1:
                        this.mMediaRecorder.setVideoSize(640, 480);
                        break;
                    default:
                        this.mMediaRecorder.setVideoSize(320, 240);
                        break;
                }
                setOrientationHint();
                this.mRecordVideoPath = AttachmentUtils.newVideoFilePath();
                ClientLog.d(LOG_TAG, "file path is " + this.mRecordVideoPath);
                this.mMediaRecorder.setOutputFile(this.mRecordVideoPath);
                this.mMediaRecorder.setPreviewDisplay(this.mPreviewView.getHolder().getSurface());
                this.mMediaRecorder.setOnErrorListener(new MediaRecorder.OnErrorListener() {
                    public void onError(MediaRecorder mediaRecorder, int i, int i2) {
                        MiVideoManager.this.interruptRecordVideo();
                    }
                });
                this.mMediaRecorder.setOnInfoListener(new OnInfoListener() {
                    public void onInfo(MediaRecorder mediaRecorder, int i, int i2) {
                        if (i == 800) {
                            MiVideoManager.this.stopRecordVideo();
                            Toast.makeText(MiVideoManager.this.mContext, "已达到最大录制时长", 0).show();
                        }
                    }
                });
                this.mMediaRecorder.prepare();
                this.mMediaRecorder.start();
                if (this.miVideoCallback != null) {
                    this.miVideoCallback.onRecordInitializationSucceed();
                    this.miVideoCallback.onRecordStart();
                }
                this.mStartTime = System.currentTimeMillis();
            } catch (Exception e2) {
                ClientLog.e(LOG_TAG, "mediaRecorder init failed error", e2);
                if (this.miVideoCallback != null) {
                    this.miVideoCallback.onRecordInitializationFailed();
                }
                interruptRecordVideo();
            }
        }
    }

    public boolean stopRecordVideo() {
        if (this.mCurrentMode != 4) {
            return false;
        }
        this.mCurrentMode = 5;
        try {
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.setOnErrorListener(null);
                this.mMediaRecorder.setPreviewDisplay(null);
                try {
                    this.mMediaRecorder.stop();
                } catch (IllegalStateException e) {
                    ClientLog.e(LOG_TAG, "e", e);
                } catch (RuntimeException e2) {
                    ClientLog.e(LOG_TAG, "e", e2);
                } catch (Exception e3) {
                    ClientLog.e(LOG_TAG, "e", e3);
                }
            }
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
            boolean doEndRecord = doEndRecord();
            releaseCamera();
            if (doEndRecord) {
                ClientLog.d(LOG_TAG, "record finish and video is effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                String saveToLocal = ImageUtils.saveToLocal(ThumbnailUtils.createVideoThumbnail(this.mRecordVideoPath, 1), AttachmentUtils.newFilePath(".jpeg", 2));
                if (saveToLocal == null || !new File(saveToLocal).exists()) {
                    if (this.miVideoCallback == null) {
                        return doEndRecord;
                    }
                    this.miVideoCallback.onError(2, "thumbnail create failed, path=" + saveToLocal);
                    return doEndRecord;
                } else if (this.miVideoCallback == null) {
                    return doEndRecord;
                } else {
                    VideoBody videoBody = new VideoBody();
                    videoBody.setUrl(this.mRecordVideoPath);
                    videoBody.setLength(this.mRecordVideoLen);
                    videoBody.setSize((int) (new File(this.mRecordVideoPath).length() / 1024));
                    videoBody.setThumbnailUrl(saveToLocal);
                    this.miVideoCallback.onRecordFinished(videoBody);
                    return doEndRecord;
                }
            } else {
                ClientLog.d(LOG_TAG, "record finish and video is not effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                if (this.miVideoCallback == null) {
                    return doEndRecord;
                }
                this.miVideoCallback.onError(3, "video duration is shorter than 500ms, can not be record");
                return doEndRecord;
            }
        } catch (IllegalStateException e4) {
            ClientLog.e(LOG_TAG, "e", e4);
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
            boolean doEndRecord2 = doEndRecord();
            releaseCamera();
            if (doEndRecord2) {
                ClientLog.d(LOG_TAG, "record finish and video is effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                String saveToLocal2 = ImageUtils.saveToLocal(ThumbnailUtils.createVideoThumbnail(this.mRecordVideoPath, 1), AttachmentUtils.newFilePath(".jpeg", 2));
                if (saveToLocal2 == null || !new File(saveToLocal2).exists()) {
                    if (this.miVideoCallback == null) {
                        return doEndRecord2;
                    }
                    this.miVideoCallback.onError(2, "thumbnail create failed, path=" + saveToLocal2);
                    return doEndRecord2;
                } else if (this.miVideoCallback == null) {
                    return doEndRecord2;
                } else {
                    VideoBody videoBody2 = new VideoBody();
                    videoBody2.setUrl(this.mRecordVideoPath);
                    videoBody2.setLength(this.mRecordVideoLen);
                    videoBody2.setSize((int) (new File(this.mRecordVideoPath).length() / 1024));
                    videoBody2.setThumbnailUrl(saveToLocal2);
                    this.miVideoCallback.onRecordFinished(videoBody2);
                    return doEndRecord2;
                }
            } else {
                ClientLog.d(LOG_TAG, "record finish and video is not effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                if (this.miVideoCallback == null) {
                    return doEndRecord2;
                }
                this.miVideoCallback.onError(3, "video duration is shorter than 500ms, can not be record");
                return doEndRecord2;
            }
        } catch (Throwable th) {
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
            boolean doEndRecord3 = doEndRecord();
            releaseCamera();
            if (doEndRecord3) {
                ClientLog.d(LOG_TAG, "record finish and video is effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                String saveToLocal3 = ImageUtils.saveToLocal(ThumbnailUtils.createVideoThumbnail(this.mRecordVideoPath, 1), AttachmentUtils.newFilePath(".jpeg", 2));
                if (saveToLocal3 == null || !new File(saveToLocal3).exists()) {
                    if (this.miVideoCallback == null) {
                        return doEndRecord3;
                    }
                    this.miVideoCallback.onError(2, "thumbnail create failed, path=" + saveToLocal3);
                    return doEndRecord3;
                } else if (this.miVideoCallback == null) {
                    return doEndRecord3;
                } else {
                    VideoBody videoBody3 = new VideoBody();
                    videoBody3.setUrl(this.mRecordVideoPath);
                    videoBody3.setLength(this.mRecordVideoLen);
                    videoBody3.setSize((int) (new File(this.mRecordVideoPath).length() / 1024));
                    videoBody3.setThumbnailUrl(saveToLocal3);
                    this.miVideoCallback.onRecordFinished(videoBody3);
                    return doEndRecord3;
                }
            } else {
                ClientLog.d(LOG_TAG, "record finish and video is not effective path=" + this.mRecordVideoPath + " len=" + this.mRecordVideoLen);
                if (this.miVideoCallback == null) {
                    return doEndRecord3;
                }
                this.miVideoCallback.onError(3, "video duration is shorter than 500ms, can not be record");
                return doEndRecord3;
            }
        }
    }

    private void stopMediaRecorder() {
        try {
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.stop();
            }
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
        } catch (Exception e) {
            ClientLog.e(LOG_TAG, "e", e);
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
        } catch (Throwable th) {
            if (this.mMediaRecorder != null) {
                this.mMediaRecorder.release();
            }
            this.mMediaRecorder = null;
            throw th;
        }
    }

    public void cancelRecordVideo() {
        if (this.mCurrentMode == 4) {
            this.mCurrentMode = 6;
            stopMediaRecorder();
            releaseCamera();
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onRecordCanceled();
            }
        }
    }

    /* access modifiers changed from: private */
    public void interruptRecordVideo() {
        if (this.mCurrentMode == 4) {
            this.mCurrentMode = 7;
            stopMediaRecorder();
            releaseCamera();
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onRecordInterrupted();
            }
        }
    }

    public void playVideoWithUrl(String str) {
        if (this.mVideoView == null || TextUtils.isEmpty(str)) {
            ClientLog.d(LOG_TAG, "videoview is " + this.mVideoView + " or videopath is " + str);
            return;
        }
        this.mPlayVideoPath = str;
        File file = new File(this.mPlayVideoPath);
        if (!file.isDirectory() && file.exists()) {
            ClientLog.d(LOG_TAG, "play voice with localpath = " + this.mPlayVideoPath);
            playVideo(this.mPlayVideoPath);
        } else if (!file.isDirectory()) {
            AnonymousClass6 r0 = new DownloadCallback() {
                public void onDownloadSuccess(String str) {
                    ClientLog.d(MiVideoManager.LOG_TAG, "download video success, result = " + str);
                    if (MiVideoManager.this.miVideoCallback != null) {
                        MiVideoManager.this.miVideoCallback.onWriteLog("download video success, path is " + str);
                    }
                    MiVideoManager.this.mPlayVideoPath = str;
                    MiVideoManager.this.playVideo(MiVideoManager.this.mPlayVideoPath);
                }

                public void onDownloadFailed(String str) {
                    ClientLog.d(MiVideoManager.LOG_TAG, "download video failed, result = " + str);
                    if (MiVideoManager.this.miVideoCallback != null) {
                        MiVideoManager.this.miVideoCallback.onError(4, "download video failed, result is " + str);
                    }
                }
            };
            String newVideoFilePath = AttachmentUtils.newVideoFilePath();
            ClientLog.d(LOG_TAG, "try to download video and temp local path = " + newVideoFilePath);
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onWriteLog("start download video");
            }
            downloadAttachment(newVideoFilePath, this.mPlayVideoPath, r0);
        }
    }

    /* access modifiers changed from: private */
    public void playVideo(String str) {
        try {
            this.mVideoView.setVideoPath(str);
            this.mVideoView.requestFocus();
        } catch (Exception e) {
            ClientLog.e(LOG_TAG, "e", e);
        }
    }

    public void pauseVideo() {
        if (this.mVideoView != null && this.mVideoView.isPlaying()) {
            this.mVideoView.pause();
        }
    }

    public void resumeVideo() {
        if (this.mVideoView != null) {
            this.mVideoView.resume();
        }
    }

    public void stopVideo() {
        if (this.mVideoView != null) {
            if (this.miVideoCallback != null) {
                this.miVideoCallback.onPlayEnd(this.mPlayVideoPath, true);
            }
            this.mVideoView.stopPlayback();
        }
    }

    public void switchCamera() {
        if (this.mPreviewView != null) {
            switch (this.mCurrentCamera) {
                case 0:
                    this.mCurrentCamera = 1;
                    break;
                case 1:
                    this.mCurrentCamera = 0;
                    break;
            }
            setCamera(this.mCurrentCamera);
        } else if (this.miVideoCallback != null) {
            this.miVideoCallback.onError(1, "surfaceview is null when switchCamera");
        }
    }

    public void destroy() {
        stopMediaRecorder();
        releaseCamera();
    }

    private boolean doEndRecord() {
        this.mRecordVideoLen = getDurationMS();
        if (this.mRecordVideoLen < 500) {
            return false;
        }
        return true;
    }

    private int getDurationMS() {
        int i = 0;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        if (TextUtils.isEmpty(this.mRecordVideoPath) || !new File(this.mRecordVideoPath).exists()) {
            return 0;
        }
        try {
            mediaMetadataRetriever.setDataSource(this.mRecordVideoPath);
            i = Integer.valueOf(mediaMetadataRetriever.extractMetadata(9)).intValue();
            ClientLog.v(LOG_TAG, "Video record file duration:" + i);
            return i;
        } catch (IllegalArgumentException e) {
            ClientLog.e(LOG_TAG, "e", e);
            return i;
        } catch (RuntimeException e2) {
            ClientLog.e(LOG_TAG, "e", e2);
            return i;
        }
    }

    @SuppressLint({"NewApi"})
    private void setOrientationHint() {
        int i = Error.E_WTSDK_A1_DECRYPT;
        int i2 = 90;
        if (isHtcDevice() && this.mCurrentCamera == 1) {
            this.mMediaRecorder.setOrientationHint(90);
        } else if (isNexusDevice()) {
            MediaRecorder mediaRecorder = this.mMediaRecorder;
            if (this.mCurrentCamera != 1) {
                i2 = 270;
            }
            mediaRecorder.setOrientationHint(i2);
        } else {
            MediaRecorder mediaRecorder2 = this.mMediaRecorder;
            if (this.mCurrentCamera != 1) {
                i = 90;
            }
            mediaRecorder2.setOrientationHint(i);
        }
    }

    private static boolean isHtcDevice() {
        boolean z;
        String lowerCase = Build.MANUFACTURER.toLowerCase();
        String lowerCase2 = Build.MODEL.toLowerCase();
        String[] strArr = {"htc 802t"};
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (strArr[i].equals(lowerCase2)) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z || !"htc".equals(lowerCase)) {
            return false;
        }
        return true;
    }

    private boolean isNexusDevice() {
        boolean z = false;
        String lowerCase = Build.MODEL.toLowerCase();
        ClientLog.d(LOG_TAG, "device model: " + lowerCase);
        for (String equals : new String[]{"nexus 6p"}) {
            if (equals.equals(lowerCase)) {
                z = true;
            }
        }
        return z;
    }

    private boolean setCamera(int i) {
        releaseCamera();
        this.camera = Camera.open(i);
        Parameters parameters = this.camera.getParameters();
        parameters.setPreviewSize(640, 480);
        try {
            this.camera.setParameters(parameters);
        } catch (Exception e) {
            ClientLog.e(LOG_TAG, "e", e);
        }
        try {
            ClientLog.v(LOG_TAG, "Anti band:" + parameters.getAntibanding());
            parameters.setFocusMode("continuous-video");
            try {
                this.camera.setParameters(parameters);
            } catch (Exception e2) {
                ClientLog.e(LOG_TAG, "e", e2);
            }
            if (isNexusDevice()) {
                this.camera.setDisplayOrientation(Error.E_WTSDK_A1_DECRYPT);
            } else {
                this.camera.setDisplayOrientation(90);
            }
            try {
                this.camera.setPreviewDisplay(this.mPreviewView.getHolder());
            } catch (IOException e3) {
                ClientLog.e(LOG_TAG, "e", e3);
            }
            this.camera.startPreview();
            this.camera.unlock();
            return true;
        } catch (Exception e4) {
            ClientLog.e(LOG_TAG, "e", e4);
            return false;
        }
    }

    private void releaseCamera() {
        if (this.camera != null) {
            this.camera.setPreviewCallback(null);
            this.camera.stopPreview();
            this.camera.lock();
            this.camera.release();
            this.camera = null;
            ClientLog.v(LOG_TAG, "releaseCamera");
        }
    }

    private void setCameraDisplayOrientation(Activity activity, int i, Camera camera2) {
        int i2;
        int i3 = 0;
        CameraInfo cameraInfo = new CameraInfo();
        Camera.getCameraInfo(i, cameraInfo);
        switch (activity.getWindowManager().getDefaultDisplay().getRotation()) {
            case 1:
                i3 = 90;
                break;
            case 2:
                i3 = CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256;
                break;
            case 3:
                i3 = Error.E_WTSDK_A1_DECRYPT;
                break;
        }
        if (cameraInfo.facing == 1) {
            i2 = (360 - ((i3 + cameraInfo.orientation) % 360)) % 360;
        } else {
            i2 = ((cameraInfo.orientation - i3) + 360) % 360;
        }
        camera2.setDisplayOrientation(i2);
    }

    private void downloadAttachment(final String str, final String str2, final DownloadCallback downloadCallback) {
        new AsyncTask<Void, Void, String>() {
            /* access modifiers changed from: protected */
            public void onPreExecute() {
                super.onPreExecute();
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(String str) {
                super.onPostExecute(str);
                if (TextUtils.isEmpty(str)) {
                    if (downloadCallback != null) {
                        downloadCallback.onDownloadFailed(str);
                    }
                    ClientLog.v(MiVideoManager.LOG_TAG, "DownLoadAudioMessageFaild :");
                } else if (downloadCallback != null) {
                    downloadCallback.onDownloadSuccess(str);
                }
            }

            /* access modifiers changed from: protected */
            public String doInBackground(Void... voidArr) {
                File file = new File(str);
                ClientLog.d(MiVideoManager.LOG_TAG, "video download start");
                HttpDownloader.downloadFile(str2, file, null, false);
                ClientLog.d(MiVideoManager.LOG_TAG, "video download end ,local path = " + file.getPath());
                String str = file.exists() ? file.getPath() : "";
                ClientLog.d(MiVideoManager.LOG_TAG, "video download end ,confirm local path = " + str);
                return str;
            }
        }.execute(new Void[0]);
    }
}
