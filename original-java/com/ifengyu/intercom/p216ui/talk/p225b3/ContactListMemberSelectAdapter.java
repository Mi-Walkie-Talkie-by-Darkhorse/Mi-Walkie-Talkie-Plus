package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.MemberAddContactProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.MemberAddSectionProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.b */
/* loaded from: classes2.dex */
public class ContactListMemberSelectAdapter extends BaseProviderMultiAdapter<ItemSelectAdapterEntity<Object>> {
    public ContactListMemberSelectAdapter(Fragment fragment, @Nullable List<ItemSelectAdapterEntity<Object>> list) {
        super(list);
        m17082r0(new MemberAddSectionProvider());
        m17082r0(new MemberAddContactProvider(fragment));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends ItemSelectAdapterEntity<Object>> list, int i) {
        return list.get(i).getType();
    }
}
