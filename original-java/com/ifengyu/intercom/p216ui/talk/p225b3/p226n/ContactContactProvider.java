package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p216ui.talk.entity.ItemAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.shanlitech.p245et.model.User;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.a */
/* loaded from: classes2.dex */
public class ContactContactProvider extends BaseItemProvider<ItemAdapterEntity<Object>> {

    /* renamed from: d */
    private Fragment f15619d;

    public ContactContactProvider(Fragment fragment) {
        this.f15619d = fragment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_contact_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, ItemAdapterEntity<Object> itemAdapterEntity) {
        if (itemAdapterEntity.getData() instanceof DeviceModel) {
            DeviceModel deviceModel = (DeviceModel) itemAdapterEntity.getData();
            ImageLoader.m8705f(this.f15619d, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), deviceModel.getNetDeviceModel().getAvatar());
            baseViewHolder.setText(R.id.tv_contact_display_name, deviceModel.getName());
            baseViewHolder.setGone(R.id.iv_is_device, false);
        } else if (itemAdapterEntity.getData() instanceof User) {
            User user = (User) itemAdapterEntity.getData();
            ImageLoader.m8705f(this.f15619d, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), user.getAvatar());
            baseViewHolder.setText(R.id.tv_contact_display_name, user.getName());
            baseViewHolder.setGone(R.id.iv_is_device, true);
        }
    }
}
