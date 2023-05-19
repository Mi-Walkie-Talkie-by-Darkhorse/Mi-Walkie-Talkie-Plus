package com.ifengyu.intercom.p216ui.talk.p225b3;

import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.talk.SlTalkClient;
import com.shanlitech.p245et.model.Member;
import java.util.List;

/* renamed from: com.ifengyu.intercom.ui.talk.b3.i */
/* loaded from: classes2.dex */
public class MemberInGroupSelectAdapter extends BaseQuickAdapter<ItemSelectAdapterEntity<Member>, BaseViewHolder> {

    /* renamed from: z */
    private final Fragment f15615z;

    public MemberInGroupSelectAdapter(Fragment fragment, int i, @Nullable List<ItemSelectAdapterEntity<Member>> list) {
        super(i, list);
        this.f15615z = fragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ItemSelectAdapterEntity<Member> itemSelectAdapterEntity) {
        Member data = itemSelectAdapterEntity.getData();
        ImageLoader.m8705f(this.f15615z, (ImageView) baseViewHolder.getView(R.id.iv_contact_avatar), data.getUser().getAvatar());
        baseViewHolder.setText(R.id.tv_contact_display_name, SlTalkClient.m8523h(data));
        baseViewHolder.setGone(R.id.iv_is_device, data.getUser().getRole() != 0);
        if (itemSelectAdapterEntity.isEnable()) {
            baseViewHolder.getView(R.id.iv_check).setEnabled(true);
            baseViewHolder.getView(R.id.iv_check).setSelected(itemSelectAdapterEntity.isCheck());
            return;
        }
        baseViewHolder.getView(R.id.iv_check).setEnabled(false);
    }
}
