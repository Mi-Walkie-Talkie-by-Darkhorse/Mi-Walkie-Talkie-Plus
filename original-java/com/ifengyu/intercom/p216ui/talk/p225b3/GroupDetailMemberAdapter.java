package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.GroupDetailMemberNormalProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.GroupDetailOperateAddProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.GroupDetailOperateRemoveProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.h */
/* loaded from: classes2.dex */
public class GroupDetailMemberAdapter extends BaseProviderMultiAdapter<GroupDetailAdapterMultipleEntity> {
    public GroupDetailMemberAdapter(Fragment fragment, @Nullable List<GroupDetailAdapterMultipleEntity> list) {
        super(list);
        m17082r0(new GroupDetailMemberNormalProvider(fragment));
        m17082r0(new GroupDetailOperateAddProvider());
        m17082r0(new GroupDetailOperateRemoveProvider());
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends GroupDetailAdapterMultipleEntity> list, int i) {
        return list.get(i).getType();
    }
}
