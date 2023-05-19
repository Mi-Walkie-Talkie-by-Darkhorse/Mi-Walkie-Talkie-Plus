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
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.xiaomi.mipush.sdk.Constants;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.l */
/* loaded from: classes2.dex */
public class TalkMessageSelfAudioProvider extends BaseItemProvider<TalkMessagesAdapterMultipleEntity> {

    /* renamed from: d */
    private Fragment f15625d;

    public TalkMessageSelfAudioProvider(Fragment fragment) {
        this.f15625d = fragment;
    }

    /* renamed from: u */
    private int m9347u(int i) {
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
    private int m9346v(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
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
        return 102;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_message_self_audio;
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
        if (UserCache.getUserInfo() != null) {
            ImageLoader.m8705f(this.f15625d, (ImageView) baseViewHolder.getView(R.id.iv_member_avatar), UserCache.getUserInfo().avatar);
        }
        View view = baseViewHolder.getView(R.id.layout_self_audio);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (talkMessagesAdapterMultipleEntity.getAudioState() != 1 && talkMessagesAdapterMultipleEntity.getAudioState() != 2) {
            if (talkMessagesAdapterMultipleEntity.getAudioState() == 3) {
                layoutParams.width = UIUtils.m8616b(70.0f);
                view.setLayoutParams(layoutParams);
                baseViewHolder.setText(R.id.tv_audio_len, (CharSequence) null);
            }
        } else {
            int m9346v = m9346v(talkMessagesAdapterMultipleEntity);
            baseViewHolder.setText(R.id.tv_audio_len, UIUtils.m8602p(R.string.talk_second_s, Integer.valueOf(m9346v)));
            layoutParams.width = UIUtils.m8616b(m9347u(m9346v));
            view.setLayoutParams(layoutParams);
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
