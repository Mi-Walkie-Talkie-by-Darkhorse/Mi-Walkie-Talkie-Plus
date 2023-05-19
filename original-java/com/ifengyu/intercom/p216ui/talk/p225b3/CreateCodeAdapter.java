package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.p216ui.talk.entity.CreateCodeAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.CreateCodeLoadingProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.CreateCodeMemberProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.c */
/* loaded from: classes2.dex */
public class CreateCodeAdapter extends BaseProviderMultiAdapter<CreateCodeAdapterEntity> {
    public CreateCodeAdapter(Fragment fragment, @Nullable List<CreateCodeAdapterEntity> list) {
        super(list);
        m17082r0(new CreateCodeMemberProvider(fragment));
        m17082r0(new CreateCodeLoadingProvider());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends CreateCodeAdapterEntity> list, int i) {
        return list.get(i).getType();
    }
}
