package com.ifengyu.intercom.ui.imui.ui.chat.media;

import android.content.Context;
import android.widget.Toast;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.imservice.audio.StorageUtil;
import com.ifengyu.im.imservice.model.AudioAttachment;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.ui.imui.ui.chat.media.BaseAudioControl.AudioControlListener;
import com.ifengyu.intercom.ui.imui.ui.chat.media.BaseAudioControl.BasePlayerListener;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.recyclerview.adapter.a;
import com.liulishuo.filedownloader.i;
import com.liulishuo.filedownloader.m;
import com.liulishuo.filedownloader.r;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.util.List;

public class MessageAudioControl extends BaseAudioControl<MessageEntity> {
    private static MessageAudioControl mMessageAudioControl = null;
    /* access modifiers changed from: private */
    public a mAdapter;
    /* access modifiers changed from: private */
    public boolean mIsNeedPlayNext = false;
    /* access modifiers changed from: private */
    public MessageEntity mItem = null;

    private MessageAudioControl(Context context) {
        super(context, true);
    }

    public static MessageAudioControl getInstance() {
        if (mMessageAudioControl == null) {
            synchronized (MessageAudioControl.class) {
                if (mMessageAudioControl == null) {
                    mMessageAudioControl = new MessageAudioControl(l.a());
                }
            }
        }
        return mMessageAudioControl;
    }

    /* access modifiers changed from: protected */
    public void setOnPlayListener(Playable playable, AudioControlListener audioControlListener) {
        this.audioControlListener = audioControlListener;
        AnonymousClass1 r0 = new BasePlayerListener(this.currentAudioPlayer, playable) {
            public void onInterrupt() {
                if (checkAudioPlayerValid()) {
                    super.onInterrupt();
                    MessageAudioControl.this.cancelPlayNext();
                }
            }

            public void onError(String str) {
                if (checkAudioPlayerValid()) {
                    super.onError(str);
                    MessageAudioControl.this.cancelPlayNext();
                }
            }

            public void onCompletion() {
                if (checkAudioPlayerValid()) {
                    MessageAudioControl.this.resetAudioController(this.listenerPlayingPlayable);
                    boolean z = false;
                    if (!(!MessageAudioControl.this.mIsNeedPlayNext || MessageAudioControl.this.mAdapter == null || MessageAudioControl.this.mItem == null)) {
                        z = MessageAudioControl.this.playNextAudio(MessageAudioControl.this.mAdapter, MessageAudioControl.this.mItem);
                    }
                    if (!z) {
                        if (this.audioControlListener != null) {
                            this.audioControlListener.onEndPlay(MessageAudioControl.this.currentPlayable);
                        }
                        MessageAudioControl.this.playSuffix();
                    }
                }
            }
        };
        r0.setAudioControlListener(audioControlListener);
        this.currentAudioPlayer.setOnPlayListener(r0);
    }

    public MessageEntity getPlayingAudio() {
        if (!isPlayingAudio() || !AudioMessagePlayable.class.isInstance(this.currentPlayable)) {
            return null;
        }
        return ((AudioMessagePlayable) this.currentPlayable).getMessage();
    }

    public void startPlayAudioDelay(long j, MessageEntity messageEntity, AudioControlListener audioControlListener, int i) {
        AudioAttachment audioAttachment = (AudioAttachment) messageEntity.getAttachment();
        if (audioAttachment == null || !audioAttachment.getUrl().startsWith(Http.PROTOCOL_PREFIX)) {
            startPlayAudio(messageEntity, audioControlListener, i, true, j);
            return;
        }
        downloadMessage(this.mAdapter, messageEntity, audioControlListener, i, true, j);
    }

    /* access modifiers changed from: private */
    public void startPlayAudio(MessageEntity messageEntity, AudioControlListener audioControlListener, int i, boolean z, long j) {
        if (StorageUtil.isExternalStorageExist()) {
            AudioAttachment audioAttachment = (AudioAttachment) messageEntity.getAttachment();
            if (audioAttachment == null || !audioAttachment.getUrl().startsWith(Http.PROTOCOL_PREFIX)) {
                if (startAudio(new AudioMessagePlayable(messageEntity), audioControlListener, i, z, j) && isUnreadAudioMessage(messageEntity)) {
                    messageEntity.setStatus(3);
                    DBInterface.instance().insertOrUpdateMessage(messageEntity);
                    return;
                }
                return;
            }
            downloadMessage(this.mAdapter, messageEntity, audioControlListener, i, true, j);
            return;
        }
        Toast.makeText(this.mContext, "SD卡不存在", 0).show();
    }

    /* access modifiers changed from: private */
    public boolean playNextAudio(a aVar, MessageEntity messageEntity) {
        int i;
        List data = aVar.getData();
        int i2 = 0;
        while (true) {
            if (i2 >= data.size()) {
                i2 = 0;
                break;
            } else if (((MessageEntity) data.get(i2)).equals(messageEntity)) {
                break;
            } else {
                i2++;
            }
        }
        while (true) {
            i2++;
            if (i2 >= data.size()) {
                i = -1;
                break;
            } else if (isUnreadAudioMessage((MessageEntity) data.get(i2))) {
                i = i2;
                break;
            }
        }
        if (i == -1) {
            cancelPlayNext();
            return false;
        }
        MessageEntity messageEntity2 = (MessageEntity) data.get(i);
        AudioAttachment audioAttachment = (AudioAttachment) messageEntity2.getAttachment();
        if (mMessageAudioControl == null || audioAttachment == null) {
            return false;
        }
        if (messageEntity2.getAttachStatus() != 2) {
            downloadMessage(aVar, messageEntity2, null, getCurrentAudioStreamType(), false, 0);
            return false;
        }
        if (messageEntity2.getStatus() != 3) {
            messageEntity2.setStatus(3);
            DBInterface.instance().insertOrUpdateMessage(messageEntity2);
        }
        mMessageAudioControl.startPlayAudio(messageEntity2, null, getCurrentAudioStreamType(), false, 0);
        this.mItem = (MessageEntity) data.get(i);
        aVar.notifyDataSetChanged();
        return true;
    }

    /* access modifiers changed from: private */
    public void cancelPlayNext() {
        setPlayNext(false, null, null);
    }

    public void setPlayNext(boolean z, a aVar, MessageEntity messageEntity) {
        this.mIsNeedPlayNext = z;
        this.mAdapter = aVar;
        this.mItem = messageEntity;
    }

    public void stopAudio() {
        super.stopAudio();
    }

    public boolean isUnreadAudioMessage(MessageEntity messageEntity) {
        if (messageEntity.getMsgType() == 2 && messageEntity.getDirect() == 1 && messageEntity.getAttachStatus() == 2 && messageEntity.getStatus() != 3) {
            return true;
        }
        return false;
    }

    public void downloadMessage(a aVar, MessageEntity messageEntity, AudioControlListener audioControlListener, int i, boolean z, long j) {
        final AudioControlListener audioControlListener2 = audioControlListener;
        final int i2 = i;
        final boolean z2 = z;
        final long j2 = j;
        r.a().a(((AudioAttachment) messageEntity.getAttachment()).getUrl()).a((Object) messageEntity).a((i) new m() {
            /* access modifiers changed from: protected */
            public void blockComplete(com.liulishuo.filedownloader.a aVar) {
                super.blockComplete(aVar);
                MessageEntity messageEntity = (MessageEntity) aVar.t();
                ((AudioAttachment) messageEntity.getAttachment()).setUrl(aVar.h());
                messageEntity.setAttachStatus(2);
                DBInterface.instance().insertOrUpdateMessage(messageEntity);
            }

            /* access modifiers changed from: protected */
            public void completed(com.liulishuo.filedownloader.a aVar) {
                super.completed(aVar);
                MessageAudioControl.this.startPlayAudio((MessageEntity) aVar.t(), audioControlListener2, i2, z2, j2);
            }
        }).c();
    }

    public void destroy() {
        stopAudio();
        this.mAdapter = null;
        this.audioControlListener = null;
        this.currentAudioPlayer = null;
        this.currentPlayable = null;
    }
}
