package com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder;

import android.text.method.LinkMovementMethod;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.library.widget.recyclerview.adapter.a;

public class MsgViewHolderNotification extends MsgViewHolderBase {
    protected TextView notificationTextView;

    public MsgViewHolderNotification(a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: protected */
    public int getContentResId() {
        return R.layout.nim_message_item_notification;
    }

    /* access modifiers changed from: protected */
    public void inflateContentView() {
        this.notificationTextView = (TextView) this.mItemView.findViewById(R.id.message_item_notification_label);
    }

    /* access modifiers changed from: protected */
    public void bindContentView() {
        handleTextNotification(getDisplayText());
    }

    /* access modifiers changed from: protected */
    public String getDisplayText() {
        if (this.mMessage.command != null) {
            return this.mMessage.command.displayContent;
        }
        return "";
    }

    private void handleTextNotification(String str) {
        this.notificationTextView.setText(str);
        this.notificationTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    /* access modifiers changed from: protected */
    public boolean isMiddleItem() {
        return true;
    }
}
