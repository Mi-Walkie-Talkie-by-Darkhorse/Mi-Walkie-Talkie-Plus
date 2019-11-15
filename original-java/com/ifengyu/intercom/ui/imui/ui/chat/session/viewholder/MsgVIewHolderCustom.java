package com.ifengyu.intercom.ui.imui.ui.chat.session.viewholder;

import android.support.v4.view.ViewCompat;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.recyclerview.adapter.a;

public class MsgVIewHolderCustom extends MsgViewHolderBase {
    protected TextView bodyTextView;

    public MsgVIewHolderCustom(a aVar) {
        super(aVar);
    }

    /* access modifiers changed from: protected */
    public int getContentResId() {
        return R.layout.im_message_item_text;
    }

    /* access modifiers changed from: protected */
    public void inflateContentView() {
        this.bodyTextView = (TextView) findViewById(R.id.nim_message_item_text_body);
    }

    /* access modifiers changed from: protected */
    public void bindContentView() {
        layoutDirection();
        this.bodyTextView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                MsgVIewHolderCustom.this.onItemClick();
            }
        });
        this.bodyTextView.setText(getDisplayText());
        this.bodyTextView.setMovementMethod(LinkMovementMethod.getInstance());
        this.bodyTextView.setOnLongClickListener(this.longClickListener);
    }

    private void layoutDirection() {
        if (isReceivedMessage()) {
            this.bodyTextView.setBackgroundResource(R.drawable.im_message_item_left_selector);
            this.bodyTextView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            this.bodyTextView.setPadding(l.a(15.0f), l.a(8.0f), l.a(10.0f), l.a(8.0f));
            return;
        }
        this.bodyTextView.setBackgroundResource(R.drawable.im_message_item_right_selector);
        this.bodyTextView.setTextColor(-1);
        this.bodyTextView.setPadding(l.a(10.0f), l.a(8.0f), l.a(15.0f), l.a(8.0f));
    }

    /* access modifiers changed from: protected */
    public String getDisplayText() {
        return this.mMessage.getContent();
    }
}
