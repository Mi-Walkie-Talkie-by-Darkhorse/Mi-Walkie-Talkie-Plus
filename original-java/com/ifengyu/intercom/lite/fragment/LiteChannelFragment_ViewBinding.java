package com.ifengyu.intercom.lite.fragment;

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
public class LiteChannelFragment_ViewBinding implements Unbinder {

    /* renamed from: a  reason: collision with root package name */
    private LiteChannelFragment f5457a;

    @UiThread
    public LiteChannelFragment_ViewBinding(LiteChannelFragment liteChannelFragment, View view) {
        this.f5457a = liteChannelFragment;
        liteChannelFragment.mTopBar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.top_bar, "field 'mTopBar'", QMUITopBarLayout.class);
        liteChannelFragment.mTvReceiveFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_receive_freq, "field 'mTvReceiveFreq'", TextView.class);
        liteChannelFragment.mTvSendFreq = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_send_freq, "field 'mTvSendFreq'", TextView.class);
        liteChannelFragment.mLlChannelBoard = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.ll_channel_board, "field 'mLlChannelBoard'", RelativeLayout.class);
        liteChannelFragment.mRecyclerView = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.recycler_view, "field 'mRecyclerView'", RecyclerView.class);
        liteChannelFragment.mTvChannelName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_channel_name, "field 'mTvChannelName'", TextView.class);
        liteChannelFragment.mTvBoardTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_board_title, "field 'mTvBoardTitle'", TextView.class);
        liteChannelFragment.mTvBoardDetail = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_board_detail, "field 'mTvBoardDetail'", TextView.class);
        liteChannelFragment.mEmptyBoard = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.empty_board, "field 'mEmptyBoard'", LinearLayout.class);
        liteChannelFragment.mContentBoard = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.content_board, "field 'mContentBoard'", RelativeLayout.class);
        liteChannelFragment.mRlChannelBackup = (RelativeLayout) Utils.findRequiredViewAsType(view, R.id.rl_channel_backup, "field 'mRlChannelBackup'", RelativeLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LiteChannelFragment liteChannelFragment = this.f5457a;
        if (liteChannelFragment != null) {
            this.f5457a = null;
            liteChannelFragment.mTopBar = null;
            liteChannelFragment.mTvReceiveFreq = null;
            liteChannelFragment.mTvSendFreq = null;
            liteChannelFragment.mLlChannelBoard = null;
            liteChannelFragment.mRecyclerView = null;
            liteChannelFragment.mTvChannelName = null;
            liteChannelFragment.mTvBoardTitle = null;
            liteChannelFragment.mTvBoardDetail = null;
            liteChannelFragment.mEmptyBoard = null;
            liteChannelFragment.mContentBoard = null;
            liteChannelFragment.mRlChannelBackup = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
