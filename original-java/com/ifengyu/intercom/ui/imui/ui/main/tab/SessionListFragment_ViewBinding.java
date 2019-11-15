package com.ifengyu.intercom.ui.imui.ui.main.tab;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.ui.imui.ui.drop.DropFake;
import com.ifengyu.intercom.ui.imui.ui.main.tab.SessionListFragment;
import com.ifengyu.library.widget.groupicon.NineGridImageView;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.RecyclerViewEmptySupport;

public class SessionListFragment_ViewBinding<T extends SessionListFragment> implements Unbinder {
    protected T a;
    private View b;
    private View c;
    private View d;
    private View e;

    @UiThread
    public SessionListFragment_ViewBinding(final T t, View view) {
        this.a = t;
        t.mTvLeft = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_left, "field 'mTvLeft'", TextView.class);
        t.mIbLeft = (QMUIAlphaImageButton) Utils.findRequiredViewAsType(view, R.id.ib_left, "field 'mIbLeft'", QMUIAlphaImageButton.class);
        t.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_title, "field 'mTvTitle'", TextView.class);
        t.mTvRight = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_right, "field 'mTvRight'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, R.id.ib_right, "field 'mIbRight' and method 'onClick'");
        t.mIbRight = (QMUIAlphaImageButton) Utils.castView(findRequiredView, R.id.ib_right, "field 'mIbRight'", QMUIAlphaImageButton.class);
        this.b = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.mTitleBar = (FrameLayout) Utils.findRequiredViewAsType(view, R.id.title_bar, "field 'mTitleBar'", FrameLayout.class);
        t.mNoNetworkView = Utils.findRequiredView(view, R.id.layout_no_network, "field 'mNoNetworkView'");
        View findRequiredView2 = Utils.findRequiredView(view, R.id.item_device_status_view, "field 'mDeviceStatusView' and method 'onClick'");
        t.mDeviceStatusView = findRequiredView2;
        this.c = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.mReconnectProgressBar = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.progressbar_reconnect, "field 'mReconnectProgressBar'", ProgressBar.class);
        t.mDisplayView = (TextView) Utils.findRequiredViewAsType(view, R.id.disconnect_text, "field 'mDisplayView'", TextView.class);
        t.mIvWarning = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_warning, "field 'mIvWarning'", ImageView.class);
        View findRequiredView3 = Utils.findRequiredView(view, R.id.item_talk_group, "field 'mItemTalkGroup' and method 'onClick'");
        t.mItemTalkGroup = (RelativeLayout) Utils.castView(findRequiredView3, R.id.item_talk_group, "field 'mItemTalkGroup'", RelativeLayout.class);
        this.d = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
        t.mIvAvatarNone = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_avatar_none, "field 'mIvAvatarNone'", ImageView.class);
        t.mIvTalkAvatar = (NineGridImageView) Utils.findRequiredViewAsType(view, R.id.iv_talk_avatar, "field 'mIvTalkAvatar'", NineGridImageView.class);
        t.mTvTalkNickName = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_talk_nick_name, "field 'mTvTalkNickName'", TextView.class);
        t.mTvTalkLastMsg = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_talk_last_msg, "field 'mTvTalkLastMsg'", TextView.class);
        t.mTvTalkDataTime = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_talk_date_time, "field 'mTvTalkDataTime'", TextView.class);
        t.mDfTalkUnreadNumber = (DropFake) Utils.findRequiredViewAsType(view, R.id.df_talk_unread_number, "field 'mDfTalkUnreadNumber'", DropFake.class);
        t.mRvRecentList = (RecyclerViewEmptySupport) Utils.findRequiredViewAsType(view, R.id.rv_recent_list, "field 'mRvRecentList'", RecyclerViewEmptySupport.class);
        t.mEmptyView = Utils.findRequiredView(view, R.id.empty_view, "field 'mEmptyView'");
        t.mTvDeviceStatus = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_device_status, "field 'mTvDeviceStatus'", TextView.class);
        View findRequiredView4 = Utils.findRequiredView(view, R.id.item_switch_talk_group, "method 'onClick'");
        this.e = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() {
            public void doClick(View view) {
                t.onClick(view);
            }
        });
    }

    @CallSuper
    public void unbind() {
        T t = this.a;
        if (t == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        t.mTvLeft = null;
        t.mIbLeft = null;
        t.mTvTitle = null;
        t.mTvRight = null;
        t.mIbRight = null;
        t.mTitleBar = null;
        t.mNoNetworkView = null;
        t.mDeviceStatusView = null;
        t.mReconnectProgressBar = null;
        t.mDisplayView = null;
        t.mIvWarning = null;
        t.mItemTalkGroup = null;
        t.mIvAvatarNone = null;
        t.mIvTalkAvatar = null;
        t.mTvTalkNickName = null;
        t.mTvTalkLastMsg = null;
        t.mTvTalkDataTime = null;
        t.mDfTalkUnreadNumber = null;
        t.mRvRecentList = null;
        t.mEmptyView = null;
        t.mTvDeviceStatus = null;
        this.b.setOnClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
        this.d.setOnClickListener(null);
        this.d = null;
        this.e.setOnClickListener(null);
        this.e = null;
        this.a = null;
    }
}
