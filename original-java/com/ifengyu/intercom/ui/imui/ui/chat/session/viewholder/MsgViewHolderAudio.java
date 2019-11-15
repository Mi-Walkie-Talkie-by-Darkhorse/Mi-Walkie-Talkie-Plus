package com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder;

import android.annotation.SuppressLint;
import android.graphics.drawable.AnimationDrawable;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.im.DB.DBInterface;
import com.ifengyu.im.imservice.model.AudioAttachment;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.media.BaseAudioControl.AudioControlListener;
import com.ifengyu.intercom.ui.imui.ui.chat.media.MessageAudioControl;
import com.ifengyu.intercom.ui.imui.ui.chat.media.Playable;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.k;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.recyclerview.adapter.a;

public class MsgViewHolderAudio extends MsgViewHolderBase {
    public static final int CLICK_TO_PLAY_AUDIO_DELAY = 500;
    private static final String TAG = MsgViewHolderAudio.class.getSimpleName();
    private ImageView animationView;
    /* access modifiers changed from: private */
    public MessageAudioControl audioControl;
    private View containerView;
    private TextView durationLabel;
    private DBInterface mDBInterface = DBInterface.instance();
    private AudioControlListener onPlayListener = new AudioControlListener() {
        public void updatePlayingProgress(Playable playable, long j) {
            if (MsgViewHolderAudio.this.isTheSame(MsgViewHolderAudio.this.mMessage.getFromId()) && j > playable.getDuration()) {
            }
        }

        public void onAudioControllerReady(Playable playable) {
            if (MsgViewHolderAudio.this.isTheSame(MsgViewHolderAudio.this.mMessage.getFromId())) {
                MsgViewHolderAudio.this.play();
            }
        }

        public void onEndPlay(Playable playable) {
            if (MsgViewHolderAudio.this.isTheSame(MsgViewHolderAudio.this.mMessage.getFromId())) {
                MsgViewHolderAudio.this.stop();
                MsgViewHolderAudio.this.audioControl.stopHeadset();
            }
        }
    };
    private View unreadIndicator;

    public MsgViewHolderAudio(a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: protected */
    public int getContentResId() {
        return R.layout.im_message_item_audio;
    }

    /* access modifiers changed from: protected */
    public void inflateContentView() {
        this.durationLabel = (TextView) findViewById(R.id.message_item_audio_duration);
        this.containerView = findViewById(R.id.message_item_audio_container);
        this.unreadIndicator = findViewById(R.id.message_item_audio_unread_indicator);
        this.animationView = (ImageView) findViewById(R.id.message_item_audio_playing_animation);
        this.animationView.setBackgroundResource(0);
        this.audioControl = MessageAudioControl.getInstance();
    }

    /* access modifiers changed from: protected */
    public void bindContentView() {
        layoutByDirection();
        refreshStatus();
        controlPlaying();
    }

    /* access modifiers changed from: protected */
    public void onItemClick() {
        if (this.mMessage.getStatus() != 3) {
            this.unreadIndicator.setVisibility(8);
        }
        initPlayAnim();
        this.audioControl.startPlayAudioDelay(500, this.mMessage, this.onPlayListener);
        this.audioControl.setPlayNext(true, getMsgAdapter(), this.mMessage);
    }

    private void layoutByDirection() {
        if (isReceivedMessage()) {
            setGravity(this.animationView, 19);
            setGravity(this.durationLabel, 21);
            this.containerView.setBackgroundResource(R.drawable.im_message_item_left_selector);
            this.containerView.setPadding(l.a(12.0f), l.a(8.0f), l.a(10.0f), l.a(8.0f));
            this.animationView.setBackgroundResource(R.drawable.im_audio_animation_list_left);
            this.durationLabel.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            return;
        }
        setGravity(this.animationView, 21);
        setGravity(this.durationLabel, 19);
        this.unreadIndicator.setVisibility(8);
        this.containerView.setBackgroundResource(R.drawable.im_message_item_right_selector);
        this.containerView.setPadding(l.a(10.0f), l.a(8.0f), l.a(12.0f), l.a(8.0f));
        this.animationView.setBackgroundResource(R.drawable.im_audio_animation_list_right);
        this.durationLabel.setTextColor(-1);
    }

    private void refreshStatus() {
        AudioAttachment audioAttachment = (AudioAttachment) this.mMessage.getAttachment();
        int status = this.mMessage.getStatus();
        int attachStatus = this.mMessage.getAttachStatus();
        c.b(TAG, "refreshStatus:" + status);
        if (TextUtils.isEmpty(audioAttachment.getUrl())) {
            if (attachStatus == 3 || status == 2) {
                this.alertButton.setVisibility(0);
            } else {
                this.alertButton.setVisibility(8);
            }
        }
        if (status == 0) {
            this.progressBar.setVisibility(0);
        } else {
            this.progressBar.setVisibility(8);
        }
        if (!isReceivedMessage() || status != 4) {
            this.unreadIndicator.setVisibility(8);
        } else {
            this.unreadIndicator.setVisibility(0);
        }
    }

    private void controlPlaying() {
        long duration = ((AudioAttachment) this.mMessage.getAttachment()).getDuration();
        setAudioBubbleWidth(duration);
        this.durationLabel.setTag(this.mMessage.getFromId());
        updateTime(duration);
        if (!isMessagePlaying(this.audioControl, this.mMessage)) {
            if (this.audioControl.getAudioControlListener() != null && this.audioControl.getAudioControlListener().equals(this.onPlayListener)) {
                this.audioControl.changeAudioControlListener(null);
            }
            stop();
            return;
        }
        this.audioControl.changeAudioControlListener(this.onPlayListener);
        play();
    }

    /* access modifiers changed from: protected */
    public boolean isMessagePlaying(MessageAudioControl messageAudioControl, MessageEntity messageEntity) {
        if (messageAudioControl.getPlayingAudio() == null || !messageAudioControl.getPlayingAudio().isTheSame(messageEntity)) {
            return false;
        }
        return true;
    }

    @SuppressLint({"SetTextI18n"})
    private void updateTime(long j) {
        long a = k.a(j);
        if (a >= 0) {
            this.durationLabel.setText(a + "\"");
        } else {
            this.durationLabel.setText("");
        }
    }

    private void setAudioBubbleWidth(long j) {
        int calculateBubbleWidth = calculateBubbleWidth(k.a(j), 60);
        LayoutParams layoutParams = this.containerView.getLayoutParams();
        layoutParams.width = calculateBubbleWidth;
        this.containerView.setLayoutParams(layoutParams);
    }

    private int calculateBubbleWidth(long j, int i) {
        int audioMaxEdge = getAudioMaxEdge();
        int audioMinEdge = getAudioMinEdge();
        int atan = j <= 0 ? audioMinEdge : (j <= 0 || j > ((long) i)) ? audioMaxEdge : (int) ((((double) (audioMaxEdge - audioMinEdge)) * 0.6366197723675814d * Math.atan(((double) j) / 10.0d)) + ((double) audioMinEdge));
        if (atan < audioMinEdge) {
            return audioMinEdge;
        }
        if (atan > audioMaxEdge) {
            return audioMaxEdge;
        }
        return atan;
    }

    public static int getAudioMaxEdge() {
        return (int) (0.6d * ((double) l.h()));
    }

    public static int getAudioMinEdge() {
        return (int) (0.1875d * ((double) l.h()));
    }

    /* access modifiers changed from: private */
    public void play() {
        if (this.animationView.getBackground() instanceof AnimationDrawable) {
            ((AnimationDrawable) this.animationView.getBackground()).start();
        }
    }

    /* access modifiers changed from: private */
    public void stop() {
        if (this.animationView.getBackground() instanceof AnimationDrawable) {
            ((AnimationDrawable) this.animationView.getBackground()).stop();
            endPlayAnim();
        }
    }

    private void initPlayAnim() {
        if (isReceivedMessage()) {
            this.animationView.setBackgroundResource(R.drawable.im_audio_animation_list_left);
        } else {
            this.animationView.setBackgroundResource(R.drawable.im_audio_animation_list_right);
        }
    }

    private void endPlayAnim() {
        if (isReceivedMessage()) {
            this.animationView.setBackgroundResource(R.drawable.intercom_icon_voice_black_all);
        } else {
            this.animationView.setBackgroundResource(R.drawable.intercom_icon_voice_white_all);
        }
    }

    /* access modifiers changed from: private */
    public boolean isTheSame(String str) {
        return !TextUtils.isEmpty(str) && str.equals(this.durationLabel.getTag().toString());
    }

    /* access modifiers changed from: protected */
    public int leftBackground() {
        return 0;
    }

    /* access modifiers changed from: protected */
    public int rightBackground() {
        return 0;
    }
}
