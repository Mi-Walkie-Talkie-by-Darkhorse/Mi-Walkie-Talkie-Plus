package com.mi.mimsgsdk.voip;

import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.mimsgsdk.MsgSdkManager;
import com.mi.mimsgsdk.UserInfo;
import com.mi.mimsgsdk.stat.StatConstants.Cmd;
import com.mi.mimsgsdk.stat.StatConstants.EngineType;
import com.mi.mimsgsdk.stat.model.AgoraLog;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.LogType;
import com.mi.mimsgsdk.utils.StatUtils;
import io.agora.rtc.a.C0078a;
import io.agora.rtc.c;
import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import rx.a;
import rx.e.e;

public class MiVoipSdkManager {
    /* access modifiers changed from: private */
    public static final String TAG = MiVoipSdkManager.class.getSimpleName();
    public static final int onJoinRes = 1000;
    public static final int onOtherOffline = 1005;
    public static final int onSelfOffline = 1006;
    public static final int onSelfRejoin = 1004;
    public static final int onUserAdded = 1002;
    public static final int onUserDeleted = 1003;
    public static final int onUserMuteAudio = 2002;
    public static final int onUserSpeaker = 2001;
    public static final int onWriteLog = 1001;
    OnAudioFocusChangeListener afChangeListener;
    private HandlerThread handlerThread = new HandlerThread("voipCallbackThread");
    /* access modifiers changed from: private */
    public String key = "303edc577206440ba5e65cb197b0e74b";
    private ExecutorService mAgoraCallThread;
    /* access modifiers changed from: private */
    public volatile AudioManager mAm;
    /* access modifiers changed from: private */
    public volatile MiVoipEngineCallback mAudioEngineCallback;
    private volatile Context mContext;
    /* access modifiers changed from: private */
    public volatile Handler mHandler;
    /* access modifiers changed from: private */
    public volatile int mMediaId;
    /* access modifiers changed from: private */
    public volatile c mNative = null;
    /* access modifiers changed from: private */
    public volatile boolean mSpeakerOn;
    /* access modifiers changed from: private */
    public int userCount = 1;

    public MiVoipSdkManager() {
        this.handlerThread.start();
        this.mHandler = new Handler(this.handlerThread.getLooper()) {
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1000:
                        MiVoipSdkManager.this.mAudioEngineCallback.onJoinRes(message);
                        return;
                    case 1001:
                        MiVoipSdkManager.this.mAudioEngineCallback.onWriteLog(message);
                        return;
                    case 1002:
                        MiVoipSdkManager.this.userCount = MiVoipSdkManager.this.userCount + 1;
                        MiVoipSdkManager.this.mAudioEngineCallback.onUserJoin(message.arg1);
                        if (MiVoipSdkManager.this.mMediaId == message.arg1) {
                            MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.JOIN_VOIP_ROOM, 0);
                            return;
                        }
                        return;
                    case 1003:
                        MiVoipSdkManager.this.userCount = MiVoipSdkManager.this.userCount - 1;
                        MiVoipSdkManager.this.mAudioEngineCallback.onUserLeave(message.arg1);
                        MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.EXIT_VOIP_ROOM, 0);
                        return;
                    case 1004:
                        if (!StatUtils.isFastDoubleOccurred()) {
                            MiVoipSdkManager.this.userCount = MiVoipSdkManager.this.userCount + 1;
                            MiVoipSdkManager.this.mAudioEngineCallback.onUserJoin(message.arg1);
                            MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.REJOIN_VOIP_ROOM, 0);
                            return;
                        }
                        return;
                    case 1005:
                        MiVoipSdkManager.this.userCount = MiVoipSdkManager.this.userCount - 1;
                        MiVoipSdkManager.this.mAudioEngineCallback.onUserLeave(message.arg1);
                        return;
                    case 1006:
                        MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.OFFLINE_VOIP_ROOM, 0);
                        return;
                    case 2001:
                        MiVoipSdkManager.this.mAudioEngineCallback.onSpeakers((C0078a[]) message.obj);
                        return;
                    case 2002:
                        MiVoipSdkManager.this.mAudioEngineCallback.onUserMute(message.arg1, ((Boolean) message.obj).booleanValue());
                        return;
                    default:
                        return;
                }
            }
        };
        this.mAgoraCallThread = Executors.newSingleThreadExecutor();
        this.afChangeListener = new OnAudioFocusChangeListener() {
            public void onAudioFocusChange(int i) {
                if (i == -1) {
                    MiVoipSdkManager.this.mAm.abandonAudioFocus(this);
                } else {
                    if (i == 1) {
                    }
                }
            }
        };
    }

    /* access modifiers changed from: private */
    public void onUserAgoraActionScribe(String str, int i) {
        AgoraLog agoraLog = new AgoraLog(str, GlobalData.mAppId);
        agoraLog.setEngine(EngineType.AGORA);
        agoraLog.setSessionRoom(UserInfo.getInstance().getChannelId());
        agoraLog.setStatus(String.valueOf(i));
        agoraLog.setUid(UserInfo.getInstance().getUserId());
        MsgSdkManager instance = MsgSdkManager.getInstance();
        if (instance != null) {
            instance.sendStat(agoraLog.toJsonObject().toString());
        }
    }

    private void execAgoraTask(@Nullable final String str, @NonNull Runnable runnable) {
        a.a(runnable).a(e.a(this.mAgoraCallThread)).b((rx.e<? super T>) new rx.e<Runnable>() {
            public void onCompleted() {
                ClientLog.i(MiVoipSdkManager.TAG, "agora action:" + str + " success");
            }

            public void onError(Throwable th) {
                ClientLog.e(MiVoipSdkManager.TAG, "agora action:" + str + " fail, msg:" + th.getMessage(), th);
            }

            public void onNext(Runnable runnable) {
                runnable.run();
            }
        });
    }

    @MainThread
    public void MiVoipEngineInit(MiVoipEngineCallback miVoipEngineCallback, Context context) {
        this.mContext = context;
        this.mAudioEngineCallback = miVoipEngineCallback;
        execAgoraTask("create agora engine", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.createRtcEngineInstance(MiVoipSdkManager.this.key, new EngineCallback(MiVoipSdkManager.this.mHandler));
            }
        });
    }

    /* access modifiers changed from: private */
    @WorkerThread
    public synchronized void createRtcEngineInstance(String str, io.agora.rtc.a aVar) {
        if (this.mNative == null) {
            try {
                this.mNative = c.a(this.mContext, str, aVar);
                this.mNative.b(true);
                this.mNative.a(true);
                File file = new File(Environment.getExternalStorageDirectory().getPath() + "/Xiaomi/MiMsgSdk/agora");
                if (!file.exists() || !file.isDirectory()) {
                    file.mkdirs();
                }
                String str2 = file.getAbsolutePath() + "/agora_" + System.currentTimeMillis() + FileTracerConfig.DEF_TRACE_FILEEXT;
                ClientLog.e(TAG, "currentAgoraLogFileName:" + str2);
                this.mNative.b(str2);
            } catch (SecurityException e) {
                ClientLog.e(TAG, "init agora engine fail", e);
                StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH_FAIL, MsgSdkManager.getInstance().getInitParams().getgUid(), new long[0]);
                throw e;
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
        return;
    }

    public void joinRoom(final String str, final int i) {
        execAgoraTask("", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.a(2);
                ClientLog.d(MiVoipSdkManager.TAG, "joinRoom channel " + str + " uid " + i);
                MiVoipSdkManager.this.mMediaId = i;
                int a = MiVoipSdkManager.this.mNative.a(MiVoipSdkManager.this.key, str, "extra info you pass to SDK", i);
                MsgSdkManager.startTime = System.currentTimeMillis();
                StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_ENTER_CODE, MsgSdkManager.getInstance().getInitParams().getgUid(), (long) a);
                if (a != 0) {
                    MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.JOIN_VOIP_ROOM, a);
                    ClientLog.e(MiVoipSdkManager.TAG, "join agora room fail, code:" + a);
                }
                MiVoipSdkManager.this.mSpeakerOn = true;
            }
        });
    }

    public void leaveRoom() {
        execAgoraTask("exit conference", new Runnable() {
            public void run() {
                int b = MiVoipSdkManager.this.mNative.b();
                StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_LEAVE_CODE, MsgSdkManager.getInstance().getInitParams().getgUid(), (long) b);
                if (b != 0) {
                    MiVoipSdkManager.this.onUserAgoraActionScribe(Cmd.EXIT_VOIP_ROOM, b);
                    ClientLog.e(MiVoipSdkManager.TAG, "leave room fail, code:" + b);
                } else if (MsgSdkManager.startTime != 0) {
                    long currentTimeMillis = System.currentTimeMillis() - MsgSdkManager.startTime;
                    StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_MIXUN_VOIP_TIME, MsgSdkManager.getInstance().getInitParams().getgUid(), currentTimeMillis);
                    MsgSdkManager.startTime = 0;
                }
            }
        });
    }

    public void startListen() {
        execAgoraTask("start audio", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.e(false);
            }
        });
    }

    public void stopListen() {
        execAgoraTask("stop audio", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.e(true);
            }
        });
    }

    public void startSpeaker() {
        execAgoraTask("open mic", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.d(false);
            }
        });
    }

    public void stopSpeaker() {
        execAgoraTask("close mic", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.d(true);
            }
        });
    }

    public void muteUser(final int i, final boolean z) {
        execAgoraTask("mute user", new Runnable() {
            public void run() {
                if (MiVoipSdkManager.this.mNative.a(i, z) == 0) {
                    ClientLog.d(MiVoipSdkManager.TAG, "muteUser uid " + i + " state " + z + " success");
                }
            }
        });
    }

    public void enableAudioVolumeIndication(final int i, final int i2) {
        execAgoraTask("enable aduio volume indication", new Runnable() {
            public void run() {
                if (MiVoipSdkManager.this.mNative.a(i, i2) == 0) {
                    ClientLog.d(MiVoipSdkManager.TAG, "enableAudioVolumeIndication called success");
                }
            }
        });
    }

    private void setAudioOutput() {
        if (this.mNative.c(this.mSpeakerOn) != 0) {
            ClientLog.w(TAG, "native set speaker fail");
        }
        if (this.mAm != null) {
            this.mAm.setSpeakerphoneOn(this.mSpeakerOn);
        }
    }

    private boolean requestAudioFocus() {
        this.mAm = (AudioManager) this.mContext.getSystemService("audio");
        int requestAudioFocus = this.mAm.requestAudioFocus(this.afChangeListener, 0, 1);
        if (requestAudioFocus == 0) {
            return false;
        }
        if (requestAudioFocus == 1) {
            return true;
        }
        throw new IllegalAccessError("Trespass");
    }

    private void abandonAudioFocus() {
        this.mAm = (AudioManager) this.mContext.getSystemService("audio");
        this.mAm.abandonAudioFocus(this.afChangeListener);
    }

    public void destroy() {
        try {
            if (this.mNative != null) {
                execAgoraTask("destroy agora engine", new Runnable() {
                    public void run() {
                        MiVoipSdkManager.this.mNative;
                        c.a();
                        MiVoipSdkManager.this.mNative = null;
                    }
                });
            }
        } catch (Exception e) {
            ClientLog.e(TAG, e.toString());
            ThrowableExtension.printStackTrace(e);
        }
    }

    public boolean requireGameSoundCancellation() {
        return "true".equals(this.mNative.a("che.audio.game.sound.cancellation", "dummy"));
    }

    public void enableLowBitrateMode(final boolean z) {
        execAgoraTask("enable low bit rate mode", new Runnable() {
            public void run() {
                MiVoipSdkManager.this.mNative.a("{\"che.audio.alternative.mode\":" + z + "}");
            }
        });
    }

    public void adjustPlaybackSignalVolume(final int i) {
        execAgoraTask("", new Runnable() {
            public void run() {
                int b = MiVoipSdkManager.this.mNative.b(i);
                if (b < 0) {
                    ClientLog.e(MiVoipSdkManager.TAG, "adjustPlaybackSignalVolume fail, code:" + b);
                }
            }
        });
    }
}
