package com.ifengyu.intercom.ui.imui.ui.chat.session.fragment;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.chat.session.fragment.ChatRoomInfoFragment;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.library.widget.view.QMUIAlphaButton;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;

public class ChatRoomInfoFragment_ViewBinding<T extends ChatRoomInfoFragment> implements Unbinder {
    protected T target;

    @UiThread
    public ChatRoomInfoFragment_ViewBinding(T t, View view) {
        this.target = t;
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mTvGroupId = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_group_id, "field 'mTvGroupId'", TextView.class);
        t.mRvGroupList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_group_list, "field 'mRvGroupList'", RecyclerView.class);
        t.mItemGroupName = (ItemView) Utils.findRequiredViewAsType(view, R.id.item_group_name, "field 'mItemGroupName'", ItemView.class);
        t.mItemGroupQrCode = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.item_group_qr_code, "field 'mItemGroupQrCode'", RelativeLayout.class);
        t.mItemMyNickname = (ItemView) Utils.findRequiredViewAsType(view, R.id.item_my_nickname_in_group, "field 'mItemMyNickname'", ItemView.class);
        t.mItemTransferOwner = (ItemView) Utils.findRequiredViewAsType(view, R.id.item_transfer_owner, "field 'mItemTransferOwner'", ItemView.class);
        t.mBtnDeleteQuit = (QMUIAlphaButton) Utils.findRequiredViewAsType(view, R.id.btn_delete_quit, "field 'mBtnDeleteQuit'", QMUIAlphaButton.class);
        t.mMoreView = Utils.findRequiredView(view, R.id.more_view, "field 'mMoreView'");
    }

    @CallSuper
    public void unbind() {
        T t = this.target;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mTitleBar = null;
        t.mTvGroupId = null;
        t.mRvGroupList = null;
        t.mItemGroupName = null;
        t.mItemGroupQrCode = null;
        t.mItemMyNickname = null;
        t.mItemTransferOwner = null;
        t.mBtnDeleteQuit = null;
        t.mMoreView = null;
        this.target = null;
    }
}
