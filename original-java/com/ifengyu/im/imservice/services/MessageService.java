package com.ifengyu.im.imservice.services;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.text.TextUtils;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.sp.ConfigurationSp;
import com.ifengyu.im.config.AppConstant;
import com.ifengyu.im.imservice.audio.AudioTalkMediaPlayer;
import com.ifengyu.im.imservice.audio.AudioTalkMediaPlayer.MediaPlayCallBack;
import com.ifengyu.im.imservice.event.BT_PUBLIC_MSG;
import com.ifengyu.im.imservice.event.MessageHistoryEvent;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMManager;
import com.ifengyu.im.imservice.model.AudioAttachment;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.support.SequenceNumberMaker;
import com.ifengyu.im.utils.IMSingleThreadExecutor;
import com.ifengyu.im.utils.IMSingleThreadExecutor.IMTask;
import com.ifengyu.library.util.a;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.i;
import com.ifengyu.library.util.l;
import com.liulishuo.filedownloader.e.f;
import com.liulishuo.filedownloader.m;
import com.liulishuo.filedownloader.r;
import com.mi.mimsgsdk.AudioRecordListener;
import com.mi.mimsgsdk.ConnectionStatus;
import com.mi.mimsgsdk.MsgSdkManager;
import com.mi.mimsgsdk.message.AudioBody;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.RetValue;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class MessageService extends IMManager {
    public static final int BODY_TYPE_AUDIO = 2;
    public static final int BODY_TYPE_CUSTOM = 0;
    public static final int BODY_TYPE_TEXT = 1;
    public static final int BODY_TYPE_VIDEO = 3;
    public static final int CHANNEL_GROUP = 3;
    public static final int CHANNEL_ROOM = 2;
    public static final int CHANNEL_USER = 1;
    public static final String SYSTEM_MSG_GROUP_FROM_ID = "2";
    public static final String SYSTEM_MSG_SINGLE_FROM_ID = "1";
    /* access modifiers changed from: private */
    public static final String TAG = MessageService.class.getSimpleName();
    private boolean isEnterChatRoom = false;
    private boolean isInitialized = false;
    /* access modifiers changed from: private */
    public boolean isPttDown = false;
    private AudioManager mAudioManager;
    private LinkedList<MessageEntity> mAutoPlayMsgList = new LinkedList<>();
    private BroadcastReceiver mBluetoothReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            c.a(MessageService.TAG, "action = " + action);
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                if (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", -1) == 10) {
                    c.a(MessageService.TAG, "onReceive#bluetooth state off");
                    MessageService.this.stopHeadset();
                }
            } else if ("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED".equals(action)) {
                if (intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", -1) == 0) {
                    c.a(MessageService.TAG, "onReceive#bluetooth disconnected");
                    MessageService.this.stopHeadset();
                }
            } else if ("android.media.ACTION_SCO_AUDIO_STATE_UPDATED".equals(action) && 1 == intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", -1)) {
                c.a(MessageService.TAG, "onReceive#audio sco is established");
                if (MessageService.this.isPttDown) {
                    c.a(MessageService.TAG, "onReceive#and ptt key is down,start recording");
                    MessageService.this.mMsgSdkManager.startRecord();
                }
            }
        }
    };
    private ConnectionStatus mCurrentStatus = ConnectionStatus.disconnected;
    /* access modifiers changed from: private */
    public DBInterface mDBInterface = DBInterface.instance();
    private m mFileDownloadSampleListener = createDownloadListener();
    private IMLoginManager mIMLoginManager = IMLoginManager.instance();
    private IMSessionManager mIMSessionManager = IMSessionManager.instance();
    /* access modifiers changed from: private */
    public MsgSdkManager mMsgSdkManager;
    private AudioTalkMediaPlayer mPlayer;
    private String mTalkGroupId;
    private WrapAudioRecordListener mWrapAudioRecordListener;
    private f queue;

    public static class Holder {
        public static final MessageService INSTANCE = new MessageService();
    }

    public static MessageService instance() {
        return Holder.INSTANCE;
    }

    public void doOnStart() {
    }

    public void onEventMainThread(BT_PUBLIC_MSG bt_public_msg) {
        switch (bt_public_msg) {
            case BT_OPEN_PHONE_AUDIO:
                c.a(TAG, "ptt down");
                this.isPttDown = true;
                startRecord(true);
                return;
            case BT_CLOSE_PHONE_AUDIO:
                c.a(TAG, "ptt up");
                this.isPttDown = false;
                stopRecord();
                return;
            default:
                return;
        }
    }

    public void onLoginSuccess() {
        IntentFilter intentFilter = new IntentFilter("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        this.ctx.registerReceiver(this.mBluetoothReceiver, intentFilter);
        if (!de.greenrobot.event.c.a().c(this)) {
            de.greenrobot.event.c.a().a((Object) this);
        }
        initMiXun();
        initCurrentSession();
    }

    public void reset() {
        de.greenrobot.event.c.a().d(this);
        a.a(this.mBluetoothReceiver);
        if (this.mMsgSdkManager != null) {
            this.mMsgSdkManager.destroy();
            this.mMsgSdkManager = null;
        }
        this.isInitialized = false;
        this.isPttDown = false;
        this.mWrapAudioRecordListener = null;
        this.mAudioManager = null;
    }

    private void initMiXun() {
        if (!this.isInitialized) {
            IMLoginManager instance = IMLoginManager.instance();
            String valueOf = String.valueOf(instance.getLoginId());
            String b2Token = instance.getB2Token();
            String publicKey = instance.getPublicKey();
            String publicId = instance.getPublicId();
            String valueOf2 = String.valueOf(AppConstant.APP_ID);
            c.b(TAG, String.format("login#login mi sdk ing\n loginId = %s\n b2Token = %s\n publicKey = %s\n publicId = %s\n appId = %s", new Object[]{valueOf, b2Token, publicKey, publicId, valueOf2}));
            if (i.a(valueOf, b2Token, publicKey, publicId, valueOf2)) {
                c.d(TAG, "login#login mi sdk failed,because some params is null");
            } else {
                initMiSdk(valueOf, publicKey, valueOf2, b2Token, publicId);
            }
        }
    }

    private void initMiSdk(String str, String str2, String str3, String str4, String str5) {
        if (this.mMsgSdkManager == null) {
            this.mMsgSdkManager = new MsgSdkManager(this.ctx.getApplicationContext());
        }
        final MxMsgCallbackAdapter mxMsgCallbackAdapter = new MxMsgCallbackAdapter(this);
        final String str6 = str;
        final String str7 = str2;
        final String str8 = str3;
        final String str9 = str4;
        final String str10 = str5;
        IMSingleThreadExecutor.getInstance().execute((IMTask<T>) new IMTask<Boolean>() {
            public Boolean runInBackground() {
                return Boolean.valueOf(MessageService.this.mMsgSdkManager.init(str6, str7, str8, str9, str10, mxMsgCallbackAdapter));
            }

            public void onCompleted(Boolean bool) {
                if (bool.booleanValue()) {
                    c.b(MessageService.TAG, "msg sdk init success");
                } else {
                    c.b(MessageService.TAG, "msg sdk init failed");
                }
            }
        });
        initAudio(null);
    }

    public void initAudio(AudioRecordAdapter audioRecordAdapter) {
        if (this.mMsgSdkManager == null) {
            c.b(TAG, "msg sdk is not initialized, please initialize");
            return;
        }
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) this.ctx.getSystemService("audio");
        }
        if (this.mWrapAudioRecordListener == null) {
            this.mWrapAudioRecordListener = new WrapAudioRecordListener() {
                /* access modifiers changed from: 0000 */
                public void sendAudioMessageToTalkGroup(String str, long j) {
                    MessageService.instance().sendAudioMessageToTalkGroup(str, j);
                }
            };
            this.mWrapAudioRecordListener.setAudioRecordListener(audioRecordAdapter);
            this.mMsgSdkManager.audioMsgSdkInit(this.ctx, this.mWrapAudioRecordListener);
            return;
        }
        this.mWrapAudioRecordListener.setAudioRecordListener(audioRecordAdapter);
    }

    private void initCurrentSession() {
        String sessionTalk = ConfigurationSp.instance(this.ctx, this.mIMLoginManager.getLoginId()).getSessionTalk();
        if (!TextUtils.isEmpty(sessionTalk)) {
            String[] split = sessionTalk.split("_");
            if (split.length > 1) {
                this.mTalkGroupId = split[1];
            }
        }
    }

    public void setAudioRecordListener(AudioRecordListener audioRecordListener) {
        if (this.mWrapAudioRecordListener != null) {
            this.mWrapAudioRecordListener.setAudioRecordListener(audioRecordListener);
        }
    }

    public void removeAudioRecordListener() {
        if (this.mWrapAudioRecordListener != null) {
            this.mWrapAudioRecordListener.clear();
        }
    }

    public void pullOldGroupMessage(String str, long j, int i) {
        this.mMsgSdkManager.pullOldGroupMessage(str, j, i);
    }

    public void syncGroupMessage(String str) {
        this.mMsgSdkManager.syncGroupMessage(str);
    }

    public void sendMessage(int i, MiMessage miMessage) {
        this.mMsgSdkManager.sendMessage(i, miMessage, 30000);
    }

    public void stopRecord() {
        this.mMsgSdkManager.stopRecord();
        if (this.mAudioManager != null && this.mAudioManager.isBluetoothScoOn()) {
            this.mAudioManager.setBluetoothScoOn(false);
            this.mAudioManager.stopBluetoothSco();
        }
        this.mMsgSdkManager.setSpeakerphoneOn(true);
    }

    public void startRecord(boolean z) {
        if (!a.c() || !z) {
            c.a(TAG, "bluetooth is not connected or press phone button,start recording directly");
            this.mAudioManager.setMode(0);
            this.mMsgSdkManager.startRecord();
            return;
        }
        this.mAudioManager.stopBluetoothSco();
        c.a(TAG, "bluetooth is connected and press ptt,opening sco to record");
        this.mAudioManager.setMode(3);
        this.mAudioManager.setBluetoothScoOn(true);
        this.mAudioManager.startBluetoothSco();
    }

    public void changeToHeadset() {
        if (this.mAudioManager != null) {
            this.mAudioManager.setStreamVolume(3, this.mAudioManager.getStreamMaxVolume(3), 0);
            this.mAudioManager.setMode(3);
            this.mAudioManager.startBluetoothSco();
            this.mAudioManager.setBluetoothScoOn(true);
            this.mAudioManager.setSpeakerphoneOn(false);
        }
    }

    public void changeToSpeaker(boolean z) {
        if (this.mAudioManager != null) {
            this.mAudioManager.setMode(z ? 3 : 0);
            this.mAudioManager.stopBluetoothSco();
            this.mAudioManager.setBluetoothScoOn(false);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
    }

    public void stopHeadset() {
        if (this.mAudioManager != null && this.mAudioManager.isBluetoothScoOn()) {
            this.mAudioManager.stopBluetoothSco();
            this.mAudioManager.setBluetoothScoOn(false);
            this.mAudioManager.setSpeakerphoneOn(true);
        }
    }

    public void handleConnectionStateChanged(int i) {
        switch (i) {
            case 0:
                c.d(TAG, "onConnectionStateChanged:disconnected");
                setCurrentStatus(ConnectionStatus.disconnected);
                de.greenrobot.event.c.a().e(ConnectionStatus.disconnected);
                return;
            case 1:
                c.a(TAG, "onConnectionStateChanged:connecting");
                setCurrentStatus(ConnectionStatus.connecting);
                de.greenrobot.event.c.a().e(ConnectionStatus.connecting);
                return;
            case 2:
                c.a(TAG, "onConnectionStateChanged:connected");
                setCurrentStatus(ConnectionStatus.connected);
                de.greenrobot.event.c.a().e(ConnectionStatus.connected);
                return;
            case 3:
                c.a(TAG, "onConnectionStateChanged:logining");
                setCurrentStatus(ConnectionStatus.logining);
                de.greenrobot.event.c.a().e(ConnectionStatus.logining);
                return;
            case 4:
                c.a(TAG, "onConnectionStateChanged:logined");
                setCurrentStatus(ConnectionStatus.logined);
                de.greenrobot.event.c.a().e(ConnectionStatus.logined);
                syncAllGroupMessage();
                return;
            default:
                return;
        }
    }

    private void syncAllGroupMessage() {
        if (IMGroupManager.instance().isGroupReady()) {
            for (GroupEntity peerId : IMGroupManager.instance().getAllGroupList()) {
                syncGroupMessage(String.valueOf(peerId.getPeerId()));
            }
        }
    }

    public boolean handleReceiveOldGroupMessage(String str, List<MiMessage> list) {
        c.a(TAG, "onReceiveOldGroupMessage:arg0 = " + str + "arg1:" + list.toString());
        ArrayList arrayList = new ArrayList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(MessageEntity.getMessageEntity(3, (MiMessage) list.get(i), getLoginId()));
        }
        de.greenrobot.event.c.a().e(new MessageHistoryEvent(arrayList));
        return true;
    }

    public void handleDataSendResponse(int i, RetValue retValue, MiMessage miMessage) {
        MessageEntity messageEntity = MessageEntity.getMessageEntity(i, miMessage, getLoginId());
        if (retValue.retCode == 0) {
            c.a(TAG, "message data send success");
            messageEntity.setStatus(1);
        } else {
            c.d(TAG, "message data send failure");
            messageEntity.setStatus(2);
        }
        if (c.a()) {
            c.a(TAG, "onDataSendResponse message send result:\n" + "retCode = " + retValue.retCode + ",retMsg = " + retValue.retMsg + ",channel = " + i + ",from=" + miMessage.from + ",to = " + miMessage.to + ",msgId = " + miMessage.msgId + ",msgSeq = " + miMessage.msgSeq + ",msgType = " + miMessage.bodyType + ",sendTime = " + miMessage.sendTime);
        }
        MessageEntity messageByMsgId = this.mDBInterface.getMessageByMsgId(messageEntity.getMsgId(), messageEntity.fromId, messageEntity.toId, messageEntity.msgType);
        if (messageByMsgId != null) {
            messageEntity.setId(messageByMsgId.getId());
            messageEntity.setAttachment(messageByMsgId.getAttachment());
            this.mDBInterface.insertOrUpdateMessage(messageEntity);
        }
        this.mIMSessionManager.updateSession(messageEntity);
        l.a((Runnable) new MessageService$$Lambda$0(messageEntity));
    }

    /* access modifiers changed from: 0000 */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x017b, code lost:
        if (r7.msgBody.changeUidList.contains(java.lang.Integer.valueOf(r12.mIMLoginManager.getLoginId())) != false) goto L_0x004f;
     */
    @android.annotation.SuppressLint({"DefaultLocale"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean handleReceiveMessage(int r13, com.mi.mimsgsdk.service.aidl.MiMessage r14) {
        /*
            r12 = this;
            r11 = 1037(0x40d, float:1.453E-42)
            r10 = 3
            r6 = 0
            r9 = 2
            r8 = 1
            java.lang.String r0 = TAG
            java.lang.String r1 = "onReceiveMessage:channel=%d, msgId = %s, from = %s, to = %s, bodyType = %d, sendTime=%d"
            r2 = 6
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Integer r3 = java.lang.Integer.valueOf(r13)
            r2[r6] = r3
            long r4 = r14.msgId
            java.lang.Long r3 = java.lang.Long.valueOf(r4)
            r2[r8] = r3
            java.lang.String r3 = r14.from
            r2[r9] = r3
            java.lang.String r3 = r14.to
            r2[r10] = r3
            r3 = 4
            int r4 = r14.bodyType
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r2[r3] = r4
            r3 = 5
            int r4 = r14.sendTime
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r2[r3] = r4
            java.lang.String r1 = java.lang.String.format(r1, r2)
            com.ifengyu.library.util.c.a(r0, r1)
            java.lang.String r0 = r12.getLoginId()
            java.lang.String r1 = r14.from
            boolean r1 = r1.equals(r0)
            if (r1 == 0) goto L_0x0050
            java.lang.String r0 = TAG
            java.lang.String r1 = "Ignore messages sent by myself"
            com.ifengyu.library.util.c.a(r0, r1)
        L_0x004f:
            return r8
        L_0x0050:
            int r1 = r14.bodyType
            if (r1 != 0) goto L_0x0063
            int r1 = r14.sendTime
            r2 = 1523289600(0x5acb8e00, float:2.86477755E16)
            if (r1 > r2) goto L_0x0063
            java.lang.String r0 = TAG
            java.lang.String r1 = "Ignore custom messages up to time 1523289600 ago"
            com.ifengyu.library.util.c.d(r0, r1)
            goto L_0x004f
        L_0x0063:
            com.ifengyu.im.imservice.model.MessageEntity r0 = com.ifengyu.im.imservice.model.MessageEntity.getMessageEntity(r13, r14, r0)
            java.lang.String r1 = TAG
            java.lang.String r2 = "messageEntity:content = %s"
            java.lang.Object[] r3 = new java.lang.Object[r8]
            java.lang.String r4 = r0.getContent()
            r3[r6] = r4
            java.lang.String r2 = java.lang.String.format(r2, r3)
            com.ifengyu.library.util.c.a(r1, r2)
            int r1 = r0.getMsgType()
            if (r1 != 0) goto L_0x00ff
            java.lang.String r1 = r0.getContent()
            com.ifengyu.im.imservice.entity.NotifyCommand r7 = com.ifengyu.im.protobuf.helper.MessageParseEngine.parseGroupNotifyMsg(r1)
            r0.setCommand(r7)
            if (r7 == 0) goto L_0x004f
            int r1 = r7.commandId
            r2 = 1075(0x433, float:1.506E-42)
            if (r1 == r2) goto L_0x004f
            int r1 = r7.commandId
            r2 = 1049(0x419, float:1.47E-42)
            if (r1 != r2) goto L_0x00b1
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            if (r1 == 0) goto L_0x00b1
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.getResultCode()
            if (r1 != 0) goto L_0x00b1
            com.ifengyu.im.imservice.manager.IMGroupManager r1 = com.ifengyu.im.imservice.manager.IMGroupManager.instance()
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r2 = r7.msgBody
            int r2 = r2.groupId
            r3 = 0
            r1.reqGroupDetailInfo(r2, r8, r3)
        L_0x00b1:
            java.lang.String r1 = "1"
            java.lang.String r2 = r0.getFromId()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x0124
            com.ifengyu.im.DB.DBInterface r1 = r12.mDBInterface
            java.lang.String r2 = r0.getContent()
            java.lang.String r3 = r0.getFromId()
            java.lang.String r4 = r0.getToId()
            com.ifengyu.im.imservice.model.MessageEntity r1 = r1.queryMessageByContent(r2, r3, r4, r6)
            if (r1 == 0) goto L_0x00d8
            java.lang.Long r1 = r1.getId()
            r0.setId(r1)
        L_0x00d8:
            int r1 = r7.commandId
            if (r1 != r11) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            if (r1 == 0) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.changeType
            if (r1 != r9) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.leaveType
            if (r1 != r9) goto L_0x00ff
            java.lang.String r1 = "2"
            r0.setFromId(r1)
            r0.setSessionType(r10)
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.groupId
            java.lang.String r1 = java.lang.String.valueOf(r1)
            r0.setToId(r1)
        L_0x00ff:
            com.ifengyu.im.DB.DBInterface r1 = r12.mDBInterface
            r1.insertOrUpdateMessage(r0)
            com.ifengyu.im.imservice.services.IMSessionManager r1 = com.ifengyu.im.imservice.services.IMSessionManager.instance()
            r1.updateSession(r0)
            com.ifengyu.im.imservice.event.PriorityEvent r1 = new com.ifengyu.im.imservice.event.PriorityEvent
            r1.<init>()
            com.ifengyu.im.imservice.event.PriorityEvent$Event r2 = com.ifengyu.im.imservice.event.PriorityEvent.Event.MSG_RECEIVED_MESSAGE
            r1.event = r2
            r1.object = r0
            r12.triggerEvent(r1)
            int r1 = r0.getMsgType()
            if (r1 != r9) goto L_0x004f
            r12.downloadMessage(r0)
            goto L_0x004f
        L_0x0124:
            java.lang.String r1 = "2"
            java.lang.String r2 = r0.getFromId()
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L_0x00ff
            com.ifengyu.im.DB.DBInterface r1 = r12.mDBInterface
            long r2 = r0.getMsgId()
            java.lang.String r4 = r0.getFromId()
            java.lang.String r5 = r0.getToId()
            com.ifengyu.im.imservice.model.MessageEntity r1 = r1.getMessageByMsgId(r2, r4, r5, r6)
            if (r1 == 0) goto L_0x014b
            java.lang.Long r1 = r1.getId()
            r0.setId(r1)
        L_0x014b:
            int r1 = r7.commandId
            if (r1 != r11) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            if (r1 == 0) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.changeType
            if (r1 != r9) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            int r1 = r1.leaveType
            if (r1 != r9) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            java.util.List<java.lang.Integer> r1 = r1.changeUidList
            int r1 = r1.size()
            if (r1 <= 0) goto L_0x00ff
            com.ifengyu.im.imservice.entity.NotifyCommand$MsgBody r1 = r7.msgBody
            java.util.List<java.lang.Integer> r1 = r1.changeUidList
            com.ifengyu.im.imservice.manager.IMLoginManager r2 = r12.mIMLoginManager
            int r2 = r2.getLoginId()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            boolean r1 = r1.contains(r2)
            if (r1 == 0) goto L_0x00ff
            goto L_0x004f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.im.imservice.services.MessageService.handleReceiveMessage(int, com.mi.mimsgsdk.service.aidl.MiMessage):boolean");
    }

    public void triggerEvent(Object obj) {
        de.greenrobot.event.c.a().e(obj);
    }

    private void downloadMessage(MessageEntity messageEntity) {
        AudioAttachment audioAttachment = (AudioAttachment) messageEntity.getAttachment();
        if (this.queue == null) {
            this.queue = new f();
        }
        this.queue.a(r.a().a(audioAttachment.getUrl()).a((Object) messageEntity).a((com.liulishuo.filedownloader.i) this.mFileDownloadSampleListener));
        this.queue.a();
    }

    private m createDownloadListener() {
        return new m() {
            /* access modifiers changed from: protected */
            public void blockComplete(com.liulishuo.filedownloader.a aVar) {
                super.blockComplete(aVar);
                MessageEntity messageEntity = (MessageEntity) aVar.t();
                ((AudioAttachment) messageEntity.getAttachment()).setUrl(aVar.h());
                messageEntity.setAttachStatus(2);
                MessageService.this.mDBInterface.insertOrUpdateMessage(messageEntity);
            }

            /* access modifiers changed from: protected */
            public void completed(com.liulishuo.filedownloader.a aVar) {
                super.completed(aVar);
                MessageEntity messageEntity = (MessageEntity) aVar.t();
                c.a(MessageService.TAG, "audio attachment download complete, msgId = " + messageEntity.getMsgId());
                MessageObserverHelper.getInstance().notifyMessageDownloaded(messageEntity);
                if (messageEntity.getToId().equals(MessageService.this.getTalkGroupId()) && !MessageService.this.isEnterChatRoom()) {
                    MessageService.this.startPlayAudioMessage(messageEntity);
                }
            }
        };
    }

    /* access modifiers changed from: private */
    public void startPlayAudioMessage(MessageEntity messageEntity) {
        this.mAutoPlayMsgList.add(messageEntity);
        if (this.mPlayer == null || !this.mPlayer.isPlaying()) {
            playNext();
        }
    }

    /* access modifiers changed from: private */
    public void playNext() {
        if (this.mPlayer == null) {
            this.mPlayer = new AudioTalkMediaPlayer(this.ctx);
            this.mPlayer.setMediaCallback(new MediaPlayCallBack() {
                public void onStoped(String str, boolean z) {
                    MessageService.this.stopHeadset();
                    MessageService.this.playNext();
                }

                public void onStarted(String str) {
                }

                public void onError(String str) {
                }
            });
        }
        MessageEntity messageEntity = (MessageEntity) this.mAutoPlayMsgList.poll();
        if (messageEntity != null) {
            if (a.c()) {
                changeToHeadset();
            } else {
                changeToSpeaker(false);
            }
            this.mPlayer.addToPlayList(1, 1, 10, ((AudioAttachment) messageEntity.getAttachment()).getUrl(), "", null, false);
            this.mPlayer.resume();
            this.mPlayer.playNext(3);
            messageEntity.setStatus(3);
            this.mDBInterface.insertOrUpdateMessage(messageEntity);
        }
    }

    public MessageEntity sendAudioMessageToTalkGroup(String str, long j) {
        if (TextUtils.isEmpty(getTalkGroupId())) {
            c.d(TAG, "current session id is null,can not send message");
            return null;
        }
        return sendAudioMessage(3, getTalkGroupId(), str, j);
    }

    public MessageEntity sendAudioMessage(int i, String str, String str2, long j) {
        long currentTimeMillis = System.currentTimeMillis();
        int loginId = IMLoginManager.instance().getLoginId();
        int makelocalUniqueMsgId = SequenceNumberMaker.getInstance().makelocalUniqueMsgId();
        sendMessage(i, buildAudioMiMessage(String.valueOf(loginId), str, str2, j, makelocalUniqueMsgId, (int) (currentTimeMillis / 1000)));
        MessageEntity buildAudioMessage = buildAudioMessage(i, makelocalUniqueMsgId, String.valueOf(loginId), str, currentTimeMillis, j, str2);
        buildAudioMessage.setId(Long.valueOf(DBInterface.instance().insertOrUpdateMessage(buildAudioMessage)));
        return buildAudioMessage;
    }

    private MessageEntity buildAudioMessage(int i, int i2, String str, String str2, long j, long j2, String str3) {
        MessageEntity messageEntity = new MessageEntity();
        messageEntity.setMsgId((long) i2);
        messageEntity.setFromId(str);
        messageEntity.setToId(str2);
        messageEntity.setSessionType(i);
        messageEntity.setDirect(0);
        messageEntity.setTime(j);
        AudioAttachment audioAttachment = new AudioAttachment();
        audioAttachment.setDuration(j2);
        audioAttachment.setUrl(str3);
        messageEntity.setMsgType(2);
        messageEntity.setAttachment(audioAttachment);
        messageEntity.setStatus(0);
        return messageEntity;
    }

    private MiMessage buildAudioMiMessage(String str, String str2, String str3, long j, int i, int i2) {
        AudioBody audioBody = new AudioBody();
        audioBody.setLength(j);
        audioBody.setUrl(str3);
        MiMessage miMessage = new MiMessage();
        miMessage.from = str;
        miMessage.to = str2;
        miMessage.body = audioBody;
        miMessage.msgId = (long) i;
        miMessage.bodyType = 2;
        miMessage.sendTime = i2;
        return miMessage;
    }

    public List<MessageEntity> loadHistoryMsg(int i, String str, long j, int i2) {
        return this.mDBInterface.getHistoryMsg(i, str, j, i2);
    }

    public String getLoginId() {
        return String.valueOf(this.mIMLoginManager.getLoginId());
    }

    public String getTalkGroupId() {
        return this.mTalkGroupId;
    }

    public void setTalkGroupId(String str) {
        this.mTalkGroupId = str;
        ConfigurationSp.instance(this.ctx, this.mIMLoginManager.getLoginId()).setSessionTalk(getGroupSessionKey(str));
    }

    public String getGroupSessionKey(String str) {
        return String.format("%s_%s", new Object[]{String.valueOf(3), str});
    }

    public ConnectionStatus getCurrentStatus() {
        return this.mCurrentStatus;
    }

    public void setCurrentStatus(ConnectionStatus connectionStatus) {
        this.mCurrentStatus = connectionStatus;
    }

    public boolean isEnterChatRoom() {
        return this.isEnterChatRoom;
    }

    public void setEnterChatRoom(boolean z) {
        this.isEnterChatRoom = z;
    }

    public void setInitialized(boolean z) {
        this.isInitialized = z;
    }
}
