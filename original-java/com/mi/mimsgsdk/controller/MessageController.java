package com.mi.mimsgsdk.controller;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.AnyThread;
import android.support.annotation.BinderThread;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.ksyun.ks3.exception.a;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.aidl.PacketData;
import com.mi.milinkforgame.sdk.client.ClientLog;
import com.mi.milinkforgame.sdk.client.MiLinkClient;
import com.mi.milinkforgame.sdk.client.MiLinkObserver;
import com.mi.milinkforgame.sdk.data.Const.MiLinkSdkState;
import com.mi.milinkforgame.sdk.interaction.IEventCallback;
import com.mi.milinkforgame.sdk.interaction.IPacketCallback;
import com.mi.milinkforgame.sdk.session.ResponseListener;
import com.mi.mimsgsdk.UserInfo;
import com.mi.mimsgsdk.database.GroupMessageDao;
import com.mi.mimsgsdk.database.SingleMessageDao;
import com.mi.mimsgsdk.exception.ExceptionWithCode;
import com.mi.mimsgsdk.log.LogsManager;
import com.mi.mimsgsdk.log.upload.UploadLogParameter;
import com.mi.mimsgsdk.message.AudioBody;
import com.mi.mimsgsdk.message.CustomBody;
import com.mi.mimsgsdk.message.DefaultBody;
import com.mi.mimsgsdk.message.TextBody;
import com.mi.mimsgsdk.proto.MiMsgProto.Message;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldGroupMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldGroupMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldUserMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.PullOldUserMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.SendGroupMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.SendGroupMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.SendRoomMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.SendRoomMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.SendUserMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.SendUserMsgResponse;
import com.mi.mimsgsdk.proto.MiMsgProto.SyncGroupMsgRequest;
import com.mi.mimsgsdk.proto.MiMsgProto.SyncUserMsgRequest;
import com.mi.mimsgsdk.proto.SDKSignal.QueryConferenceMemberReq;
import com.mi.mimsgsdk.proto.SDKSignal.QueryConferenceMemberRsp;
import com.mi.mimsgsdk.proto.SDKSignal.QueryMediaIdRequest;
import com.mi.mimsgsdk.proto.SDKSignal.QueryMediaIdResponse;
import com.mi.mimsgsdk.proto.SDKUserC2S.MediaUserId;
import com.mi.mimsgsdk.proto.SDKUserC2S.QueryMuidReq;
import com.mi.mimsgsdk.proto.SDKUserC2S.QueryMuidRsp;
import com.mi.mimsgsdk.proto.Scribe.AgoralogRsp;
import com.mi.mimsgsdk.proto.Scribe.CommonlogRsp;
import com.mi.mimsgsdk.service.MnsPacketDispatcher;
import com.mi.mimsgsdk.service.aidl.ConferenceMember;
import com.mi.mimsgsdk.service.aidl.ICustomCallback;
import com.mi.mimsgsdk.service.aidl.IMessageListener;
import com.mi.mimsgsdk.service.aidl.ISendCallback;
import com.mi.mimsgsdk.service.aidl.MiMessage;
import com.mi.mimsgsdk.service.aidl.MsgPacketData;
import com.mi.mimsgsdk.service.aidl.RetValue;
import com.mi.mimsgsdk.stat.StatWorker;
import com.mi.mimsgsdk.stat.model.AgoraLog;
import com.mi.mimsgsdk.stat.model.CommonLog;
import com.mi.mimsgsdk.stat.storage.StatDao;
import com.mi.mimsgsdk.upload.Attachment;
import com.mi.mimsgsdk.upload.AttachmentUtils;
import com.mi.mimsgsdk.upload.UploadCallBack;
import com.mi.mimsgsdk.upload.UploadFileLoader;
import com.mi.mimsgsdk.upload.UploadTask;
import com.mi.mimsgsdk.utils.BusinessDBUtils;
import com.mi.mimsgsdk.utils.HttpDownloader;
import com.mi.mimsgsdk.utils.MnsCommand;
import com.mi.mimsgsdk.utils.NetworkUtils;
import com.mi.mimsgsdk.video.VideoBody;
import com.xiaomi.channel.common.audio.CustomAudioManager.DownloadCallback;
import com.xiaomi.channel.common.audio.MessageType;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.Header;
import rx.a.C0098a;
import rx.e;

public class MessageController {
    public static final int BODY_TYPE_AUDIO = 2;
    public static final int BODY_TYPE_CUSTOM = 0;
    public static final int BODY_TYPE_TEXT = 1;
    public static final int BODY_TYPE_VIDEO = 3;
    public static final int CHANNEL_GROUP = 3;
    public static final int CHANNEL_ROOM = 2;
    public static final int CHANNEL_USER = 1;
    private static final int KS_ERROR = -401;
    private static final int MAX_SYNC = 20;
    private static final int MILINK_ERROR = -400;
    /* access modifiers changed from: private */
    public static final String TAG = MessageController.class.getSimpleName();
    private volatile String mAppId;
    /* access modifiers changed from: private */
    public volatile Context mContext;
    /* access modifiers changed from: private */
    public volatile String mGUid;
    /* access modifiers changed from: private */
    public volatile boolean mHasLogin = false;
    private volatile MiLinkClient mMiLinkClient;
    /* access modifiers changed from: private */
    public volatile IMessageListener mMsgListener;
    private volatile int mSyncLimit = 20;
    /* access modifiers changed from: private */
    public volatile boolean uploadingLog;

    private static class MessageControllerHolder {
        /* access modifiers changed from: private */
        public static MessageController instance = new MessageController();

        private MessageControllerHolder() {
        }
    }

    public static MessageController getInstance() {
        return MessageControllerHolder.instance;
    }

    @BinderThread
    public boolean init(Context context, String str, String str2, String str3, String str4, String str5, IMessageListener iMessageListener) {
        int length;
        int length2;
        int i = -1;
        StringBuilder append = new StringBuilder().append("controller init start, gUid.len=");
        if (str == null) {
            length = -1;
        } else {
            length = str.length();
        }
        StringBuilder append2 = append.append(length).append(" pSkey.len=");
        if (str2 == null) {
            length2 = -1;
        } else {
            length2 = str2.length();
        }
        StringBuilder append3 = append2.append(length2).append(" b2Token.len=");
        if (str4 != null) {
            i = str4.length();
        }
        ClientLog.i(TAG, append3.append(i).append(" appID=").append(str3).append(" pId=").append(str5).toString());
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
            ClientLog.d(TAG, "init failed because some args is empty");
            try {
                RetValue retValue = new RetValue();
                retValue.retCode = -1;
                retValue.retMsg = "init but some args is empty";
                if (iMessageListener != null) {
                    iMessageListener.onInitResult(retValue);
                }
            } catch (RemoteException e) {
                ClientLog.e(TAG, "e", e);
            }
            return false;
        }
        this.mContext = context.getApplicationContext();
        SingleMessageDao.setContext(this.mContext);
        GroupMessageDao.setContext(this.mContext);
        this.mGUid = str;
        this.mAppId = str3;
        this.mMsgListener = iMessageListener;
        this.mMiLinkClient = new MiLinkClient(this.mContext, new MiLinkObserver() {
            public void onInternalError(int i) {
                ClientLog.d(MessageController.TAG, "onInternalError i " + i);
                if (MessageController.this.mMsgListener != null) {
                    RetValue retValue = new RetValue();
                    retValue.retCode = -100;
                    retValue.retMsg = "internal error";
                    try {
                        MessageController.this.mMsgListener.onInitResult(retValue);
                    } catch (RemoteException e) {
                        ClientLog.e(MessageController.TAG, "e", e);
                    }
                }
            }

            public void onMilinkSdkStateUpdate(MiLinkSdkState miLinkSdkState, MiLinkSdkState miLinkSdkState2) {
                ClientLog.d(MessageController.TAG, "onMilinkSdkStateUpdate " + miLinkSdkState + "-" + miLinkSdkState2 + " hasLogin " + MessageController.this.mHasLogin);
                if (MessageController.this.mMsgListener != null) {
                    try {
                        MessageController.this.mMsgListener.onConnectionStateChanged(miLinkSdkState2.ordinal());
                        if (miLinkSdkState2 == MiLinkSdkState.Logined) {
                            MessageController.this.syncUserMessage();
                            StatWorker.getInstance();
                            if (!MessageController.this.mHasLogin) {
                                MessageController.this.mHasLogin = true;
                                RetValue retValue = new RetValue();
                                retValue.retCode = 0;
                                retValue.retMsg = MiAccountManager.getInstance().getUserId();
                                UserInfo.getInstance().setUserId(Long.parseLong(retValue.retMsg));
                                MessageController.this.mMsgListener.onInitResult(retValue);
                            }
                        }
                    } catch (RemoteException e) {
                        ClientLog.e(MessageController.TAG, "e", e);
                    }
                }
            }

            public void onLoginFailed(int i) {
                ClientLog.d(MessageController.TAG, "onLoginFailed");
                if (MessageController.this.mMsgListener != null) {
                    RetValue retValue = new RetValue();
                    retValue.retCode = -101;
                    retValue.retMsg = "login failed";
                    try {
                        MessageController.this.mMsgListener.onInitResult(retValue);
                    } catch (RemoteException e) {
                        ClientLog.e(MessageController.TAG, "e", e);
                    }
                }
            }
        });
        this.mMiLinkClient.init(new IPacketCallback() {
            public boolean onReceive(PacketData packetData) {
                MnsPacketDispatcher.getInstance().processReceivePacket(packetData);
                return true;
            }
        }, new IEventCallback() {
            public void onEventGetServiceToken() {
            }

            public void onEventServiceTokenExpired() {
            }

            public void onEventShouldCheckUpdate() {
            }

            public void onEventInvalidPacket() {
            }

            public void onEventKickedByServer(int i, long j, String str) {
            }
        }, str, str4, str2, str5, true);
        return true;
    }

    public boolean setMessageListener(IMessageListener iMessageListener) throws RemoteException {
        ClientLog.v(TAG, "setMessageListener");
        this.mMsgListener = iMessageListener;
        return true;
    }

    public boolean setSyncLimit(int i) throws RemoteException {
        ClientLog.v(TAG, "setSyncLimit limit=" + i);
        this.mSyncLimit = i;
        return true;
    }

    public String getGUid() {
        return this.mGUid;
    }

    public String getAppId() {
        return this.mAppId;
    }

    public int getSyncLimit() {
        return this.mSyncLimit;
    }

    public boolean sendUserMessage(final MiMessage miMessage, int i) throws RemoteException {
        boolean z = true;
        if (!checkMessage(miMessage) || this.mMiLinkClient == null) {
            String str = TAG;
            StringBuilder append = new StringBuilder().append("sendUserMsg msg not pass or milink is null, milink is null: ");
            if (this.mMiLinkClient != null) {
                z = false;
            }
            ClientLog.v(str, append.append(z).toString());
            return false;
        }
        SendUserMsgRequest build = SendUserMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setFromGuid(miMessage.from).setMsgId(miMessage.msgId).setBodyType(miMessage.bodyType).addToGuid(miMessage.to).setBody(ByteString.copyFrom(miMessage.body.codeBody())).build();
        ClientLog.v(TAG, "sendUserMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_USERMSG_SEND);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    SendUserMsgResponse parseFrom = SendUserMsgResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "onUserMsgRsp rsp=" + parseFrom.toString());
                        MiMessage access$500 = MessageController.this.constructSendMessage(miMessage, parseFrom.getMsgSeq(), parseFrom.getSentTime());
                        if (!BusinessDBUtils.isUserRecordDuplicate(access$500.from, access$500.to, access$500.msgId)) {
                            MessageController.this.processSendResponse(1, access$500, parseFrom.getRetCode(), "send success");
                        }
                        BusinessDBUtils.insertUserRecord(access$500);
                        return;
                    }
                    ClientLog.v(MessageController.TAG, "onUserMsgRsp rsp is null");
                } catch (InvalidProtocolBufferException e) {
                    ClientLog.e(MessageController.TAG, "e", e);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.d(MessageController.TAG, "sendUserMsg failed, i=" + i + " s=" + str);
                MessageController.this.processSendResponse(1, MessageController.this.constructSendMessage(miMessage, 0, 0), MessageController.MILINK_ERROR, str);
            }
        });
        return true;
    }

    public boolean sendGroupMessage(final MiMessage miMessage, int i) throws RemoteException {
        boolean z = true;
        if (!checkMessage(miMessage) || this.mMiLinkClient == null) {
            String str = TAG;
            StringBuilder append = new StringBuilder().append("sendGroupMsg msg not pass or milink is null, milink is null: ");
            if (this.mMiLinkClient != null) {
                z = false;
            }
            ClientLog.v(str, append.append(z).toString());
            return false;
        }
        SendGroupMsgRequest build = SendGroupMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setFromGuid(miMessage.from).setMsgId(miMessage.msgId).setToGgid(miMessage.to).setBodyType(miMessage.bodyType).setBody(ByteString.copyFrom(miMessage.body.codeBody())).build();
        ClientLog.v(TAG, "sendGroupMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_GROUPMSG_SEND);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    SendGroupMsgResponse parseFrom = SendGroupMsgResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "sendGroupMessage rsp=" + parseFrom.toString());
                        MiMessage access$500 = MessageController.this.constructSendMessage(miMessage, parseFrom.getMsgSeq(), parseFrom.getSentTime());
                        if (!BusinessDBUtils.isGroupRecordDuplicate(access$500.from, access$500.to, access$500.msgId)) {
                            MessageController.this.processSendResponse(3, access$500, parseFrom.getRetCode(), "sendGroupMessage success");
                        }
                        BusinessDBUtils.insertGroupRecord(access$500);
                        return;
                    }
                    ClientLog.v(MessageController.TAG, "sendGroupMessage rsp is null");
                } catch (InvalidProtocolBufferException e) {
                    ClientLog.e(MessageController.TAG, "e", e);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.d(MessageController.TAG, "sendGroupMsg failed, i=" + i + " s=" + str);
                MessageController.this.processSendResponse(3, MessageController.this.constructSendMessage(miMessage, 0, 0), MessageController.MILINK_ERROR, str);
            }
        });
        return true;
    }

    public boolean sendRoomMessage(final MiMessage miMessage, int i) throws RemoteException {
        boolean z = true;
        if (!checkMessage(miMessage) || this.mMiLinkClient == null) {
            String str = TAG;
            StringBuilder append = new StringBuilder().append("sendRoomMsg msg not pass or milink is null, milink is null: ");
            if (this.mMiLinkClient != null) {
                z = false;
            }
            ClientLog.v(str, append.append(z).toString());
            return false;
        }
        SendRoomMsgRequest build = SendRoomMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setFromGuid(miMessage.from).setMsgId(miMessage.msgId).setToGrid(miMessage.to).setBodyType(miMessage.bodyType).setBody(ByteString.copyFrom(miMessage.body.codeBody())).build();
        ClientLog.v(TAG, "sendRoomMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_ROOMMSG_SEND);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    SendRoomMsgResponse parseFrom = SendRoomMsgResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "sendRoomMessage rsp=" + parseFrom.toString());
                        MiMessage access$500 = MessageController.this.constructSendMessage(miMessage, parseFrom.getMsgSeq(), parseFrom.getSentTime());
                        MessageController.this.processSendResponse(2, access$500, parseFrom.getRetCode(), "sendRoomMessage success");
                        MessageController.this.onReceiveGameMessage(2, access$500);
                        return;
                    }
                    ClientLog.v(MessageController.TAG, "sendRoomMessage rsp is null");
                } catch (InvalidProtocolBufferException e) {
                    ClientLog.e(MessageController.TAG, "e", e);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.d(MessageController.TAG, "sendRoomMessage failed, i=" + i + " s=" + str);
                MessageController.this.processSendResponse(2, MessageController.this.constructSendMessage(miMessage, 0, 0), MessageController.MILINK_ERROR, str);
            }
        });
        return true;
    }

    public boolean sendAudioMessage(int i, MiMessage miMessage, int i2) {
        String str = "";
        if (miMessage == null || !(miMessage.body instanceof AudioBody)) {
            return false;
        }
        AudioBody audioBody = (AudioBody) miMessage.body;
        if (audioBody == null) {
            return false;
        }
        long length = audioBody.getLength();
        String url = audioBody.getUrl();
        final byte[] content = audioBody.getContent();
        if (((double) (((float) length) / 1000.0f)) < 0.5d) {
            try {
                ClientLog.v(TAG, "AudioLen ceil=" + Math.ceil((double) (((float) length) / 1000.0f)));
                return false;
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        } else {
            final Attachment attachment = new Attachment(this.mContext);
            attachment.localPath = url;
            attachment.duration = (int) length;
            attachment.mimeType = AttachmentUtils.getMimeType(3, attachment.localPath);
            ClientLog.d(TAG, "sendAudioMessage start upload");
            final MiMessage miMessage2 = miMessage;
            final int i3 = i;
            new AsyncTask<Void, Void, Void>() {
                /* access modifiers changed from: protected */
                public void onPreExecute() {
                    super.onPreExecute();
                }

                /* access modifiers changed from: protected */
                public Void doInBackground(Void... voidArr) {
                    uploadFile();
                    return null;
                }

                public void uploadFile() {
                    boolean startUploadFile = UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "sendAudioMessage upload audio success");
                            MiMessage miMessage = new MiMessage();
                            miMessage.from = MessageController.this.mGUid;
                            miMessage.to = miMessage2.to;
                            miMessage.bodyType = 2;
                            AudioBody audioBody = new AudioBody();
                            audioBody.setLength((long) attachment.getDuration());
                            audioBody.setUrl(attachment.getUrl());
                            audioBody.setContent(content);
                            miMessage.body = audioBody;
                            miMessage.msgId = miMessage2.msgId;
                            miMessage.sendTime = (int) (System.currentTimeMillis() / 1000);
                            ClientLog.d(MessageController.TAG, "sendAudioMessage upload audio success url = " + attachment.getUrl());
                            try {
                                switch (i3) {
                                    case 1:
                                        MessageController.this.sendUserMessage(miMessage, 3000);
                                        return;
                                    case 2:
                                        MessageController.this.sendRoomMessage(miMessage, 3000);
                                        return;
                                    case 3:
                                        MessageController.this.sendGroupMessage(miMessage, 3000);
                                        return;
                                    default:
                                        MessageController.this.sendUserMessage(miMessage, 3000);
                                        return;
                                }
                            } catch (RemoteException e) {
                                ClientLog.e(MessageController.TAG, e.toString());
                            }
                            ClientLog.e(MessageController.TAG, e.toString());
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "sendAudioMessage upload audio failure, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "sendAudioMessage, upload audio failed, ks3 error=" + aVar.toString());
                        }
                    }, 3);
                    if (!startUploadFile) {
                        ClientLog.e(MessageController.TAG, "sendAudioMessage upload audio failure, res =" + startUploadFile);
                        MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "sendAudioMessage, upload audio failed, unknown error!");
                    }
                }
            }.execute(new Void[]{null, null, null});
            return true;
        }
    }

    public boolean sendVideoMessage(int i, MiMessage miMessage, int i2) {
        if (miMessage == null || !(miMessage.body instanceof VideoBody)) {
            ClientLog.d(TAG, "gameMessage is null or body is not instance of VB");
            return false;
        }
        VideoBody videoBody = (VideoBody) miMessage.body;
        if (videoBody == null) {
            ClientLog.d(TAG, "sendVideoMessage but message.body is null");
            return false;
        }
        String str = videoBody.getUrl() != null ? videoBody.getUrl() : "";
        int length = videoBody.getLength();
        int size = videoBody.getSize();
        String thumbnailUrl = videoBody.getThumbnailUrl();
        final byte[] content = videoBody.getContent();
        if (length < 500) {
            try {
                ClientLog.v(TAG, "VideoLen ceil=" + Math.ceil((double) (((float) length) / 1000.0f)) + " too short");
                return false;
            } catch (Exception e) {
                ClientLog.e(TAG, "e", e);
            }
        } else {
            final Attachment attachment = new Attachment(this.mContext);
            attachment.localPath = thumbnailUrl;
            attachment.mimeType = AttachmentUtils.getMimeType(2, attachment.localPath);
            final Attachment attachment2 = new Attachment(this.mContext);
            attachment2.localPath = str;
            attachment2.duration = length;
            attachment2.fileSize = (long) (size * 1024);
            attachment2.mimeType = AttachmentUtils.getMimeType(4, attachment2.localPath);
            ClientLog.d(TAG, "sendVideoMessage start upload");
            final int i3 = i;
            final MiMessage miMessage2 = miMessage;
            new AsyncTask<Void, Void, Void>() {
                /* access modifiers changed from: protected */
                public void onPreExecute() {
                    super.onPreExecute();
                }

                /* access modifiers changed from: protected */
                public Void doInBackground(Void... voidArr) {
                    uploadThumbnail();
                    return null;
                }

                private void uploadThumbnail() {
                    if (!UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "sendVideoMessage, uploadThumbnail success");
                            new AsyncTask<Void, Void, Void>() {
                                /* access modifiers changed from: protected */
                                public Void doInBackground(Void... voidArr) {
                                    AnonymousClass8.this.uploadFile();
                                    return null;
                                }
                            }.execute(new Void[0]);
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "sendVideoMessage, uploadThumbnail failure, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "upload thumbnail failed\n" + str);
                        }
                    }, 2)) {
                        MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "sendVideoMessage, upload thumnail failed, unknown error!");
                    }
                }

                /* access modifiers changed from: private */
                public void uploadFile() {
                    if (!UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment2, new UploadCallBack(attachment2) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "sendVideoMessage, uploadVideo success");
                            MiMessage miMessage = new MiMessage();
                            miMessage.from = MessageController.this.mGUid;
                            miMessage.to = miMessage2.to;
                            miMessage.bodyType = 3;
                            VideoBody videoBody = new VideoBody();
                            videoBody.setUrl(attachment2.getUrl());
                            videoBody.setLength(attachment2.getDuration());
                            videoBody.setSize((int) (attachment2.getFileSize() / 1024));
                            videoBody.setContent(content);
                            videoBody.setThumbnailUrl(attachment.getUrl());
                            miMessage.body = videoBody;
                            miMessage.msgId = miMessage2.msgId;
                            miMessage.sendTime = (int) (System.currentTimeMillis() / 1000);
                            ClientLog.d(MessageController.TAG, "sendVideoMessage, uploadVideo success url = " + attachment2.getUrl());
                            try {
                                switch (i3) {
                                    case 1:
                                        MessageController.this.sendUserMessage(miMessage, 3000);
                                        return;
                                    case 2:
                                        MessageController.this.sendRoomMessage(miMessage, 3000);
                                        return;
                                    case 3:
                                        MessageController.this.sendGroupMessage(miMessage, 3000);
                                        return;
                                    default:
                                        MessageController.this.sendUserMessage(miMessage, 3000);
                                        return;
                                }
                            } catch (RemoteException e) {
                                ClientLog.e(MessageController.TAG, "e", e);
                            }
                            ClientLog.e(MessageController.TAG, "e", e);
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "sendVideoMessage, uploadVideo failure, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "sendVideoMessage, upload video failed\n" + str);
                        }
                    }, 4)) {
                        MessageController.this.processSendResponse(i3, MessageController.this.constructSendMessage(miMessage2, 0, 0), MessageController.KS_ERROR, "sendVideoMessage, upload video failed, unknown error!");
                    }
                }
            }.execute(new Void[0]);
            return true;
        }
    }

    public boolean uploadImage(String str, final ICustomCallback iCustomCallback) {
        ClientLog.d(TAG, "uploadImage");
        try {
            if (TextUtils.isEmpty(str) || iCustomCallback == null) {
                return false;
            }
            final Attachment attachment = new Attachment(this.mContext);
            attachment.localPath = str;
            attachment.mimeType = AttachmentUtils.getMimeType(2, attachment.localPath);
            new AsyncTask<Void, Void, Void>() {
                /* access modifiers changed from: protected */
                public Void doInBackground(Void... voidArr) {
                    if (!UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "upload image success, url=" + attachment.getUrl());
                            AnonymousClass9.this.handleCallback(0, attachment.getUrl());
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "upload image failed, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            AnonymousClass9.this.handleCallback(-1, "upload image failed, error=" + aVar.toString());
                        }
                    }, 2)) {
                        handleCallback(-1, "upload image but no response.");
                    }
                    return null;
                }

                /* access modifiers changed from: private */
                public void handleCallback(int i, String str) {
                    RetValue retValue = new RetValue();
                    retValue.retCode = i;
                    retValue.retMsg = str;
                    try {
                        iCustomCallback.onResponse(retValue);
                    } catch (RemoteException e) {
                        ClientLog.e(MessageController.TAG, "uploadImage-handleCallback Exception", e);
                    }
                }
            }.execute(new Void[0]);
            return true;
        } catch (Exception e) {
            ClientLog.e(TAG, "uploadImage Exception", e);
        }
    }

    public void uploadVideo(MiMessage miMessage) {
        if (miMessage == null || miMessage.body == null || !(miMessage.body instanceof VideoBody)) {
            ClientLog.d(TAG, "uploadVideo but some args is wrong");
            onUploadVideoResponse(-1, "your input has error", miMessage);
            return;
        }
        VideoBody videoBody = (VideoBody) miMessage.body;
        String str = videoBody.getUrl() != null ? videoBody.getUrl() : "";
        int length = videoBody.getLength();
        int size = videoBody.getSize();
        String str2 = videoBody.getThumbnailUrl() != null ? videoBody.getThumbnailUrl() : "";
        final byte[] content = videoBody.getContent();
        if (length < 500) {
            try {
                ClientLog.v(TAG, "VideoLen ceil=" + Math.ceil((double) (((float) length) / 1000.0f)));
                onUploadVideoResponse(-1, "video length less than 500ms", miMessage);
            } catch (Exception e) {
                ClientLog.e(TAG, "e", e);
                onUploadVideoResponse(-1, "exception " + e.getMessage(), miMessage);
            }
        } else {
            final Attachment attachment = new Attachment(this.mContext);
            attachment.localPath = str2;
            attachment.mimeType = AttachmentUtils.getMimeType(2, attachment.localPath);
            final Attachment attachment2 = new Attachment(this.mContext);
            attachment2.localPath = str;
            attachment2.duration = length;
            attachment2.fileSize = (long) (size * 1024);
            attachment2.mimeType = AttachmentUtils.getMimeType(4, attachment2.localPath);
            ClientLog.d(TAG, "uploadVideo start upload");
            final MiMessage miMessage2 = miMessage;
            new AsyncTask<Void, Void, Void>() {
                /* access modifiers changed from: protected */
                public void onPreExecute() {
                    super.onPreExecute();
                }

                /* access modifiers changed from: protected */
                public Void doInBackground(Void... voidArr) {
                    uploadThumbnail();
                    return null;
                }

                /* access modifiers changed from: private */
                public void uploadFile() {
                    if (!UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment2, new UploadCallBack(attachment2) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "uploadVideo success");
                            MiMessage miMessage = new MiMessage();
                            miMessage.bodyType = 3;
                            VideoBody videoBody = new VideoBody();
                            videoBody.setUrl(attachment2.getUrl());
                            videoBody.setLength(attachment2.getDuration());
                            videoBody.setSize((int) (attachment2.getFileSize() / 1024));
                            videoBody.setContent(content);
                            videoBody.setThumbnailUrl(attachment.getUrl());
                            miMessage.body = videoBody;
                            ClientLog.d(MessageController.TAG, "uploadVideo success url = " + attachment2.getUrl());
                            MessageController.this.onUploadVideoResponse(0, "success", miMessage);
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "uploadVideo failed, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            MessageController.this.onUploadVideoResponse(-1, "upload video task failed", miMessage2);
                        }
                    }, 4)) {
                        MessageController.this.onUploadVideoResponse(-1, "uploadVideo occur unkown error", miMessage2);
                    }
                }

                private void uploadThumbnail() {
                    if (!UploadFileLoader.getInstance().startUploadFile(MessageController.this.mContext, attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            ClientLog.d(MessageController.TAG, "uploadthumbnail success");
                            new AsyncTask<Void, Void, Void>() {
                                /* access modifiers changed from: protected */
                                public Void doInBackground(Void... voidArr) {
                                    AnonymousClass10.this.uploadFile();
                                    return null;
                                }
                            }.execute(new Void[0]);
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            ClientLog.e(MessageController.TAG, "uploadthumbnail failed, i=" + i + " Ks3Error=" + aVar.toString() + " s=" + str, th);
                            MessageController.this.onUploadVideoResponse(-1, "upload thumbnail task faied", miMessage2);
                        }
                    }, 2)) {
                        MessageController.this.onUploadVideoResponse(-1, "uploadThumbnail occur unknown error", miMessage2);
                    }
                }
            }.execute(new Void[]{null, null, null});
        }
    }

    @AnyThread
    public void uploadLogs(final boolean z, @NonNull final UploadLogParameter uploadLogParameter) {
        ClientLog.w(TAG, "prepare upload log, param:" + uploadLogParameter);
        if (this.uploadingLog) {
            String str = "another upload log task is processing, skip current request";
            ClientLog.w(TAG, str);
            onUploadLogsResponse(z, 8, str);
            return;
        }
        this.uploadingLog = true;
        rx.a.a((C0098a<T>) new C0098a<Boolean>() {
            public void call(e<? super Boolean> eVar) {
                eVar.onNext(Boolean.valueOf(MessageController.this.uploadLogs0(z, uploadLogParameter)));
                eVar.onCompleted();
            }
        }).b(rx.e.e.b()).b((e<? super T>) new e<Boolean>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                ClientLog.e(MessageController.TAG, "start upload log fail", th);
                MessageController.this.onUploadLogsResponse(z, -1, th.getMessage());
                MessageController.this.uploadingLog = false;
            }

            public void onNext(Boolean bool) {
                if (!bool.booleanValue()) {
                    MessageController.this.uploadingLog = false;
                } else {
                    ClientLog.w(MessageController.TAG, "start upload log ok");
                }
            }
        });
    }

    /* access modifiers changed from: private */
    @WorkerThread
    public boolean uploadLogs0(boolean z, UploadLogParameter uploadLogParameter) {
        ClientLog.w(TAG, "prepare upload log on thread");
        try {
            List<File> findLogDir = LogsManager.findLogDir(uploadLogParameter.getSubPath(), uploadLogParameter.getLimit());
            if (findLogDir.isEmpty()) {
                onUploadLogsResponse(z, 2, "log dir is empty!!!");
                return false;
            }
            for (File file : findLogDir) {
                if (file != null) {
                    ClientLog.d(TAG, "log file to be ziped: " + file.getName());
                }
            }
            try {
                File zipFile = LogsManager.getZipFile();
                if (!LogsManager.doZipDir(findLogDir, null, zipFile)) {
                    onUploadLogsResponse(z, 4, "zip failed!!!");
                    return false;
                } else if (uploadLogParameter.getMaxLength() > 0 && zipFile.length() > uploadLogParameter.getMaxLength()) {
                    onUploadLogsResponse(z, 5, String.format("zip file size: %d > threshold: %d", new Object[]{Long.valueOf(zipFile.length()), Long.valueOf(uploadLogParameter.getMaxLength())}));
                    return false;
                } else if (uploadLogParameter.isStillUploadWithoutWifi() || NetworkUtils.isWifi(this.mContext)) {
                    final String absolutePath = zipFile.getAbsolutePath();
                    Attachment attachment = new Attachment(this.mContext);
                    attachment.localPath = zipFile.getAbsolutePath();
                    attachment.fileSize = zipFile.length();
                    final boolean z2 = z;
                    final Attachment attachment2 = attachment;
                    final UploadLogParameter uploadLogParameter2 = uploadLogParameter;
                    boolean startUploadFile = UploadFileLoader.getInstance().startUploadFile(this.mContext, attachment, new UploadCallBack(attachment) {
                        public void onTaskSuccess(int i, Header[] headerArr) {
                            MessageController.this.onUploadLogsResponse(z2, 0, "onTaskSuccess zip localpath=" + absolutePath + " url=" + attachment2.getUrl());
                            UploadTask.notifyServerUploadResult("", uploadLogParameter2.getFeedbackMessage(), attachment2.getUrl());
                            MessageController.this.uploadingLog = false;
                        }

                        public void onTaskFailure(int i, a aVar, Header[] headerArr, String str, Throwable th) {
                            MessageController.this.onUploadLogsResponse(z2, 7, "onTaskFailure zip localpath=" + absolutePath + " ks3Error " + aVar.toString());
                            MessageController.this.uploadingLog = false;
                        }
                    }, 100);
                    if (startUploadFile) {
                        return startUploadFile;
                    }
                    onUploadLogsResponse(z, 6, "uploadLogs unknown error");
                    return startUploadFile;
                } else {
                    onUploadLogsResponse(z, 9, "no wifi connected");
                    return false;
                }
            } catch (IOException e) {
                ClientLog.d(TAG, "e", e);
                onUploadLogsResponse(z, 3, "getZipFile occur exception");
                return false;
            }
        } catch (ExceptionWithCode e2) {
            ClientLog.d(TAG, "find log dir fail", e2);
            onUploadLogsResponse(z, e2.getCode(), e2.getMessage());
            return false;
        }
    }

    public boolean destroy() throws RemoteException {
        ClientLog.w(TAG, "destroy");
        this.mGUid = null;
        this.mAppId = null;
        this.mHasLogin = false;
        if (this.mMiLinkClient != null) {
            this.mMiLinkClient.logoff();
        }
        this.mMiLinkClient = null;
        this.mMsgListener = null;
        return true;
    }

    /* access modifiers changed from: private */
    public void onUploadLogsResponse(boolean z, int i, String str) {
        if (!z) {
            ClientLog.d(TAG, "upload log result, code:" + i + ", msg:" + str);
        } else if (this.mMsgListener == null) {
            Log.w(TAG, "mMsgListener listener is null");
        } else {
            try {
                RetValue retValue = new RetValue();
                retValue.retCode = i;
                retValue.retMsg = str;
                this.mMsgListener.onUploadLogsResponse(retValue);
            } catch (RemoteException e) {
                ClientLog.e(TAG, "e", e);
            }
        }
    }

    /* access modifiers changed from: private */
    public void onUploadVideoResponse(int i, String str, MiMessage miMessage) {
        if (this.mMsgListener == null) {
            Log.w(TAG, "mMsgListener listener is null");
            return;
        }
        try {
            RetValue retValue = new RetValue();
            retValue.retCode = i;
            retValue.retMsg = str;
            this.mMsgListener.onUploadVideoResponse(retValue, miMessage);
        } catch (RemoteException e) {
            ClientLog.e(TAG, "e", e);
        }
    }

    public void downloadMediaFile(final int i, String str) {
        final String newFilePath;
        if (TextUtils.isEmpty(str)) {
            ClientLog.d(TAG, "downloadMediaFile, url is null");
            onDownloadMediaFileResponse(i, -1, "url is null");
            return;
        }
        if (MessageType.isVideo(i)) {
            newFilePath = AttachmentUtils.newVideoFilePath();
        } else if (MessageType.isImage(i)) {
            newFilePath = AttachmentUtils.newFilePath(".jpeg", 2);
        } else if (MessageType.isAudio(i)) {
            newFilePath = AttachmentUtils.newFilePath(".spx", 3);
        } else {
            onDownloadMediaFileResponse(i, -1, "messageType not match!");
            return;
        }
        final AnonymousClass14 r2 = new DownloadCallback() {
            public void onDownloadSuccess(String str) {
                ClientLog.d(MessageController.TAG, "download media file success, result = " + str);
                MessageController.this.onDownloadMediaFileResponse(i, 0, str);
            }

            public void onDownloadFailed(String str) {
                ClientLog.d(MessageController.TAG, "download meidia file failed, result = " + str);
                MessageController.this.onDownloadMediaFileResponse(i, -1, "downloadfailed");
            }
        };
        ClientLog.d(TAG, "try to download media file type=" + i + " and temp local path = " + newFilePath);
        final int i2 = i;
        final String str2 = str;
        new AsyncTask<Void, Void, String>() {
            /* access modifiers changed from: protected */
            public void onPreExecute() {
                super.onPreExecute();
            }

            /* access modifiers changed from: protected */
            public void onPostExecute(String str) {
                super.onPostExecute(str);
                if (TextUtils.isEmpty(str)) {
                    if (r2 != null) {
                        r2.onDownloadFailed(str);
                    }
                    ClientLog.v(MessageController.TAG, "downloadMediaFile failed, messageType=" + i2);
                } else if (r2 != null) {
                    r2.onDownloadSuccess(str);
                }
            }

            /* access modifiers changed from: protected */
            public String doInBackground(Void... voidArr) {
                File file = new File(newFilePath);
                ClientLog.d(MessageController.TAG, "downloadMediaFile start");
                HttpDownloader.downloadFile(str2, file, null, false);
                ClientLog.d(MessageController.TAG, "downloadMediaFile end ,local path = " + file.getPath());
                String str = file.exists() ? file.getPath() : "";
                ClientLog.d(MessageController.TAG, "downloadMediaFile end ,confirm local path = " + str);
                return str;
            }
        }.execute(new Void[0]);
    }

    /* access modifiers changed from: private */
    public void onDownloadMediaFileResponse(int i, int i2, String str) {
        if (this.mMsgListener == null) {
            Log.w(TAG, "mMsgListener listener is null");
            return;
        }
        try {
            RetValue retValue = new RetValue();
            retValue.retCode = i2;
            retValue.retMsg = str;
            this.mMsgListener.onDownloadMediaFileResponse(i, retValue);
        } catch (RemoteException e) {
            ClientLog.e(TAG, "e", e);
        }
    }

    public boolean sendChannelCheckMessage(long j, int i, String str) throws RemoteException {
        QueryMediaIdRequest build = QueryMediaIdRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setConferenceId(j).setFromGuid(str).build();
        ClientLog.v(TAG, "sendChannelCheckMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_SIGNAL_CHANNEL_CHECK);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    QueryMediaIdResponse parseFrom = QueryMediaIdResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "sendChannelCheckMessage response rsp=" + parseFrom.toString());
                        RetValue retValue = new RetValue();
                        retValue.retCode = parseFrom.getRet();
                        retValue.retMsg = parseFrom.getErrorMsg();
                        try {
                            MessageController.this.mMsgListener.onReceiveSignalMessage(100, retValue, parseFrom.getMediaId(), parseFrom.getMuid(), parseFrom.getMediaMuid());
                        } catch (RemoteException e) {
                            ClientLog.e(MessageController.TAG, "e", e);
                        }
                    } else {
                        ClientLog.d(MessageController.TAG, "sendChannelCheckMessage response rsp=null");
                    }
                } catch (InvalidProtocolBufferException e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }

            public void onDataSendFailed(int i, String str) {
                MessageController.this.processSendSignalResponse(100, null, MessageController.MILINK_ERROR, "");
            }
        });
        return false;
    }

    public boolean getConferenceMember(long j) {
        QueryConferenceMemberReq build = QueryConferenceMemberReq.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setConferenceId(j).build();
        ClientLog.v(TAG, "getConferenceMember request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_SIGNAL_CONFERENCE_MEMBERS);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, 3000, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    QueryConferenceMemberRsp parseFrom = QueryConferenceMemberRsp.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "getConferenceMember QueryConferenceMemberRsp rsp=" + parseFrom.toString());
                        MessageController.this.onReceiveConferenceMembers(101, 0, null, parseFrom.getMemebersList());
                        return;
                    }
                    ClientLog.d(MessageController.TAG, "getConferenceMember QueryConferenceMemberRsp rsp is null");
                } catch (InvalidProtocolBufferException e) {
                    ClientLog.e(MessageController.TAG, "e", e);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.v(MessageController.TAG, "getConferenceMember data send failed. milink error: " + i);
            }
        });
        return true;
    }

    public boolean getGuidfromMediaId(final int i, int i2) {
        if (TextUtils.isEmpty(this.mAppId)) {
            ClientLog.e(TAG, "AppId is empty when getGuidfromMediaId, channel:" + i + ", mediaId:" + i2);
        } else {
            ClientLog.w(TAG, "getGuidfromMediaId");
            QueryMuidReq build = QueryMuidReq.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).addMediaMuid(i2).build();
            ClientLog.v(TAG, "getGuidfromMediaId request=" + build.toString());
            PacketData packetData = new PacketData();
            packetData.setCommand(MnsCommand.OPENSDK_SIGNAL_MIDEIAID_TO_GUID);
            packetData.setData(build.toByteArray());
            packetData.setNeedCached(true);
            this.mMiLinkClient.sendAsync(packetData, 3000, new ResponseListener() {
                public void onDataSendSuccess(int i, PacketData packetData) {
                    try {
                        QueryMuidRsp parseFrom = QueryMuidRsp.parseFrom(packetData.getData());
                        if (parseFrom != null) {
                            ClientLog.v(MessageController.TAG, "QueryConferenceMemberRsp messageResponse=" + parseFrom.toString());
                            RetValue retValue = new RetValue();
                            retValue.retCode = parseFrom.getRet();
                            retValue.retMsg = parseFrom.getErrorMsg();
                            MessageController.this.onReceiveConferenceMembers(102, i, retValue, parseFrom.getMediaIdsList());
                            return;
                        }
                        ClientLog.v(MessageController.TAG, "QueryConferenceMemberRsp response is null");
                    } catch (InvalidProtocolBufferException e) {
                        ClientLog.e(MessageController.TAG, "e", e);
                    }
                }

                public void onDataSendFailed(int i, String str) {
                    ClientLog.v(MessageController.TAG, "getGuidfromMediaId onDataSendFailed i=" + i + " s=" + str);
                }
            });
        }
        return false;
    }

    @Nullable
    @WorkerThread
    public PacketData sendRequestSync(@NonNull PacketData packetData, int i) {
        if (this.mMiLinkClient != null) {
            return this.mMiLinkClient.sendSync(packetData, i);
        }
        ClientLog.d(TAG, "send sync failed for mMiLinkClient is null");
        return null;
    }

    public void sendRequestAsync(@NonNull PacketData packetData, int i, @Nullable ResponseListener responseListener) {
        if (this.mMiLinkClient == null) {
            ClientLog.d(TAG, "send async failed for mMiLinkClient is null");
        } else {
            this.mMiLinkClient.sendAsync(packetData, i, responseListener);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void processSendResponse(int i, MiMessage miMessage, int i2, String str) {
        RetValue retValue = new RetValue();
        retValue.retCode = i2;
        retValue.retMsg = str;
        if (this.mMsgListener != null) {
            try {
                this.mMsgListener.onDataSendResponse(i, retValue, miMessage);
            } catch (RemoteException e) {
                ClientLog.e(TAG, "e", e);
            }
        }
        return;
    }

    /* access modifiers changed from: private */
    public void processSendSignalResponse(int i, MiMessage miMessage, int i2, String str) {
        RetValue retValue = new RetValue();
        retValue.retCode = i2;
        retValue.retMsg = str;
        if (this.mMsgListener != null) {
            try {
                this.mMsgListener.onDataSendResponse(i, retValue, miMessage);
            } catch (RemoteException e) {
                ClientLog.e(TAG, "e", e);
            }
        }
    }

    /* access modifiers changed from: private */
    @NonNull
    public MiMessage constructSendMessage(@NonNull MiMessage miMessage, long j, int i) {
        MiMessage miMessage2 = new MiMessage();
        miMessage2.msgId = miMessage.msgId;
        miMessage2.msgSeq = j;
        miMessage2.sendTime = i;
        miMessage2.from = miMessage.from;
        miMessage2.to = miMessage.to;
        miMessage2.body = miMessage.body;
        miMessage2.bodyType = miMessage.bodyType;
        return miMessage2;
    }

    /* access modifiers changed from: private */
    public boolean syncUserMessage() {
        if (TextUtils.isEmpty(this.mAppId) || TextUtils.isEmpty(this.mGUid) || this.mMiLinkClient == null) {
            ClientLog.e(TAG, "syncUserMessage but some parameters is null, return");
            return false;
        }
        SyncUserMsgRequest build = SyncUserMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setCurrGuid(this.mGUid).setLimit(this.mSyncLimit).setMaxRecvSeq(BusinessDBUtils.getSingleMaxMsgSeq()).build();
        ClientLog.v(TAG, "syncUserMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_USERMSG_SYNC);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData);
        return true;
    }

    public boolean syncGroupMessage(String str) {
        if (TextUtils.isEmpty(str) || this.mMiLinkClient == null) {
            ClientLog.d(TAG, "syncGroupMsg but some parametes is null, return");
            return false;
        }
        SyncGroupMsgRequest build = SyncGroupMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setCurrGuid(this.mGUid).setTargetGgid(str).setLimit(this.mSyncLimit).setMaxRecvSeq(BusinessDBUtils.getGroupMaxMsgSeq(str)).build();
        ClientLog.v(TAG, "syncGroupMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_GROUPMSG_SYNC);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData);
        return true;
    }

    public boolean pullOldUserMessage(long j, int i) {
        return pullOldUserMessage(j, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    PullOldUserMsgResponse parseFrom = PullOldUserMsgResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "onPullOldUserMessageResponse messageResponse=" + parseFrom.toString());
                        ArrayList arrayList = new ArrayList();
                        int msgsCount = parseFrom.getMsgsCount();
                        for (int i2 = 0; i2 < msgsCount; i2++) {
                            arrayList.add(MessageController.parseMessage(parseFrom.getMsgs(i2)));
                        }
                        if (MessageController.this.mMsgListener != null) {
                            try {
                                MessageController.this.mMsgListener.onReceiveOldUserMessage(arrayList);
                            } catch (RemoteException e) {
                                ClientLog.e(MessageController.TAG, "transform via onReceiveOldUserMessage failed", e);
                            }
                        }
                    } else {
                        ClientLog.d(MessageController.TAG, "pullOldUserMessage rsp is null");
                    }
                } catch (InvalidProtocolBufferException e2) {
                    ClientLog.e(MessageController.TAG, "parse PullOldUserMsgResponse failed", e2);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.e(MessageController.TAG, "pullOldUserMessage failed, errorCode:" + i + ", msg:" + str);
            }
        });
    }

    public boolean pullOldUserMessage(long j, int i, ResponseListener responseListener) {
        if (j < 0 || i <= 0 || this.mMiLinkClient == null) {
            ClientLog.d(TAG, "pullOldUserMessage but some parameters is null, return");
            return false;
        }
        PullOldUserMsgRequest build = PullOldUserMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setCurrGuid(this.mGUid).setLimit(i).setStartMsgSeq(j).build();
        ClientLog.v(TAG, "pullOldUserMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_USERMSG_PULLOLD);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, 15000, responseListener);
        return true;
    }

    public boolean pullOldGroupMessage(final String str, long j, int i) {
        return pullOldGroupMessage(str, j, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                try {
                    PullOldGroupMsgResponse parseFrom = PullOldGroupMsgResponse.parseFrom(packetData.getData());
                    if (parseFrom != null) {
                        ClientLog.v(MessageController.TAG, "onPullOldGroupMessageResponse messageResponse=" + parseFrom.toString());
                        ArrayList arrayList = new ArrayList();
                        int msgsCount = parseFrom.getMsgsCount();
                        for (int i2 = 0; i2 < msgsCount; i2++) {
                            arrayList.add(MessageController.parseMessage(parseFrom.getMsgs(i2)));
                        }
                        if (MessageController.this.mMsgListener != null) {
                            try {
                                MessageController.this.mMsgListener.onReceiveOldGroupMessage(str, arrayList);
                            } catch (RemoteException e) {
                                ClientLog.e(MessageController.TAG, "e", e);
                            }
                        }
                    } else {
                        ClientLog.d(MessageController.TAG, "pullOldGroupMsg rsp is null");
                    }
                } catch (InvalidProtocolBufferException e2) {
                    ClientLog.e(MessageController.TAG, "e", e2);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.v(MessageController.TAG, "pullOldGroupMessage failed");
            }
        });
    }

    public boolean pullOldGroupMessage(String str, long j, int i, ResponseListener responseListener) {
        if (TextUtils.isEmpty(str) || j < 0 || i <= 0 || this.mMiLinkClient == null) {
            ClientLog.e(TAG, "pullOldGroupMessage but some parameters is null, return");
            return false;
        }
        PullOldGroupMsgRequest build = PullOldGroupMsgRequest.newBuilder().setAppid(Integer.valueOf(this.mAppId).intValue()).setCurrGuid(this.mGUid).setTargetGgid(str).setLimit(i).setStartMsgSeq(j).build();
        ClientLog.v(TAG, "pullOldGroupMessage request=" + build.toString());
        PacketData packetData = new PacketData();
        packetData.setCommand(MnsCommand.OPENSDK_GROUPMSG_PULLOLD);
        packetData.setData(build.toByteArray());
        packetData.setNeedCached(true);
        this.mMiLinkClient.sendAsync(packetData, 15000, responseListener);
        return true;
    }

    public void onReceiveGameMessage(int i, MiMessage miMessage) {
        if (this.mMsgListener != null) {
            try {
                this.mMsgListener.onReceiveMessage(i, miMessage);
            } catch (RemoteException e) {
                ClientLog.e(TAG, "e", e);
            }
        }
    }

    public void onReceiveCustomSignalMessage(int i, RetValue retValue, long j, long j2, int i2) {
        if (this.mMsgListener != null) {
            switch (i) {
                case 100:
                    try {
                        this.mMsgListener.onReceiveSignalMessage(i, retValue, j, j2, i2);
                        return;
                    } catch (RemoteException e) {
                        ClientLog.e(TAG, "e", e);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: private */
    public void onReceiveConferenceMembers(int i, int i2, RetValue retValue, List<MediaUserId> list) {
        if (this.mMsgListener != null) {
            try {
                ArrayList arrayList = new ArrayList();
                for (int i3 = 0; i3 < list.size(); i3++) {
                    MediaUserId mediaUserId = (MediaUserId) list.get(i3);
                    if (mediaUserId != null) {
                        ConferenceMember conferenceMember = new ConferenceMember();
                        conferenceMember.gUid = mediaUserId.getGuid();
                        conferenceMember.mediaMuid = mediaUserId.getMediaMuid();
                        conferenceMember.mUid = mediaUserId.getMuid();
                        arrayList.add(conferenceMember);
                    }
                }
                this.mMsgListener.onReceiveConferenceMembers(i, i2, retValue, arrayList);
            } catch (RemoteException e) {
                ClientLog.e(TAG, "transform message via aidl method onReceiveConferenceMembers failed", e);
            }
        }
    }

    @Nullable
    @CheckResult
    public static MiMessage parseMessage(@NonNull Message message) {
        try {
            MiMessage miMessage = new MiMessage();
            miMessage.msgId = message.getMsgId();
            miMessage.msgSeq = message.getMsgSeq();
            miMessage.sendTime = message.getSentTime();
            miMessage.from = message.getFromGuid();
            miMessage.to = message.getTargetId();
            miMessage.bodyType = message.getBodyType();
            switch (message.getBodyType()) {
                case 0:
                    CustomBody customBody = new CustomBody();
                    customBody.setData(message.getBody().toByteArray());
                    miMessage.body = customBody;
                    return miMessage;
                case 1:
                    TextBody textBody = new TextBody();
                    textBody.decodeBody(message.getBody().toByteArray());
                    miMessage.body = textBody;
                    return miMessage;
                case 2:
                    AudioBody audioBody = new AudioBody();
                    audioBody.decodeBody(message.getBody().toByteArray());
                    miMessage.body = audioBody;
                    return miMessage;
                case 3:
                    VideoBody videoBody = new VideoBody();
                    videoBody.decodeBody(message.getBody().toByteArray());
                    miMessage.body = videoBody;
                    return miMessage;
                default:
                    DefaultBody defaultBody = new DefaultBody();
                    defaultBody.setTips("version too low, can not recognize msg");
                    defaultBody.setContent(message.getBody().toByteArray());
                    miMessage.body = defaultBody;
                    return miMessage;
            }
        } catch (InvalidProtocolBufferException e) {
            ClientLog.e(TAG, "parseMessage failed, cause parse PB failed", e);
        } catch (Throwable th) {
            ClientLog.e(TAG, "parseMessage failed, unexpected error", th);
        }
        return null;
    }

    private boolean checkMessage(MiMessage miMessage) {
        return miMessage != null && !TextUtils.isEmpty(this.mAppId) && !TextUtils.isEmpty(this.mGUid) && this.mGUid.equals(miMessage.from);
    }

    @BinderThread
    public void scribe(String str) {
        ClientLog.d(TAG, "data to be scribed:" + str);
        if (TextUtils.isEmpty(str)) {
            ClientLog.e(TAG, "data to be scribed is empty");
            return;
        }
        int addNew = StatDao.getInstance().addNew(str);
        if (addNew > 0) {
            StatWorker.parseJsonAndSend(str, addNew);
        }
    }

    public int scribe(@NonNull PacketData packetData, int i) {
        if (this.mMiLinkClient == null) {
            ClientLog.e(TAG, "milink client is null");
            return -1;
        }
        PacketData sendSync = this.mMiLinkClient.sendSync(packetData, 5000);
        if (sendSync == null) {
            return -2;
        }
        switch (i) {
            case 1:
                try {
                    int ret = ((AgoralogRsp) new AgoraLog().toPbRsp(sendSync)).getRet();
                    if (ret == 0) {
                        return ret;
                    }
                    ClientLog.w(TAG, "send AgoraLog fail, code:" + ret);
                    return ret;
                } catch (InvalidProtocolBufferException e) {
                    ClientLog.e(TAG, "parse to PB failed", e);
                    return -3;
                }
            case 2:
                try {
                    int ret2 = ((CommonlogRsp) new CommonLog().toPbRsp(sendSync)).getRet();
                    if (ret2 == 0) {
                        return ret2;
                    }
                    ClientLog.w(TAG, "send CommonaLog fail, code:" + ret2);
                    return ret2;
                } catch (Exception e2) {
                    ClientLog.e(TAG, "parse to PB failed", e2);
                    return -3;
                }
            default:
                ClientLog.e(TAG, "unrecognized scribe type:" + i);
                return -4;
        }
    }

    public void sendAsyncWithResponse(final PacketData packetData, final int i, final ISendCallback iSendCallback) throws RemoteException {
        if (this.mMiLinkClient == null) {
            ClientLog.e(TAG, "sendAsyncWithResponse failed: mMiLinkClient = null,delay to call ");
            if (Looper.myLooper() == null) {
                Looper.prepare();
            }
            new Handler().postDelayed(new Runnable() {
                public void run() {
                    try {
                        MessageController.this.sendAsyncWithResponse(packetData, i, iSendCallback);
                    } catch (RemoteException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            }, 2000);
            return;
        }
        this.mMiLinkClient.sendAsync(packetData, i, new ResponseListener() {
            public void onDataSendSuccess(int i, PacketData packetData) {
                ClientLog.v(MessageController.TAG, "sendAsyncWithResponse Success , retcode: " + i);
                try {
                    iSendCallback.onRsponse(MsgPacketData.parseFromMilink(packetData));
                } catch (RemoteException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }

            public void onDataSendFailed(int i, String str) {
                ClientLog.v(MessageController.TAG, "sendAsyncWithResponse Failed , retcode: " + i + " error: " + str);
                try {
                    iSendCallback.onFailed(i, str);
                } catch (RemoteException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }
}
