package com.ifengyu.intercom.p189l.p198b.p199a;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3.adapter.entity.ChannelListItemEntity;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUICustomTypefaceSpan;
import java.util.List;

/* renamed from: com.ifengyu.intercom.l.b.a.a */
/* loaded from: classes2.dex */
public class Mi3CustomListAdapter extends BaseQuickAdapter<ChannelListItemEntity, BaseViewHolder> {

    /* renamed from: A */
    private final QMUICustomTypefaceSpan f14123A;

    /* renamed from: z */
    private final int f14124z;

    public Mi3CustomListAdapter(int i, int i2, @Nullable List<ChannelListItemEntity> list) {
        super(i2, list);
        this.f14124z = i;
        this.f14123A = new QMUICustomTypefaceSpan("Kmedium", AppConstants.f13909c);
    }

    /* renamed from: s0 */
    private CharSequence m11800s0(String str) {
        int indexOf = str.indexOf("/");
        if (indexOf != -1) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(UIUtils.m8594x(12.0f)), indexOf, spannableStringBuilder.length(), 17);
            spannableStringBuilder.setSpan(this.f14123A, 0, spannableStringBuilder.length(), 17);
            return spannableStringBuilder;
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ChannelListItemEntity channelListItemEntity) {
        if (TextUtils.isEmpty(channelListItemEntity.getChannel().getChannelName())) {
            baseViewHolder.setText(R.id.chName, channelListItemEntity.getChannel().getDisplayNamePrefix());
        } else {
            baseViewHolder.setText(R.id.chName, channelListItemEntity.getChannel().getDisplayName());
        }
        baseViewHolder.setText(R.id.rxFreq, m11800s0(channelListItemEntity.getChannel().getDisplayReceiveFreqWithTone()));
        baseViewHolder.setText(R.id.txFreq, m11800s0(channelListItemEntity.getChannel().getDisplaySendFreqWithTone()));
        int i = this.f14124z;
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
            baseViewHolder.setTextColor(R.id.chName, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setTextColor(R.id.rxFreq, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setTextColor(R.id.txFreq, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setTextColor(R.id.rxFreqSub, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setTextColor(R.id.txFreqSub, UIUtils.m8614d(R.color.color_black_333333));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_grey_corner);
        } else if (status == 1) {
            baseViewHolder.setTextColor(R.id.chName, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setTextColor(R.id.rxFreq, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setTextColor(R.id.txFreq, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setTextColor(R.id.rxFreqSub, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setTextColor(R.id.txFreqSub, UIUtils.m8614d(R.color.mi3_select));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_blue_corner);
        } else if (status != 2) {
        } else {
            baseViewHolder.setTextColor(R.id.chName, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setTextColor(R.id.rxFreq, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setTextColor(R.id.txFreq, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setTextColor(R.id.rxFreqSub, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setTextColor(R.id.txFreqSub, UIUtils.m8614d(R.color.mi3_ch_can_not_click));
            baseViewHolder.setBackgroundResource(R.id.chContainer, R.drawable.bg_material_ripple_blue_corner);
        }
    }
}
