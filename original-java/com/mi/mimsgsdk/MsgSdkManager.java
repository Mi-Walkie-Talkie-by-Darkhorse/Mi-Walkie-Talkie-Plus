package com.mi.mimsgsdk;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.debug.MiLinkMonitor;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.mimsgsdk.callback.UploadImageCallback;
import com.mi.mimsgsdk.message.AudioBody;
import com.mi.mimsgsdk.service.MiMsgServiceClient;
import com.mi.mimsgsdk.service.SendListener;
import com.mi.mimsgsdk.service.aidl.ConferenceMember;
import com.mi.mimsgsdk.service.aidl.ICustomCallback;
import com.mi.mimsgsdk.service.aidl.IMessageListener.Stub;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.MsgPacketData;
import com.mi.mimsgsdk.service.aidl.RetValue;
import com.mi.mimsgsdk.utils.GlobalData;
import com.mi.mimsgsdk.utils.LogType;
import com.mi.mimsgsdk.utils.StatUtils;
import com.mi.mimsgsdk.utils.VersionUtils;
import com.mi.mimsgsdk.video.VideoBody;
import com.mi.mimsgsdk.voip.MiEngineCallback;
import com.mi.mimsgsdk.voip.MiVoipEngineCallback;
import com.mi.mimsgsdk.voip.MiVoipSdkManager;
import com.mi.mimsgsdk.voip.Speaker;
import com.tencent.bugly.mimsg.crashreport.CrashReport;
import com.tencent.bugly.mimsg.crashreport.CrashReport.UserStrategy;
import com.xiaomi.channel.common.audio.CustomAudioManager;
import com.xiaomi.channel.common.audio.CustomAudioManager.DownloadCallback;
import io.agora.rtc.a.C0078a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import rx.a;
import rx.a.C0098a;
import rx.e;

public class MsgSdkManager implements AudioMsgSdkInterface, MsgApiInterface {
    private static final String BUGLYAPPID = "cb0e2bcdda";
    public static final int CHANNEL_GROUP = 3;
    public static final int CHANNEL_ROOM = 2;
    public static final int CHANNEL_USER = 1;
    public static final int SIGNAL_CONFERENCE_MEMBERS = 101;
    public static final int SIGNAL_LOGIN_CHECK = 100;
    public static final int SIGNAL_USERNAME_TRANS = 102;
    /* access modifiers changed from: private */
    public static final String TAG = MsgSdkManager.class.getSimpleName();
    public static final String appid = "10001";
    /* access modifiers changed from: private */
    public static volatile ConcurrentHashMap<String, ConferenceMember> gUid2SMidMap = new ConcurrentHashMap<>();
    private static volatile MsgSdkManager sInstance;
    /* access modifiers changed from: private */
    public static volatile ConcurrentHashMap<Integer, ConferenceMember> sMid2GuidMap = new ConcurrentHashMap<>();
    public static volatile long startTime = 0;
    private int DEFAULT_TIMEOUT = 3000;
    /* access modifiers changed from: private */
    public volatile InitParams initParams = new InitParams();
    private boolean isDebug = false;
    private CustomAudioManager mAudioManager;
    /* access modifiers changed from: private */
    public volatile long mConferenceId = 0;
    /* access modifiers changed from: private */
    public volatile MiEngineCallback mEngineCallback;
    /* access modifiers changed from: private */
    public volatile MiMsgServiceClient mServiceClient;
    private volatile MiVoipSdkManager mVoipManager;

    @Nullable
    public static MsgSdkManager getInstance() {
        return sInstance;
    }

    public InitParams getInitParams() {
        return this.initParams;
    }

    public static long getMuid(int i) {
        ConferenceMember conferenceMember = (ConferenceMember) sMid2GuidMap.get(Integer.valueOf(i));
        if (conferenceMember != null) {
            return conferenceMember.mUid;
        }
        return 0;
    }

    @MainThread
    public MsgSdkManager(Context context) {
        int appId = GlobalData.getAppId();
        initCrash(context);
        this.mServiceClient = new MiMsgServiceClient(context.getApplicationContext(), appId);
        ClientLog.d(TAG, "MsgSdkManager constructor, version=" + getVersion(context));
        if (sInstance != null) {
            ClientLog.e(TAG, "maybe forget call destroy() before recreate");
        }
        sInstance = this;
    }

    public void init(InitParams initParams2) {
        if (initParams2 == null) {
            ClientLog.w(TAG, "InitParams = null...Please call init!!!");
            return;
        }
        init(initParams2.getgUid(), initParams2.getpSkey(), initParams2.getAppId(), initParams2.getB2Token(), initParams2.getpId(), initParams2.getListener());
    }

    @WorkerThread
    public boolean init(String str, String str2, String str3, String str4, String str5, final IMXMsgCallback iMXMsgCallback) {
        int length;
        int i = -1;
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("init must call in worker thread");
        }
        StringBuilder append = new StringBuilder().append("manager init start, gUid.len=").append(str == null ? -1 : str.length()).append(" pSkey.len=");
        if (str2 == null) {
            length = -1;
        } else {
            length = str2.length();
        }
        StringBuilder append2 = append.append(length).append(" b2Token.len=");
        if (str4 != null) {
            i = str4.length();
        }
        String sb = append2.append(i).append(" appID=").append(str3).append(" pId=").append(str5).toString();
        ClientLog.i(TAG, sb);
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            ClientLog.e(TAG, "init failed because some args is empty!");
            if (iMXMsgCallback != null) {
                RetValue retValue = new RetValue();
                retValue.retCode = -2;
                retValue.retMsg = sb;
                iMXMsgCallback.onInitResult(retValue);
            }
            return false;
        }
        this.initParams = new InitParams();
        this.initParams.setgUid(str).setAppId(str3).setpSkey(str2).setB2Token(str4).setpId(str5).setListener(iMXMsgCallback);
        StatUtils.addToMiLinkMonitor(LogType.init, StatUtils.KEY_MIXUN_MSG_INIT, str, new long[0]);
        try {
            return this.mServiceClient.getRemoteServiceInit().init(str, str2, str3, str4, str5, new Stub() {
                public void onInitResult(RetValue retValue) throws RemoteException {
                    if (retValue == null) {
                        ClientLog.d(MsgSdkManager.TAG, "onInitResult retValue is null");
                        return;
                    }
                    ClientLog.d(MsgSdkManager.TAG, "onInitResult code: " + retValue.retCode + " msg: " + retValue.retMsg);
                    if (retValue.retCode == 0) {
                        UserInfo.getInstance().setUserId(Long.parseLong(retValue.retMsg));
                    }
                    if (iMXMsgCallback != null) {
                        iMXMsgCallback.onInitResult(retValue);
                        StatUtils.addToMiLinkMonitor(LogType.init, StatUtils.KEY_MIXUN_MSG_INIT_CODE, MsgSdkManager.this.initParams.gUid, (long) retValue.retCode);
                    }
                }

                public boolean onReceiveMessage(int i, MiMessage miMessage) throws RemoteException {
                    if (iMXMsgCallback == null) {
                        return false;
                    }
                    return iMXMsgCallback.onReceiveMessage(i, miMessage);
                }

                public void onConnectionStateChanged(int i) throws RemoteException {
                    if (iMXMsgCallback != null) {
                        iMXMsgCallback.onConnectionStateChanged(i);
                    }
                }

                public boolean onReceiveOldUserMessage(List<MiMessage> list) throws RemoteException {
                    if (iMXMsgCallback == null) {
                        return false;
                    }
                    return iMXMsgCallback.onReceiveOldUserMessage(list);
                }

                public boolean onReceiveOldGroupMessage(String str, List<MiMessage> list) throws RemoteException {
                    if (iMXMsgCallback == null) {
                        return false;
                    }
                    return iMXMsgCallback.onReceiveOldGroupMessage(str, list);
                }

                public void onDataSendResponse(int i, RetValue retValue, MiMessage miMessage) throws RemoteException {
                    if (iMXMsgCallback != null) {
                        StatUtils.addStatisticsItem(i, miMessage.bodyType, retValue.retCode, miMessage.from);
                        iMXMsgCallback.onDataSendResponse(i, retValue, miMessage);
                    }
                }

                public void onReceiveSignalMessage(int i, RetValue retValue, long j, long j2, int i2) {
                    ClientLog.d(MsgSdkManager.TAG, "onReceiveSignalMessage mediaId " + j + ", mUid " + j2 + ", mediaMuid " + i2);
                    if (i != 100) {
                        ClientLog.d(MsgSdkManager.TAG, "tuning test SIGNAL_DISPACHTER ERROR");
                    } else if (retValue.retCode == 0) {
                        ClientLog.d(MsgSdkManager.TAG, "tuning test SIGNAL_LOGIN_CHECK checkout success. next, join room");
                        UserInfo.getInstance().setChannelId(String.valueOf(j));
                        MsgSdkManager.this.joinAgoraChannel(UserInfo.getInstance().getChannelId(), i2);
                    } else {
                        if (MsgSdkManager.this.mEngineCallback != null) {
                            MsgSdkManager.this.mEngineCallback.onJoinConferenceFailed(retValue);
                        }
                        ClientLog.d(MsgSdkManager.TAG, "tuning test SIGNAL_LOGIN_CHECK checkout error,retcode = " + retValue.retCode);
                    }
                }

                public void onReceiveConferenceMembers(int i, int i2, RetValue retValue, List<ConferenceMember> list) throws RemoteException {
                    int i3 = 0;
                    switch (i) {
                        case 101:
                            ClientLog.d(MsgSdkManager.TAG, "onReceiveConferenceMembers SIGNAL_CONFERENCE_MEMBERS ");
                            while (true) {
                                int i4 = i3;
                                if (i4 < list.size()) {
                                    ClientLog.d(MsgSdkManager.TAG, "onReceiveConferenceMembers  SIGNAL_CONFERENCE_MEMBERS gUid " + ((ConferenceMember) list.get(i4)).gUid + " mediaMuid " + ((ConferenceMember) list.get(i4)).mediaMuid);
                                    ConferenceMember conferenceMember = (ConferenceMember) list.get(i4);
                                    MsgSdkManager.sMid2GuidMap.put(Integer.valueOf(conferenceMember.mediaMuid), conferenceMember);
                                    MsgSdkManager.gUid2SMidMap.put(conferenceMember.gUid, conferenceMember);
                                    i3 = i4 + 1;
                                } else {
                                    return;
                                }
                            }
                        case 102:
                            ClientLog.d(MsgSdkManager.TAG, "onReceiveConferenceMembers SIGNAL_USERNAME_TRANS ");
                            while (true) {
                                int i5 = i3;
                                if (i5 < list.size()) {
                                    ClientLog.d(MsgSdkManager.TAG, "onReceiveConferenceMembers SIGNAL_USERNAME_TRANS gUid " + ((ConferenceMember) list.get(i5)).gUid + " mediaMuid " + ((ConferenceMember) list.get(i5)).mediaMuid);
                                    ConferenceMember conferenceMember2 = (ConferenceMember) list.get(i5);
                                    MsgSdkManager.sMid2GuidMap.put(Integer.valueOf(conferenceMember2.mediaMuid), conferenceMember2);
                                    MsgSdkManager.gUid2SMidMap.put(conferenceMember2.gUid, conferenceMember2);
                                    switch (i2) {
                                        case 1002:
                                            if (MsgSdkManager.this.mEngineCallback == null) {
                                                break;
                                            } else {
                                                MsgSdkManager.this.mEngineCallback.onUserJoin(conferenceMember2.gUid);
                                                break;
                                            }
                                        case 1003:
                                            if (MsgSdkManager.this.mEngineCallback == null) {
                                                break;
                                            } else {
                                                MsgSdkManager.this.mEngineCallback.onUserLeave(conferenceMember2.gUid);
                                                break;
                                            }
                                    }
                                    i3 = i5 + 1;
                                } else {
                                    return;
                                }
                            }
                            break;
                        default:
                            return;
                    }
                }

                public void onUploadVideoResponse(RetValue retValue, MiMessage miMessage) throws RemoteException {
                    if (iMXMsgCallback == null || !(miMessage.body instanceof VideoBody)) {
                        ClientLog.d(MsgSdkManager.TAG, " onUploadVideoResponce listener is null or message.body is not instance of VideoBody");
                        return;
                    }
                    iMXMsgCallback.onUploadVideoResponse(retValue, (VideoBody) miMessage.body);
                    StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_UPLOAD_CODE, MsgSdkManager.this.initParams.gUid, (long) retValue.retCode, 4);
                }

                public void onDownloadMediaFileResponse(int i, RetValue retValue) throws RemoteException {
                    if (iMXMsgCallback == null) {
                        ClientLog.d(MsgSdkManager.TAG, "in onDownloadVideoResponse listener is null");
                        return;
                    }
                    iMXMsgCallback.onDownloadMediaFileResponse(i, retValue);
                    StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_DOWN_CODE, MsgSdkManager.this.initParams.gUid, (long) retValue.retCode, 4);
                }

                public void onUploadLogsResponse(RetValue retValue) throws RemoteException {
                    if (iMXMsgCallback == null) {
                        ClientLog.d(MsgSdkManager.TAG, "in onUploadLogsResponse listener is null");
                    } else {
                        iMXMsgCallback.onUploadLogsResponse(retValue);
                    }
                }
            });
        } catch (Exception e) {
            ClientLog.e(TAG, "init Exception", e);
            return false;
        }
    }

    private void initCrash(Context context) {
        UserStrategy userStrategy = new UserStrategy(context);
        userStrategy.setAppVersion(VersionUtils.getMiSDKVersionCode());
        userStrategy.setAppChannel(VersionUtils.getMiSDKChannel());
        CrashReport.setUserId(String.valueOf(UserInfo.getInstance().getUserId()));
        CrashReport.initCrashReport(context, BUGLYAPPID, this.isDebug, userStrategy);
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0044 A[SYNTHETIC, Splitter:B:17:0x0044] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0051 A[SYNTHETIC, Splitter:B:24:0x0051] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String getProcessName(int r5) {
        /*
            r1 = 0
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.io.FileReader r0 = new java.io.FileReader     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            r3.<init>()     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.String r4 = "/proc/"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.String r4 = "/cmdline"
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            r0.<init>(r3)     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            r2.<init>(r0)     // Catch:{ Throwable -> 0x003d, all -> 0x004e }
            java.lang.String r0 = r2.readLine()     // Catch:{ Throwable -> 0x005d }
            boolean r3 = android.text.TextUtils.isEmpty(r0)     // Catch:{ Throwable -> 0x005d }
            if (r3 != 0) goto L_0x0032
            java.lang.String r0 = r0.trim()     // Catch:{ Throwable -> 0x005d }
        L_0x0032:
            if (r2 == 0) goto L_0x0037
            r2.close()     // Catch:{ IOException -> 0x0038 }
        L_0x0037:
            return r0
        L_0x0038:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0037
        L_0x003d:
            r0 = move-exception
            r2 = r1
        L_0x003f:
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ all -> 0x005a }
            if (r2 == 0) goto L_0x0047
            r2.close()     // Catch:{ IOException -> 0x0049 }
        L_0x0047:
            r0 = r1
            goto L_0x0037
        L_0x0049:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)
            goto L_0x0047
        L_0x004e:
            r0 = move-exception
        L_0x004f:
            if (r1 == 0) goto L_0x0054
            r1.close()     // Catch:{ IOException -> 0x0055 }
        L_0x0054:
            throw r0
        L_0x0055:
            r1 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r1)
            goto L_0x0054
        L_0x005a:
            r0 = move-exception
            r1 = r2
            goto L_0x004f
        L_0x005d:
            r0 = move-exception
            goto L_0x003f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.MsgSdkManager.getProcessName(int):java.lang.String");
    }

    public void sendMessage(final int i, final MiMessage miMessage, final int i2) {
        StatUtils.addStatisticsItem(i, miMessage.bodyType, miMessage.from);
        a.a((C0098a<T>) new C0098a<Object>() {
            public void call(e<? super Object> eVar) {
                if (miMessage.bodyType == 2) {
                    MsgSdkManager.this.sendAudioMessage(i, miMessage, i2);
                } else if (miMessage.bodyType == 3) {
                    ClientLog.d(MsgSdkManager.TAG, "message.body is instance of VideoBody " + (miMessage.body instanceof VideoBody));
                    MsgSdkManager.this.sendVideoMessage(i, miMessage, i2);
                } else {
                    switch (i) {
                        case 1:
                            MsgSdkManager.this.sendUserMessage(miMessage, i2);
                            return;
                        case 2:
                            MsgSdkManager.this.sendRoomMessage(miMessage, i2);
                            return;
                        case 3:
                            MsgSdkManager.this.sendGroupMessage(miMessage, i2);
                            return;
                        default:
                            MsgSdkManager.this.sendUserMessage(miMessage, i2);
                            return;
                    }
                }
            }
        }).b(rx.e.e.b()).b();
    }

    public void sendAudioMessage(String str, long j, int i, String str2, long j2) {
        AudioBody audioBody = new AudioBody();
        audioBody.setLength(j);
        audioBody.setUrl(str);
        audioBody.setContent("version_need_update".getBytes());
        MiMessage miMessage = new MiMessage();
        miMessage.bodyType = 2;
        miMessage.from = this.initParams.gUid;
        miMessage.to = str2;
        miMessage.msgId = j2;
        miMessage.body = audioBody;
        sendAudioMessage(i, miMessage, this.DEFAULT_TIMEOUT);
    }

    public boolean sendUserMessage(MiMessage miMessage, int i) {
        try {
            if (miMessage.body != null) {
                return this.mServiceClient.getRemoteService().sendUserMessage(miMessage, i);
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "sendUserMessage failed : e", e);
        }
        return false;
    }

    public boolean sendGroupMessage(MiMessage miMessage, int i) {
        try {
            if (miMessage.body != null) {
                return this.mServiceClient.getRemoteService().sendGroupMessage(miMessage, i);
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "sendGroupMessage failed : e", e);
        }
        return false;
    }

    public boolean sendRoomMessage(MiMessage miMessage, int i) {
        try {
            if (miMessage.body != null) {
                return this.mServiceClient.getRemoteService().sendRoomMessage(miMessage, i);
            }
        } catch (Exception e) {
            ClientLog.e(TAG, "sendRoomMessage failed: e", e);
        }
        return false;
    }

    @WorkerThread
    public boolean sendAudioMessage(int i, MiMessage miMessage, int i2) {
        try {
            return this.mServiceClient.getRemoteService().sendAudioMessage(i, miMessage, i2);
        } catch (Exception e) {
            ClientLog.e(TAG, "sendAudioMessage failed: e", e);
            return false;
        }
    }

    /* access modifiers changed from: private */
    @WorkerThread
    public boolean sendVideoMessage(int i, MiMessage miMessage, int i2) {
        try {
            return this.mServiceClient.getRemoteService().sendVideoMessage(i, miMessage, i2);
        } catch (Exception e) {
            ClientLog.e(TAG, "sendVideoMessage failed: e", e);
            return false;
        }
    }

    @WorkerThread
    public void uploadVideo(VideoBody videoBody) {
        ClientLog.d(TAG, "uploadVideo");
        MiMessage miMessage = new MiMessage();
        miMessage.bodyType = 3;
        miMessage.body = videoBody;
        try {
            this.mServiceClient.getRemoteService().uploadVideo(miMessage);
            StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_UPLOAD, this.initParams.gUid, 4);
        } catch (Exception e) {
            ClientLog.e(TAG, "uploadVideo failed: e", e);
        }
    }

    @WorkerThread
    @SuppressLint({"DefaultLocale"})
    public boolean uploadImage(String str, final UploadImageCallback uploadImageCallback) {
        ClientLog.d(TAG, "uploadImage");
        if (TextUtils.isEmpty(str) || uploadImageCallback == null) {
            return false;
        }
        boolean z = false;
        for (String endsWith : new String[]{"jpg", "jpeg", "png", "ico", "bmp", "gif", "tif"}) {
            if (str.toLowerCase().endsWith(endsWith)) {
                z = true;
            }
        }
        if (!z) {
            return false;
        }
        StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_UPLOAD, this.initParams.gUid, 2);
        try {
            this.mServiceClient.getRemoteService().uploadImage(str, new ICustomCallback.Stub() {
                public void onResponse(RetValue retValue) throws RemoteException {
                    uploadImageCallback.onResponse(retValue);
                    StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_UPLOAD_CODE, MsgSdkManager.this.initParams.gUid, (long) retValue.retCode, 2);
                }
            });
            return true;
        } catch (Exception e) {
            ClientLog.e(TAG, "uploadImage Exception", e);
            return false;
        }
    }

    @WorkerThread
    public void downloadMediaFile(int i, String str) {
        ClientLog.d(TAG, "downloadMediaFile");
        try {
            StatUtils.addToMiLinkMonitor(LogType.upload, StatUtils.KEY_MIXUN_SDK_DOWN, this.initParams.gUid, (long) i);
            this.mServiceClient.getRemoteService().downloadMediaFile(i, str);
        } catch (Exception e) {
            ClientLog.e(TAG, "downloadMediaFile failed e", e);
        }
    }

    @WorkerThread
    public void uploadLogs(String str, int i, long j, boolean z, String str2) {
        try {
            this.mServiceClient.getRemoteService().uploadLogs(str, i, j, z, str2);
        } catch (Exception e) {
            ClientLog.e(TAG, "e", e);
        }
    }

    public boolean sendProtoMessage(PacketData packetData, int i, ResponseListener responseListener) {
        return false;
    }

    @WorkerThread
    public boolean syncGroupMessage(String str) {
        ClientLog.d(TAG, "syncGroupMsg groupId=" + str);
        try {
            return this.mServiceClient.getRemoteService().syncGroupMessage(str);
        } catch (Exception e) {
            ClientLog.e(TAG, "syncGroupMsg failed  e", e);
            return false;
        }
    }

    @WorkerThread
    public boolean pullOldUserMessage(long j, int i) {
        try {
            ClientLog.d(TAG, "pullOldUserMsg msgSeq=" + j + " limit=" + i);
            return this.mServiceClient.getRemoteService().pullOldUserMessage(j, i);
        } catch (Exception e) {
            ClientLog.e(TAG, "pullOldUserMsg failed  e", e);
            return false;
        }
    }

    @WorkerThread
    public boolean pullOldGroupMessage(String str, long j, int i) {
        try {
            ClientLog.d(TAG, "pullOldUserMsg msgSeq=" + j + " limit=" + i);
            return this.mServiceClient.getRemoteService().pullOldGroupMessage(str, j, i);
        } catch (Exception e) {
            ClientLog.e(TAG, "pullOldGroupMsg failed e", e);
            return false;
        }
    }

    @WorkerThread
    public boolean setSyncLimit(int i) {
        try {
            return this.mServiceClient.getRemoteService().setSyncLimit(i);
        } catch (Exception e) {
            ClientLog.e(TAG, "setSyncLimit failed e", e);
            return false;
        }
    }

    public boolean destroy() {
        sInstance = null;
        try {
            if (this.mServiceClient.getRemoteService() != null) {
                this.mServiceClient.getRemoteService().destroy();
            }
            if (this.mVoipManager != null) {
                this.mVoipManager.destroy();
                this.mVoipManager = null;
            }
            MiLinkMonitor.getInstance().destroy();
        } catch (Exception e) {
            ClientLog.e(TAG, "e", e);
        }
        if (sMid2GuidMap != null) {
            sMid2GuidMap.clear();
        }
        if (gUid2SMidMap != null) {
            gUid2SMidMap.clear();
        }
        this.mEngineCallback = null;
        return true;
    }

    public String getVersion(Context context) {
        return VersionUtils.getMiSDKVersion();
    }

    public void audioMsgSdkInit(Context context, AudioRecordListener audioRecordListener) {
        this.mAudioManager = new CustomAudioManager(context, audioRecordListener);
    }

    public void startRecord() {
        if (this.mAudioManager != null) {
            this.mAudioManager.startRecord();
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    public void stopRecord() {
        if (this.mAudioManager != null) {
            this.mAudioManager.stopRecord();
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init, mAudioManager = null");
        }
    }

    public void setSpeakerphoneOn(boolean z) {
        if (this.mAudioManager != null) {
            this.mAudioManager.setSpeakerphoneOn(z);
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init, mAudioManager = null");
        }
    }

    public void convertWavWithUrl(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ClientLog.d(TAG, "playVoiceWithUrl but url is blank!, url:" + str);
        } else if (this.mAudioManager != null) {
            this.mAudioManager.playVoiceWithUrl(str, false, str2);
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    public void convertWavWithUrl(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ClientLog.d(TAG, "playVoiceWithUrl but url is blank!, url:" + str);
        } else if (this.mAudioManager != null) {
            this.mAudioManager.playVoiceWithUrl(str);
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    public void playVoiceWithUrl(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ClientLog.d(TAG, "playVoiceWithUrl but url is blank!, url:" + str);
        } else if (this.mAudioManager != null) {
            this.mAudioManager.playVoiceWithUrl(str);
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    public void playVoiceWithUrl(String str, @NonNull DownloadCallback downloadCallback) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str.trim())) {
            ClientLog.d(TAG, "playVoiceWithUrl but url is blank!, url:" + str);
        } else if (this.mAudioManager != null) {
            this.mAudioManager.playVoiceWithUrl(str, downloadCallback);
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    public void stopPlayVoice() {
        if (this.mAudioManager != null) {
            this.mAudioManager.stopPlay();
        } else {
            ClientLog.d(TAG, "audioMsgSdk has not yet init,mAudioManager = null");
        }
    }

    @MainThread
    public void voipMsgSdkInit(final MiEngineCallback miEngineCallback, Context context) {
        if (miEngineCallback != null) {
            this.mEngineCallback = miEngineCallback;
            this.mVoipManager = new MiVoipSdkManager();
            this.mVoipManager.MiVoipEngineInit(new MiVoipEngineCallback() {
                public void onWriteLog(Message message) {
                    if (miEngineCallback != null) {
                        miEngineCallback.onWriteLog(message);
                    }
                }

                public void onUserLeave(int i) {
                    if (miEngineCallback != null) {
                        ConferenceMember conferenceMember = (ConferenceMember) MsgSdkManager.sMid2GuidMap.get(Integer.valueOf(i));
                        if (conferenceMember != null) {
                            miEngineCallback.onUserLeave(conferenceMember.gUid);
                            return;
                        }
                        try {
                            MsgSdkManager.this.mServiceClient.getRemoteService().getGuidfromMediaId(1003, i);
                        } catch (Exception e) {
                            ClientLog.e(MsgSdkManager.TAG, "RemoteException", e);
                            throw new RuntimeException(e);
                        } catch (Throwable th) {
                            ClientLog.e(MsgSdkManager.TAG, "e", th);
                            throw new RuntimeException(th);
                        }
                    }
                }

                public void onUserJoin(int i) {
                    ClientLog.d(MsgSdkManager.TAG, "onUserJoin, uid=" + i);
                    if (miEngineCallback != null) {
                        ConferenceMember conferenceMember = (ConferenceMember) MsgSdkManager.sMid2GuidMap.get(Integer.valueOf(i));
                        if (conferenceMember != null) {
                            miEngineCallback.onUserJoin(conferenceMember.gUid);
                            return;
                        }
                        try {
                            MsgSdkManager.this.mServiceClient.getRemoteService().getGuidfromMediaId(1002, i);
                        } catch (Exception e) {
                            ClientLog.e(MsgSdkManager.TAG, "getGuidfromMediaId error", e);
                        }
                    }
                }

                public void onJoinRes(Message message) {
                    if (miEngineCallback != null) {
                        miEngineCallback.onJoinRes(message);
                    }
                }

                public void onSpeakers(C0078a[] aVarArr) {
                    if (miEngineCallback != null) {
                        ArrayList arrayList = new ArrayList();
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 < aVarArr.length) {
                                Speaker speaker = new Speaker();
                                ClientLog.d(MsgSdkManager.TAG, "onSpeakers speakers.uid " + aVarArr[i2].a);
                                if (aVarArr[i2].a == 0) {
                                    speaker.setSpeakerUid("0");
                                    speaker.setVolume((long) aVarArr[i2].b);
                                } else {
                                    ConferenceMember conferenceMember = (ConferenceMember) MsgSdkManager.sMid2GuidMap.get(Integer.valueOf(aVarArr[i2].a));
                                    if (conferenceMember == null) {
                                        ClientLog.w(MsgSdkManager.TAG, "onSpeakers, missing uid:" + aVarArr[i2].a);
                                        MsgSdkManager.this.getConferenceMemberAsync(MsgSdkManager.this.mConferenceId);
                                        i = i2 + 1;
                                    } else {
                                        speaker.setSpeakerUid(conferenceMember.gUid);
                                        speaker.setVolume((long) aVarArr[i2].b);
                                    }
                                }
                                arrayList.add(speaker);
                                i = i2 + 1;
                            } else {
                                miEngineCallback.onSpeakers(arrayList);
                                return;
                            }
                        }
                    }
                }

                public void onUserMute(int i, boolean z) {
                    if (miEngineCallback == null) {
                        return;
                    }
                    if (MsgSdkManager.sMid2GuidMap.get(Integer.valueOf(i)) != null) {
                        miEngineCallback.onUserMute(((ConferenceMember) MsgSdkManager.sMid2GuidMap.get(Integer.valueOf(i))).gUid, z);
                        return;
                    }
                    MsgSdkManager.this.getConferenceMemberAsync(MsgSdkManager.this.mConferenceId);
                    ClientLog.d(MsgSdkManager.TAG, "get null for mid2guid map, mid=" + i);
                }

                public void onJoinConferenceFailed(RetValue retValue) {
                    if (miEngineCallback != null) {
                        miEngineCallback.onJoinConferenceFailed(retValue);
                    }
                }
            }, context);
            StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH, this.initParams.gUid, new long[0]);
        }
    }

    public void enterConference(long j) {
        this.mConferenceId = j;
        ClientLog.d(TAG, "enterConference " + j);
        StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_ENTER, this.initParams.gUid, new long[0]);
        try {
            this.mServiceClient.getRemoteService().sendChannelCheckMessage(this.mConferenceId, 3000, this.initParams.gUid);
            this.mServiceClient.getRemoteService().getConferenceMember(j);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.NEW_OUTGOING_CALL");
            intentFilter.addAction("android.intent.action.PHONE_STATE");
        } catch (Exception e) {
            StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_ENTER_CODE, this.initParams.gUid, -100);
            ClientLog.e(TAG, "enter conference error", e);
        }
    }

    /* access modifiers changed from: private */
    public void joinAgoraChannel(String str, int i) {
        if (this.mVoipManager != null) {
            this.mVoipManager.joinRoom(str, i);
        } else {
            ClientLog.d(TAG, "join room failed, voipmanage is null");
        }
    }

    public void exitConference() {
        StatUtils.addToMiLinkMonitor(LogType.voip, StatUtils.KEY_AGORA_MIXUN_SDK_VOIP_LEAVE, this.initParams.gUid, new long[0]);
        if (this.mVoipManager != null) {
            this.mVoipManager.leaveRoom();
        } else {
            ClientLog.d(TAG, "leave room failed, voipmanager is null");
        }
    }

    public void enableAudioVolumeIndication(int i, int i2) {
        if (this.mVoipManager != null) {
            this.mVoipManager.enableAudioVolumeIndication(i, i2);
        } else {
            ClientLog.d(TAG, "enableAudioVolumeIndication failed, voipmanager is null");
        }
    }

    public void muteUser(String str, boolean z) {
        if (this.mVoipManager != null) {
            ConferenceMember conferenceMember = (ConferenceMember) gUid2SMidMap.get(str);
            if (conferenceMember != null) {
                this.mVoipManager.muteUser(conferenceMember.mediaMuid, z);
            } else {
                ClientLog.d(TAG, "this conference has not this user");
            }
        }
    }

    public void startAudio() {
        if (this.mVoipManager != null) {
            this.mVoipManager.startListen();
        } else {
            ClientLog.d(TAG, "start listen failed, voipmanager is null");
        }
    }

    public void stopAudio() {
        if (this.mVoipManager != null) {
            this.mVoipManager.stopListen();
        } else {
            ClientLog.d(TAG, "stop listen failed, voipmanager is null");
        }
    }

    public void openMic() {
        if (this.mVoipManager != null) {
            this.mVoipManager.startSpeaker();
        } else {
            ClientLog.d(TAG, "start speaker failed, voipmanager is null");
        }
    }

    public void closeMic() {
        if (this.mVoipManager != null) {
            this.mVoipManager.stopSpeaker();
        } else {
            ClientLog.d(TAG, "stop speaker failed, voipmanager is null");
        }
    }

    public boolean requireGameSoundCancellation() {
        if (this.mVoipManager != null) {
            return this.mVoipManager.requireGameSoundCancellation();
        }
        ClientLog.e(TAG, "require game sound cancellation fail, voipManager is null");
        return false;
    }

    public void enableLowBitrateMode(boolean z) {
        if (this.mVoipManager != null) {
            this.mVoipManager.enableLowBitrateMode(z);
        } else {
            ClientLog.e(TAG, "enable low bit rate mode fail, voipManager is null");
        }
    }

    public void sendStat(String str) {
        ClientLog.d(TAG, "in app process, stat content: " + str);
        try {
            this.mServiceClient.getRemoteService().scribe(str);
        } catch (Exception e) {
            ClientLog.e(TAG, "sendStat fail", e);
        }
    }

    public void adjustPlaybackSignalVolume(int i) {
        if (this.mVoipManager != null) {
            MiVoipSdkManager miVoipSdkManager = this.mVoipManager;
            if (i < 0) {
                i = 100;
            }
            miVoipSdkManager.adjustPlaybackSignalVolume(i);
            return;
        }
        ClientLog.e(TAG, "adjustPlaybackSignalVolume fail, mVoipManager is null");
    }

    /* access modifiers changed from: private */
    public void getConferenceMemberAsync(long j) {
        if (j > 0) {
            try {
                ClientLog.d(TAG, "getConferenceMemberAsync, conferenceId:" + j);
                this.mServiceClient.getRemoteService().getConferenceMember(j);
            } catch (Exception e) {
                ClientLog.e(TAG, "getConferenceMemberAsync error", e);
            }
        }
    }

    public void sendAsync(MsgPacketData msgPacketData, int i, SendListener sendListener) {
        try {
            this.mServiceClient.getRemoteService().sendAsyncWithResponse(msgPacketData, i, sendListener);
        } catch (Exception e) {
            ClientLog.e(TAG, "sendAsync error ,e: " + e);
        }
    }
}
