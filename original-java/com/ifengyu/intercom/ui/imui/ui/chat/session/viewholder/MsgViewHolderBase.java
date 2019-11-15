package com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.ifengyu.im.imservice.manager.GroupHelper;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.HeadImageView;
import com.ifengyu.intercom.ui.imui.ui.chat.session.list.MsgAdapter;
import com.ifengyu.library.util.k;
import com.ifengyu.library.widget.recyclerview.adapter.a;
import com.ifengyu.library.widget.recyclerview.d.b;

public abstract class MsgViewHolderBase extends b<a, com.ifengyu.library.widget.recyclerview.d.a, MessageEntity> {
    protected View alertButton;
    private HeadImageView avatarLeft;
    private HeadImageView avatarRight;
    protected FrameLayout contentContainer;
    protected OnLongClickListener longClickListener;
    protected Context mContext;
    protected View mItemView;
    protected MessageEntity mMessage;
    private boolean mReceivedMessage;
    protected LinearLayout nameContainer;
    public ImageView nameIconView;
    protected TextView nameTextView;
    protected ProgressBar progressBar;
    protected TextView readReceiptTextView;
    protected TextView timeTextView;

    /* access modifiers changed from: protected */
    public abstract void bindContentView();

    /* access modifiers changed from: protected */
    public abstract int getContentResId();

    /* access modifiers changed from: protected */
    public abstract void inflateContentView();

    public MsgViewHolderBase(a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: protected */
    public void bindHolder(com.ifengyu.library.widget.recyclerview.d.a aVar) {
    }

    /* access modifiers changed from: protected */
    public void onItemClick() {
    }

    /* access modifiers changed from: protected */
    public boolean onItemLongClick() {
        return false;
    }

    /* access modifiers changed from: protected */
    public int leftBackground() {
        return R.drawable.im_message_item_left_selector;
    }

    /* access modifiers changed from: protected */
    public int rightBackground() {
        return R.drawable.im_message_item_right_selector;
    }

    /* access modifiers changed from: protected */
    public boolean isMiddleItem() {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean isShowHeadImage() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean isShowBubble() {
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean shouldDisplayReceipt() {
        return true;
    }

    /* access modifiers changed from: protected */
    public final MsgAdapter getMsgAdapter() {
        return (MsgAdapter) getAdapter();
    }

    /* access modifiers changed from: protected */
    public boolean shouldDisplayNick() {
        return this.mMessage.getSessionType() == 3 && isReceivedMessage() && !isMiddleItem();
    }

    public void convert(com.ifengyu.library.widget.recyclerview.d.a aVar, MessageEntity messageEntity, int i, boolean z) {
        this.mItemView = aVar.c();
        this.mContext = aVar.d();
        this.mMessage = messageEntity;
        inflate();
        refresh();
        bindHolder(aVar);
    }

    private void inflate() {
        this.timeTextView = (TextView) findViewById(R.id.message_item_time);
        this.avatarLeft = (HeadImageView) findViewById(R.id.message_item_portrait_left);
        this.avatarRight = (HeadImageView) findViewById(R.id.message_item_portrait_right);
        this.alertButton = findViewById(R.id.message_item_alert);
        this.progressBar = (ProgressBar) findViewById(R.id.message_item_progress);
        this.nameTextView = (TextView) findViewById(R.id.message_item_nickname);
        this.contentContainer = (FrameLayout) findViewById(R.id.message_item_content);
        this.nameIconView = (ImageView) findViewById(R.id.message_item_name_icon);
        this.nameContainer = (LinearLayout) findViewById(R.id.message_item_name_layout);
        this.readReceiptTextView = (TextView) findViewById(R.id.textViewAlreadyRead);
        if (this.contentContainer.getChildCount() == 0) {
            View.inflate(this.mItemView.getContext(), getContentResId(), this.contentContainer);
        }
        inflateContentView();
    }

    private void refresh() {
        setHeadImageView();
        setNameTextView();
        setTimeTextView();
        setStatus();
        setOnClickListener();
        setLongClickListener();
        setContent();
        bindContentView();
    }

    public void refreshCurrentItem() {
        if (this.mMessage != null) {
            refresh();
        }
    }

    private void setNameTextView() {
        if (!shouldDisplayNick()) {
            this.nameTextView.setVisibility(8);
            return;
        }
        this.nameTextView.setVisibility(0);
        this.nameTextView.setText(getNameText());
    }

    private String getNameText() {
        if (this.mMessage.getSessionType() == 3) {
            return GroupHelper.getGroupMemberDisplayName(Integer.parseInt(this.mMessage.getToId()), Integer.parseInt(this.mMessage.getFromId()));
        }
        return "";
    }

    private void setTimeTextView() {
        if (getMsgAdapter().needShowTime(this.mMessage)) {
            this.timeTextView.setVisibility(0);
            this.timeTextView.setText(k.a(this.mMessage.getTime(), false));
            return;
        }
        this.timeTextView.setVisibility(8);
    }

    private void setStatus() {
        switch (this.mMessage.getStatus()) {
            case 0:
                this.progressBar.setVisibility(0);
                this.alertButton.setVisibility(8);
                return;
            case 2:
                this.progressBar.setVisibility(8);
                this.alertButton.setVisibility(0);
                return;
            default:
                this.progressBar.setVisibility(8);
                this.alertButton.setVisibility(8);
                return;
        }
    }

    private void setHeadImageView() {
        HeadImageView headImageView = isReceivedMessage() ? this.avatarLeft : this.avatarRight;
        (isReceivedMessage() ? this.avatarRight : this.avatarLeft).setVisibility(8);
        if (!isShowHeadImage()) {
            headImageView.setVisibility(8);
        } else if (isMiddleItem()) {
            headImageView.setVisibility(8);
        } else {
            headImageView.setVisibility(0);
            headImageView.loadBuddyAvatar(this.mMessage);
        }
    }

    private void setOnClickListener() {
        if (getMsgAdapter().getEventListener() != null) {
            this.alertButton.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    MsgViewHolderBase.this.getMsgAdapter().getEventListener().onFailedBtnClick(MsgViewHolderBase.this.mMessage);
                }
            });
        }
        this.contentContainer.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MsgViewHolderBase.this.onItemClick();
            }
        });
        AnonymousClass3 r0 = new OnClickListener() {
            public void onClick(View view) {
                MsgViewHolderBase.this.getMsgAdapter().getEventListener().onAvatarClick(MsgViewHolderBase.this.mContext, MsgViewHolderBase.this.mMessage);
            }
        };
        this.avatarLeft.setOnClickListener(r0);
        this.avatarRight.setOnClickListener(r0);
    }

    private void setLongClickListener() {
        this.longClickListener = new OnLongClickListener() {
            public boolean onLongClick(View view) {
                if (MsgViewHolderBase.this.onItemLongClick() || MsgViewHolderBase.this.getMsgAdapter().getEventListener() == null) {
                    return false;
                }
                MsgViewHolderBase.this.getMsgAdapter().getEventListener().onViewHolderLongClick(MsgViewHolderBase.this.contentContainer, MsgViewHolderBase.this.mItemView, MsgViewHolderBase.this.mMessage);
                return true;
            }
        };
        this.contentContainer.setOnLongClickListener(this.longClickListener);
    }

    private void setContent() {
        if (isShowBubble() || isMiddleItem()) {
            LinearLayout linearLayout = (LinearLayout) this.mItemView.findViewById(R.id.message_item_body);
            int i = isReceivedMessage() ? 0 : 3;
            if (linearLayout.getChildAt(i) != this.contentContainer) {
                linearLayout.removeView(this.contentContainer);
                linearLayout.addView(this.contentContainer, i);
            }
            if (isMiddleItem()) {
                setGravity(linearLayout, 17);
            } else if (isReceivedMessage()) {
                setGravity(linearLayout, 3);
                this.contentContainer.setBackgroundResource(leftBackground());
            } else {
                setGravity(linearLayout, 5);
                this.contentContainer.setBackgroundResource(rightBackground());
            }
        }
    }

    /* access modifiers changed from: protected */
    public final void setGravity(View view, int i) {
        ((LayoutParams) view.getLayoutParams()).gravity = i;
    }

    /* access modifiers changed from: protected */
    public <T extends View> T findViewById(int i) {
        return this.mItemView.findViewById(i);
    }

    public boolean isReceivedMessage() {
        return this.mMessage.getDirect() == 1;
    }
}
