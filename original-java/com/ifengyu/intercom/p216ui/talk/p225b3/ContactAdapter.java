package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.ifengyu.intercom.p216ui.talk.entity.ItemAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.ContactContactProvider;
import com.ifengyu.intercom.p216ui.talk.p225b3.p226n.ContactSectionProvider;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.a */
/* loaded from: classes2.dex */
public class ContactAdapter extends BaseProviderMultiAdapter<ItemAdapterEntity<Object>> {
    public ContactAdapter(Fragment fragment, @Nullable List<ItemAdapterEntity<Object>> list) {
        super(list);
        m17082r0(new ContactSectionProvider());
        m17082r0(new ContactContactProvider(fragment));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    /* renamed from: z0 */
    protected int mo9367z0(@NonNull List<? extends ItemAdapterEntity<Object>> list, int i) {
        return list.get(i).getType();
    }
}
