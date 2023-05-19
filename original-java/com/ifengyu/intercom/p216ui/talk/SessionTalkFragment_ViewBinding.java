package com.ifengyu.intercom.p216ui.talk;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.ifengyu.intercom.R;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.SessionTalkFragment_ViewBinding */
/* loaded from: classes2.dex */
public class SessionTalkFragment_ViewBinding implements Unbinder {

    /* renamed from: a */
    private SessionTalkFragment f15581a;

    @UiThread
    public SessionTalkFragment_ViewBinding(SessionTalkFragment sessionTalkFragment, View view) {
        this.f15581a = sessionTalkFragment;
        sessionTalkFragment.mTopbar = (QMUITopBarLayout) Utils.findRequiredViewAsType(view, R.id.topbar, "field 'mTopbar'", QMUITopBarLayout.class);
        sessionTalkFragment.rvTopMemberList = (RecyclerView) Utils.findRequiredViewAsType(view, R.id.rv_top_member_list, "field 'rvTopMemberList'", RecyclerView.class);
        sessionTalkFragment.llHoldOnToSpeak = (LinearLayout) Utils.findRequiredViewAsType(view, R.id.ll_hold_on_to_speak, "field 'llHoldOnToSpeak'", LinearLayout.class);
        sessionTalkFragment.ivAudioPlay = (ImageView) Utils.findRequiredViewAsType(view, R.id.iv_audio_play, "field 'ivAudioPlay'", ImageView.class);
        sessionTalkFragment.tvAudioContent = (TextView) Utils.findRequiredViewAsType(view, R.id.tv_audio_content, "field 'tvAudioContent'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SessionTalkFragment sessionTalkFragment = this.f15581a;
        if (sessionTalkFragment != null) {
            this.f15581a = null;
            sessionTalkFragment.mTopbar = null;
            sessionTalkFragment.rvTopMemberList = null;
            sessionTalkFragment.llHoldOnToSpeak = null;
            sessionTalkFragment.ivAudioPlay = null;
            sessionTalkFragment.tvAudioContent = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
