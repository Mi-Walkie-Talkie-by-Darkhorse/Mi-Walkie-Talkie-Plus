package com.ifengyu.intercom.p189l.p198b.p199a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3.adapter.entity.ChannelListItemEntity;
import com.ifengyu.library.utils.UIUtils;
import java.util.List;

/* renamed from: com.ifengyu.intercom.l.b.a.b */
/* loaded from: classes2.dex */
public class Mi3RemoteListAdapter extends BaseQuickAdapter<ChannelListItemEntity, BaseViewHolder> {

    /* renamed from: z */
    private final int f14125z;

    public Mi3RemoteListAdapter(int i, int i2, @Nullable List<ChannelListItemEntity> list) {
        super(i2, list);
        this.f14125z = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ChannelListItemEntity channelListItemEntity) {
        baseViewHolder.setText(R.id.chSeq, channelListItemEntity.getChannel().getDisplayNamePrefix());
        baseViewHolder.setText(R.id.chFreq, channelListItemEntity.getChannel().getDisplayReceiveFreq());
        int i = this.f14125z;
        if (i != 1) {
            if (i == 2) {
                baseViewHolder.setVisible(R.id.rightArrow, true);
                return;
            } else if (i == 3) {
                baseViewHolder.setGone(R.id.rightArrow, true);
                baseViewHolder.getView(R.id.chContainer).setBackground(null);
                return;
            } else {
                return;
            }
        }
        int status = channelListItemEntity.getStatus();
        if (status == 0) {
            baseViewHolder.setTextColor(R.id.chSeq, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setTextColor(R.id.chFreq, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_grey_corner);
        } else if (status == 1) {
            baseViewHolder.setTextColor(R.id.chSeq, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setTextColor(R.id.chFreq, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_blue_corner);
        } else if (status != 2) {
        } else {
            baseViewHolder.setTextColor(R.id.chSeq, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setTextColor(R.id.chFreq, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_blue_corner);
        }
    }
}
