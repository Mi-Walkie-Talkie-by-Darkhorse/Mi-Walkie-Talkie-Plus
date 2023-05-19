package com.ifengyu.intercom.p216ui.talk.p225b3;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.groupAdatar.NineGridImageView;
import com.ifengyu.library.widget.groupAdatar.NineGridImageViewAdapter;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Group;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.d */
/* loaded from: classes2.dex */
public class DeviceGroupSelectAdapter extends BaseQuickAdapter<ItemSelectAdapterEntity<Group>, BaseViewHolder> {

    /* renamed from: z */
    private NineGridImageViewAdapter<Fragment> f15611z;

    public DeviceGroupSelectAdapter(Fragment fragment, int i, @Nullable List<ItemSelectAdapterEntity<Group>> list) {
        super(i, list);
        this.f15611z = new NineGridImageViewAdapter<>(fragment);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ItemSelectAdapterEntity<Group> itemSelectAdapterEntity) {
        Group data = itemSelectAdapterEntity.getData();
        baseViewHolder.setText(R.id.tv_name, SlTalkClient.m8526e(data));
        baseViewHolder.setText(R.id.tv_count, UIUtils.m8602p(R.string.s_member_count, Integer.valueOf(data.getAllMemberCount())));
        NineGridImageView nineGridImageView = (NineGridImageView) baseViewHolder.getView(R.id.ngiv_group_avatar);
        nineGridImageView.setAdapter(this.f15611z);
        nineGridImageView.setImagesData(SlTalkClient.m8528c(data));
        if (itemSelectAdapterEntity.isEnable()) {
            baseViewHolder.getView(R.id.iv_check).setEnabled(true);
            baseViewHolder.getView(R.id.iv_check).setSelected(itemSelectAdapterEntity.isCheck());
            return;
        }
        baseViewHolder.getView(R.id.iv_check).setEnabled(false);
    }
}
