package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.text.TextUtils;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.intercom.p216ui.talk.entity.TalkMessagesAdapterMultipleEntity;
import com.xiaomi.mipush.sdk.Constants;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.j */
/* loaded from: classes2.dex */
public class TalkMessageEventProvider extends BaseItemProvider<TalkMessagesAdapterMultipleEntity> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 103;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_group_message_event;
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
        if (TextUtils.isEmpty(talkMessagesAdapterMultipleEntity.getHistoryEntity().getToWord())) {
            return;
        }
        baseViewHolder.setText(R.id.tv_event_content, talkMessagesAdapterMultipleEntity.getHistoryEntity().getToWord());
    }
}
