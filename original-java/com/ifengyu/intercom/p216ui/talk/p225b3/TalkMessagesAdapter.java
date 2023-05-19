package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.TalkMessagesAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.TalkMessageEventProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.TalkMessageOtherAudioProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.TalkMessageSelfAudioProvider;
import com.ifengyu.intercom.p216ui.talk.p227c3.TalkPresenter;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.l */
/* loaded from: classes2.dex */
public class TalkMessagesAdapter extends BaseProviderMultiAdapter<TalkMessagesAdapterMultipleEntity> {
    public TalkMessagesAdapter(Fragment fragment, TalkPresenter talkPresenter, @Nullable List<TalkMessagesAdapterMultipleEntity> list) {
        super(list);
        m17082r0(new TalkMessageSelfAudioProvider(fragment));
        m17082r0(new TalkMessageOtherAudioProvider(fragment, talkPresenter));
        m17082r0(new TalkMessageEventProvider());
        m17039g(R.id.layout_self_audio, R.id.layout_other_audio, R.id.iv_member_avatar);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends TalkMessagesAdapterMultipleEntity> list, int i) {
        return list.get(i).getType();
    }
}
