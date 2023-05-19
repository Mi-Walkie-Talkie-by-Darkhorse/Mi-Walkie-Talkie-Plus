package com.ifengyu.intercom.p216ui.fragment.tab.p221j0;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.RecentCurrentTalkProvider;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.p222d.RecentNormalTalkProvider;
import com.ifengyu.talk.models.RecentTalkModel;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.j0.c */
/* loaded from: classes2.dex */
public class RecentTalkAdapter extends BaseProviderMultiAdapter<RecentTalkModel> {
    public RecentTalkAdapter(Fragment fragment, @Nullable List<RecentTalkModel> list) {
        super(list);
        m17082r0(new RecentCurrentTalkProvider(fragment));
        m17082r0(new RecentNormalTalkProvider(fragment));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends RecentTalkModel> list, int i) {
        return list.get(i).getTalkType();
    }
}
