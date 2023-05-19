package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.graphics.drawable.AnimationDrawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.intercom.p216ui.talk.entity.TalkMessagesAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p227c3.TalkPresenter;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.User;
import com.xiaomi.mipush.sdk.Constants;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.k */
/* loaded from: classes2.dex */
public class TalkMessageOtherAudioProvider extends BaseItemProvider<TalkMessagesAdapterMultipleEntity> {

    /* renamed from: d */
    private final Fragment f15623d;

    /* renamed from: e */
    private final TalkPresenter f15624e;

    public TalkMessageOtherAudioProvider(Fragment fragment, TalkPresenter talkPresenter) {
        this.f15623d = fragment;
        this.f15624e = talkPresenter;
    }

    /* renamed from: u */
    private int m9353u(int i) {
        if (i <= 3) {
            return 70;
        }
        if (i <= 5) {
            return 80;
        }
        if (i <= 10) {
            return 100;
        }
        if (i <= 15) {
            return 120;
        }
        return i <= 20 ? CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA : CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA;
    }

    /* renamed from: v */
    private int m9352v(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
        int ceil = (int) Math.ceil(talkMessagesAdapterMultipleEntity.getAudioDuration() / 1000.0d);
        if (ceil < 1) {
            return 1;
        }
        if (ceil > 60) {
            return 60;
        }
        return ceil;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 101;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_message_other_audio;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
        if (m16936c() == null) {
            return;
        }
        int absoluteAdapterPosition = baseViewHolder.getAbsoluteAdapterPosition() - m16936c().m17063K();
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_msg_time);
        if (absoluteAdapterPosition > 0) {
            if (talkMessagesAdapterMultipleEntity.getMsgTime() - m16936c().m17070D().get(absoluteAdapterPosition - 1).getMsgTime() > Constants.ASSEMBLE_PUSH_NETWORK_INTERVAL) {
                textView.setVisibility(0);
                baseViewHolder.setText(R.id.tv_msg_time, C4148i0.m11161g(talkMessagesAdapterMultipleEntity.getMsgTime()));
            } else {
                textView.setVisibility(4);
            }
        } else {
            textView.setVisibility(0);
            baseViewHolder.setText(R.id.tv_msg_time, C4148i0.m11161g(talkMessagesAdapterMultipleEntity.getMsgTime()));
        }
        Object m9243N = this.f15624e.m9243N(talkMessagesAdapterMultipleEntity.getAudioUid());
        if (m9243N instanceof Member) {
            Member member = (Member) m9243N;
            ImageLoader.m8705f(this.f15623d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), member.getUser().getAvatar());
            baseViewHolder.setGone(R.id.iv_is_device, member.getUser().getRole() != 0);
            baseViewHolder.setText(R.id.tv_member_name, SlTalkClient.m8523h(member));
        } else if (m9243N instanceof User) {
            User user = (User) m9243N;
            ImageLoader.m8705f(this.f15623d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), user.getAvatar());
            baseViewHolder.setGone(R.id.iv_is_device, user.getRole() != 0);
            baseViewHolder.setText(R.id.tv_member_name, user.getName());
        } else {
            ImageLoader.m8705f(this.f15623d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), null);
            baseViewHolder.setGone(R.id.iv_is_device, true);
            baseViewHolder.setText(R.id.tv_member_name, String.valueOf(talkMessagesAdapterMultipleEntity.getAudioUid()));
        }
        if (talkMessagesAdapterMultipleEntity.getAudioState() != 1 && talkMessagesAdapterMultipleEntity.getAudioState() != 2) {
            if (talkMessagesAdapterMultipleEntity.getAudioState() == 3) {
                View view = baseViewHolder.getView(R.id.layout_other_audio);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = UIUtils.m8616b(70.0f);
                view.setLayoutParams(layoutParams);
                baseViewHolder.setText(R.id.tv_audio_len, (CharSequence) null);
            }
        } else {
            int m9352v = m9352v(talkMessagesAdapterMultipleEntity);
            baseViewHolder.setText(R.id.tv_audio_len, UIUtils.m8602p(R.string.talk_second_s, Integer.valueOf(m9352v)));
            View view2 = baseViewHolder.getView(R.id.layout_other_audio);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
            layoutParams2.width = UIUtils.m8616b(m9353u(m9352v));
            view2.setLayoutParams(layoutParams2);
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_audio_play);
        if (talkMessagesAdapterMultipleEntity.getAudioState() == 1) {
            ((AnimationDrawable) imageView.getDrawable()).stop();
        } else if (talkMessagesAdapterMultipleEntity.getAudioState() == 2) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        } else if (talkMessagesAdapterMultipleEntity.getAudioState() == 3) {
            ((AnimationDrawable) imageView.getDrawable()).start();
        }
    }
}
