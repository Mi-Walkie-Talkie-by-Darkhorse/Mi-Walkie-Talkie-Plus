package com.ifengyu.intercom.lite.old;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteChannelSettingActivity_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteChannelSettingActivity f5721a;

    @UiThread
    public LiteChannelSettingActivity_ViewBinding(LiteChannelSettingActivity liteChannelSettingActivity, View view) {
        this.f5721a = liteChannelSettingActivity;
        liteChannelSettingActivity.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        liteChannelSettingActivity.mTvReceiveFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_receive_freq, "field 'mTvReceiveFreq'", TextView.class);
        liteChannelSettingActivity.mTvSendFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_send_freq, "field 'mTvSendFreq'", TextView.class);
        liteChannelSettingActivity.mLlChannelBoard = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.ll_channel_board, "field 'mLlChannelBoard'", RelativeLayout.class);
        liteChannelSettingActivity.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        liteChannelSettingActivity.mTvChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_channel_name, "field 'mTvChannelName'", TextView.class);
        liteChannelSettingActivity.mTvBoardTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_board_title, "field 'mTvBoardTitle'", TextView.class);
        liteChannelSettingActivity.mTvBoardDetail = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_board_detail, "field 'mTvBoardDetail'", TextView.class);
        liteChannelSettingActivity.mEmptyBoard = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.empty_board, "field 'mEmptyBoard'", LinearLayout.class);
        liteChannelSettingActivity.mContentBoard = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.content_board, "field 'mContentBoard'", RelativeLayout.class);
        liteChannelSettingActivity.mRlChannelBackup = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.rl_channel_backup, "field 'mRlChannelBackup'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteChannelSettingActivity liteChannelSettingActivity = this.f5721a;
        if (liteChannelSettingActivity != null) {
            this.f5721a = null;
            liteChannelSettingActivity.mTopBar = null;
            liteChannelSettingActivity.mTvReceiveFreq = null;
            liteChannelSettingActivity.mTvSendFreq = null;
            liteChannelSettingActivity.mLlChannelBoard = null;
            liteChannelSettingActivity.mRecyclerView = null;
            liteChannelSettingActivity.mTvChannelName = null;
            liteChannelSettingActivity.mTvBoardTitle = null;
            liteChannelSettingActivity.mTvBoardDetail = null;
            liteChannelSettingActivity.mEmptyBoard = null;
            liteChannelSettingActivity.mContentBoard = null;
            liteChannelSettingActivity.mRlChannelBackup = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
