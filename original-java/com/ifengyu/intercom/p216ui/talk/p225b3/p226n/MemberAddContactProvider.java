package com.ifengyu.intercom.p216ui.talk.p225b3.p226n;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.shanlitech.p245et.model.User;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.n.h */
/* loaded from: classes2.dex */
public class MemberAddContactProvider extends BaseItemProvider<ItemSelectAdapterEntity<Object>> {

    /* renamed from: d */
    private final Fragment f15622d;

    public MemberAddContactProvider(Fragment fragment) {
        this.f15622d = fragment;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: g */
    public int mo9350g() {
        return 3;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: h */
    public int mo9349h() {
        return R.layout.item_member_select_list;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    /* renamed from: t */
    public void mo9351a(@NonNull BaseViewHolder baseViewHolder, ItemSelectAdapterEntity<Object> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.getData() instanceof DeviceModel) {
            DeviceModel deviceModel = (DeviceModel) itemSelectAdapterEntity.getData();
            ImageLoader.m8705f(this.f15622d, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), deviceModel.getNetDeviceModel().getAvatar());
            baseViewHolder.setText(R.id.tv_contact_display_name, deviceModel.getName());
            baseViewHolder.setGone(R.id.iv_is_device, false);
        } else if (itemSelectAdapterEntity.getData() instanceof User) {
            User user = (User) itemSelectAdapterEntity.getData();
            ImageLoader.m8705f(this.f15622d, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), user.getAvatar());
            baseViewHolder.setText(R.id.tv_contact_display_name, user.getName());
            baseViewHolder.setGone(R.id.iv_is_device, true);
        }
        if (itemSelectAdapterEntity.isEnable()) {
            baseViewHolder.getView(R.id.iv_check).setEnabled(true);
            baseViewHolder.getView(R.id.iv_check).setSelected(itemSelectAdapterEntity.isCheck());
            return;
        }
        baseViewHolder.getView(R.id.iv_check).setEnabled(false);
    }
}
