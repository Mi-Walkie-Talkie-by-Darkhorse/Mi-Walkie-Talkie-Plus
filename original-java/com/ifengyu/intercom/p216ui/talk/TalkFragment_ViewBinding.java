package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.TalkFragment_ViewBinding */
/* loaded from: classes2.dex */
public class TalkFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private TalkFragment f15600a;

    @UiThread
    public TalkFragment_ViewBinding(TalkFragment talkFragment, View view) {
        this.f15600a = talkFragment;
        talkFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        talkFragment.rvTopOnlineList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_top_online_list, "field 'rvTopOnlineList'", RecyclerView.class);
        talkFragment.rvList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_list, "field 'rvList'", RecyclerView.class);
        talkFragment.ivTalkTemporary = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_talk_temporary, "field 'ivTalkTemporary'", ImageView.class);
        talkFragment.llHoldOnToSpeak = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_hold_on_to_speak, "field 'llHoldOnToSpeak'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        TalkFragment talkFragment = this.f15600a;
        if (talkFragment != null) {
            this.f15600a = null;
            talkFragment.mTopbar = null;
            talkFragment.rvTopOnlineList = null;
            talkFragment.rvList = null;
            talkFragment.ivTalkTemporary = null;
            talkFragment.llHoldOnToSpeak = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
