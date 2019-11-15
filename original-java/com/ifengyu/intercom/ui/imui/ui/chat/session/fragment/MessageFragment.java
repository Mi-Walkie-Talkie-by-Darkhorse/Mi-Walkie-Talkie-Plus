package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.media.AudioManager;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.event.ChatEvent;
import com.ifengyu.im.imservice.event.ChatEvent.Event;
import com.ifengyu.im.imservice.event.MessageHistoryEvent;
import com.ifengyu.im.imservice.event.PriorityEvent;
import com.ifengyu.im.imservice.manager.IMContactManager;
import com.ifengyu.im.imservice.manager.IMGroupManager;
import com.ifengyu.im.imservice.manager.IMLoginManager;
import com.ifengyu.im.imservice.manager.IMUnreadMsgManager;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.services.AudioRecordAdapter;
import com.ifengyu.im.imservice.services.MessageObserverHelper;
import com.ifengyu.im.imservice.services.MessageService;
import com.ifengyu.im.protobuf.helper.EntityChangeEngine;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.imui.ui.chat.Extras;
import com.ifengyu.intercom.ui.imui.ui.chat.dialog.UserInfoDialog.Builder;
import com.ifengyu.intercom.ui.imui.ui.chat.media.MessageAudioControl;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.Container;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MessageListPanelEx;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.ModuleProxy;
import com.ifengyu.library.util.c;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import java.util.Timer;
import java.util.TimerTask;

public class MessageFragment extends BaseFragment implements OnTouchListener, ModuleProxy {
    public static final int BODY_TYPE_AUDIO = 2;
    public static final int BODY_TYPE_CUSTOM = 0;
    public static final int BODY_TYPE_TEXT = 1;
    public static final int CHANNEL_GROUP = 3;
    public static final int CHANNEL_ROOM = 2;
    public static final int CHANNEL_USER = 1;
    public static final long MAX_SOUND_RECORD_TIME = 60000;
    private static final int TIME_OUT = 10000;
    private boolean PTTDown = false;
    private boolean cancelled = false;
    private MessageEntity mAnchor;
    private AudioManager mAudioManager;
    private AudioRecordAdapter mAudioRecordListener = new AudioRecordAdapter() {
        public void onRecordInitializationFailed() {
        }

        public void onAudioCoderInitializationFailed() {
        }

        public void onRecordInitializationSucceed() {
        }

        public void onRecordInitializationCancelled() {
        }

        public void onRecordFailed() {
            l.a((CharSequence) "录音失败，请重试");
        }

        public void onRecordStart() {
            MessageFragment.this.showVolumeDialog();
            MessageFragment.this.started = true;
            if (MessageFragment.this.touched) {
                MessageFragment.this.updateTimerTip(false);
            }
        }

        public void onRecordFinished(String str, long j) {
            if (MessageFragment.this.y1 - MessageFragment.this.y2 <= 180.0f) {
                if (j >= 500) {
                    if (MessageFragment.this.soundVolumeDialog.isShowing()) {
                        MessageFragment.this.soundVolumeDialog.dismiss();
                    }
                    if (j < 60000) {
                        MessageFragment.this.messageListPanel.onMsgSend(MessageFragment.this.mMessageService.sendAudioMessage(MessageFragment.this.sessionType, MessageFragment.this.sessionId, str, j));
                        return;
                    }
                    return;
                }
                MessageFragment.this.soundVolumeImg.setVisibility(8);
                MessageFragment.this.soundVolumeLayout.setBackgroundResource(R.drawable.tt_sound_volume_short_tip_bk);
                if (!MessageFragment.this.soundVolumeDialog.isShowing()) {
                    MessageFragment.this.soundVolumeDialog.show();
                }
                new Timer().schedule(new TimerTask() {
                    public void run() {
                        if (MessageFragment.this.soundVolumeDialog.isShowing()) {
                            MessageFragment.this.soundVolumeDialog.dismiss();
                        }
                        cancel();
                    }
                }, 700);
            } else if (MessageFragment.this.soundVolumeDialog.isShowing()) {
                MessageFragment.this.soundVolumeDialog.dismiss();
            }
        }

        public void onEndingRecord() {
        }

        public void onPlayBegin(String str) {
        }

        public void onPlayEnd(String str, boolean z) {
        }

        public void onRmsChanged(int i) {
            MessageFragment.this.onReceiveMaxVolume(i);
        }
    };
    @BindView(2131755619)
    ImageButton mBtnRecord;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755451)
    QMUIAlphaImageButton mIbRight;
    /* access modifiers changed from: private */
    public MessageService mMessageService = MessageService.instance();
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755443)
    TextView mTvTitle;
    protected MessageListPanelEx messageListPanel;
    /* access modifiers changed from: private */
    public String sessionId;
    private String sessionKey;
    /* access modifiers changed from: private */
    public int sessionType;
    /* access modifiers changed from: private */
    public Dialog soundVolumeDialog;
    /* access modifiers changed from: private */
    public ImageView soundVolumeImg;
    /* access modifiers changed from: private */
    public LinearLayout soundVolumeLayout;
    /* access modifiers changed from: private */
    public boolean started = false;
    /* access modifiers changed from: private */
    public boolean touched = false;
    /* access modifiers changed from: private */
    public float y1;
    /* access modifiers changed from: private */
    public float y2;

    public static MessageFragment newInstance(String str, int i) {
        Bundle bundle = new Bundle();
        MessageFragment messageFragment = new MessageFragment();
        bundle.putString(Extras.EXTRA_SESSION_ID, str);
        bundle.putInt(Extras.EXTRA_SESSION_TYPE, i);
        messageFragment.setArguments(bundle);
        return messageFragment;
    }

    /* access modifiers changed from: protected */
    public void initBundle(Bundle bundle) {
        if (bundle != null) {
            this.sessionId = bundle.getString(Extras.EXTRA_SESSION_ID);
            this.sessionType = bundle.getInt(Extras.EXTRA_SESSION_TYPE);
            this.sessionKey = EntityChangeEngine.getSessionKey(this.sessionId, this.sessionType);
            this.mAnchor = (MessageEntity) getArguments().getSerializable(Extras.EXTRA_ANCHOR);
            c.a(this.TAG, "bundle#sessionId=" + this.sessionId + ",sessionType=" + this.sessionType);
        }
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_message;
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        l.a((ViewGroup) this.mTitleBar);
        this.mIbRight.setVisibility(0);
        this.mIbRight.setImageResource(R.drawable.icon_more);
        this.mIbRight.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MessageFragment.this.startFragment(ChatRoomInfoFragment.newInstance(Integer.parseInt(MessageFragment.this.sessionId)));
            }
        });
        this.mIbLeft.setOnClickListener(new MessageFragment$$Lambda$0(this));
        this.mTvTitle.setText(getGroupName());
        Container container = new Container(getBaseActivity(), this.sessionId, this.sessionType, this);
        if (this.messageListPanel == null) {
            this.messageListPanel = new MessageListPanelEx(container, view, this.mAnchor, false, false);
        } else {
            this.messageListPanel.reload(container, this.mAnchor);
        }
        de.greenrobot.event.c.a().a((Object) this, 100);
        initAudioRecordButton();
        initSoundVolumeDlg();
        initAudioSdk();
        this.mMessageService.setEnterChatRoom(true);
        IMUnreadMsgManager.instance().readUnreadSession(this.sessionKey);
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initWidget$0$MessageFragment(View view) {
        popBackStack();
    }

    private String getGroupName() {
        try {
            GroupEntity findGroup = IMGroupManager.instance().findGroup(Integer.parseInt(this.sessionId));
            if (findGroup != null) {
                return findGroup.mainName;
            }
        } catch (NumberFormatException e) {
            ThrowableExtension.printStackTrace(e);
        }
        return this.sessionId;
    }

    public void changeToSpeaker() {
        this.mAudioManager.setMode(3);
        this.mAudioManager.stopBluetoothSco();
        this.mAudioManager.setBluetoothScoOn(false);
        this.mAudioManager.setSpeakerphoneOn(true);
    }

    private void initAudioSdk() {
        this.mMessageService.initAudio(this.mAudioRecordListener);
    }

    public void onEvent(final PriorityEvent priorityEvent) {
        c.a(this.TAG, "onEvent:message incoming");
        switch (priorityEvent.event) {
            case MSG_RECEIVED_MESSAGE:
                l.a((Runnable) new Runnable() {
                    public void run() {
                        MessageObserverHelper.getInstance().notifyReceiveMessage((MessageEntity) priorityEvent.object);
                    }
                });
                de.greenrobot.event.c.a().f(priorityEvent);
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(MessageHistoryEvent messageHistoryEvent) {
        c.a(this.TAG, "onEventMainThread:old group message incoming");
        MessageObserverHelper.getInstance().notifyReceiveOldGroupMessage(messageHistoryEvent.messageList);
    }

    public void refreshMessageList() {
        this.messageListPanel.refreshMessageList();
    }

    public void onInputPanelExpand() {
    }

    public void shouldCollapseInputPanel() {
    }

    public void onAvatarClick(Context context, MessageEntity messageEntity) {
        UserEntity findContact = IMContactManager.instance().findContact(Integer.parseInt(messageEntity.getFromId()));
        if (findContact == null) {
            c.d(this.TAG, "click user info is null, please check whether to initialize user information");
        } else {
            showUserInfoDialog(findContact);
        }
    }

    private void showUserInfoDialog(UserEntity userEntity) {
        int loginId = IMLoginManager.instance().getLoginId();
        int peerId = userEntity.getPeerId();
        if (IMLoginManager.instance().getLoginInfo() == null) {
            c.d(this.TAG, "my user info is null, please check whether to login success");
            return;
        }
        boolean z = peerId == loginId;
        new Builder(getContext()).setTitle(userEntity.mainName).setSubTitle(String.format("ID:%s", new Object[]{Integer.valueOf(userEntity.peerId)})).setImageUrl(userEntity.avatar).setPositiveButton(z ? R.string.common_ok : R.string.btn_send_message, new MessageFragment$$Lambda$1(z, userEntity)).show();
    }

    static final /* synthetic */ void lambda$showUserInfoDialog$1$MessageFragment(boolean z, UserEntity userEntity, DialogInterface dialogInterface, int i) {
        if (!z) {
            de.greenrobot.event.c.a().e(new ChatEvent(Event.START_CHAT, userEntity));
        }
    }

    public void initAudioRecordButton() {
        this.mBtnRecord.setOnTouchListener(this);
    }

    private void initSoundVolumeDlg() {
        this.soundVolumeDialog = new Dialog(getContext(), R.style.SoundVolumeStyle);
        this.soundVolumeDialog.requestWindowFeature(1);
        this.soundVolumeDialog.getWindow().setFlags(1024, 1024);
        this.soundVolumeDialog.setContentView(R.layout.im_sound_volume_dialog);
        this.soundVolumeDialog.setCanceledOnTouchOutside(true);
        this.soundVolumeImg = (ImageView) this.soundVolumeDialog.findViewById(R.id.sound_volume_img);
        this.soundVolumeLayout = (LinearLayout) this.soundVolumeDialog.findViewById(R.id.sound_volume_bk);
    }

    /* access modifiers changed from: private */
    public void onReceiveMaxVolume(int i) {
        if (((double) i) < 200.0d) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_01);
        } else if (((double) i) > 200.0d && i < 500) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_02);
        } else if (((double) i) > 500.0d && i < 1200) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_03);
        } else if (((double) i) > 1200.0d && i < 2400) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_04);
        } else if (((double) i) > 2400.0d && i < 5000) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_05);
        } else if (((double) i) > 5000.0d && ((double) i) < 8000.0d) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_06);
        } else if (((double) i) > 8000.0d) {
            this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_07);
        }
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (view.getId() == R.id.btn_record) {
            if (motionEvent.getAction() == 0) {
                if (MessageAudioControl.getInstance().isPlayingAudio()) {
                    MessageAudioControl.getInstance().stopAudio();
                }
                this.y1 = motionEvent.getY();
                this.touched = true;
                onStartAudioRecord();
            } else if (motionEvent.getAction() == 3 || motionEvent.getAction() == 1) {
                view.performClick();
                this.touched = false;
                this.y2 = motionEvent.getY();
                onEndAudioRecord(isCancelled(view, motionEvent));
            } else if (motionEvent.getAction() == 2) {
                this.touched = true;
                this.y2 = motionEvent.getY();
                if (this.y1 - this.y2 > 180.0f) {
                    this.soundVolumeImg.setVisibility(8);
                    this.soundVolumeLayout.setBackgroundResource(R.drawable.tt_sound_volume_cancel_bk);
                } else {
                    this.soundVolumeImg.setVisibility(0);
                    this.soundVolumeLayout.setBackgroundResource(R.drawable.tt_sound_volume_default_bk);
                }
                cancelAudioRecord(isCancelled(view, motionEvent));
            }
        }
        return true;
    }

    private void cancelAudioRecord(boolean z) {
        if (this.started && this.cancelled != z) {
            this.cancelled = z;
            updateTimerTip(z);
        }
    }

    /* access modifiers changed from: private */
    public void updateTimerTip(boolean z) {
    }

    private void onEndAudioRecord(boolean z) {
        this.mMessageService.stopRecord();
        this.started = false;
    }

    private boolean isCancelled(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        if (motionEvent.getRawX() < ((float) iArr[0]) || motionEvent.getRawX() > ((float) (iArr[0] + view.getWidth())) || motionEvent.getRawY() < ((float) (iArr[1] - 40))) {
            return true;
        }
        return false;
    }

    private void onStartAudioRecord() {
        this.mMessageService.startRecord(false);
        this.cancelled = false;
    }

    /* access modifiers changed from: private */
    public void showVolumeDialog() {
        this.soundVolumeImg.setImageResource(R.drawable.tt_sound_volume_01);
        this.soundVolumeImg.setVisibility(0);
        this.soundVolumeLayout.setBackgroundResource(R.drawable.tt_sound_volume_default_bk);
        this.soundVolumeDialog.show();
    }

    public void onDestroyView() {
        super.onDestroyView();
    }

    public void onDestroy() {
        super.onDestroy();
        this.messageListPanel.onDestroy();
        this.mMessageService.setEnterChatRoom(false);
        this.mMessageService.removeAudioRecordListener();
        de.greenrobot.event.c.a().d(this);
        MessageAudioControl.getInstance().destroy();
    }
}
