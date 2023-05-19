package com.ifengyu.intercom.device.mi3gw.p162a;

import android.text.TextUtils;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.http.entity.TempMember;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.mi3gw.a.e */
/* loaded from: classes2.dex */
public class MemberInDeviceGroupSelectAdapter extends BaseQuickAdapter<ItemSelectAdapterEntity<TempMember>, BaseViewHolder> {

    /* renamed from: z */
    private final Fragment f12426z;

    public MemberInDeviceGroupSelectAdapter(Fragment fragment, int i, @Nullable List<ItemSelectAdapterEntity<TempMember>> list) {
        super(i, list);
        this.f12426z = fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ItemSelectAdapterEntity<TempMember> itemSelectAdapterEntity) {
        TempMember data = itemSelectAdapterEntity.getData();
        ImageLoader.m8705f(this.f12426z, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), data.getAvatar());
        if (!TextUtils.isEmpty(data.getNicknameIn())) {
            baseViewHolder.setText(R.id.tv_contact_display_name, data.getNicknameIn());
        } else {
            baseViewHolder.setText(R.id.tv_contact_display_name, data.getNickname());
        }
        baseViewHolder.setGone(R.id.iv_is_device, data.getUserType() != 0);
        if (itemSelectAdapterEntity.isEnable()) {
            baseViewHolder.getView(R.id.iv_check).setEnabled(true);
            baseViewHolder.getView(R.id.iv_check).setSelected(itemSelectAdapterEntity.isCheck());
            return;
        }
        baseViewHolder.getView(R.id.iv_check).setEnabled(false);
    }
}
