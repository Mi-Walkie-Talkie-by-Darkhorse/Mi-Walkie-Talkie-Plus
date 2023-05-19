package com.ifengyu.intercom.p189l.p190a.p192b.p193a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.configFile.entity.ConfigItemAdapterEntity;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.ifengyu.intercom.l.a.b.a.a */
/* loaded from: classes2.dex */
public class ConfigFileAdapter extends BaseQuickAdapter<ConfigItemAdapterEntity, BaseViewHolder> {

    /* renamed from: z */
    private boolean f14049z;

    public ConfigFileAdapter(int i, @Nullable List<ConfigItemAdapterEntity> list) {
        super(i, list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    /* renamed from: r0 */
    public void mo9365w(@NonNull BaseViewHolder baseViewHolder, ConfigItemAdapterEntity configItemAdapterEntity) {
        ConfigFileModel configFile = configItemAdapterEntity.getConfigFile();
        baseViewHolder.setText(R.id.tv_title, configFile.getName());
        baseViewHolder.setText(R.id.tv_detail, UIUtils.m8602p(R.string.config_list_item_detail_text, configFile.getFrom()));
        if (m11935u0()) {
            if (configItemAdapterEntity.isSelect()) {
                baseViewHolder.setImageResource(R.id.iv_arrow, R.mipmap.icon_checkbox_selected);
                return;
            } else {
                baseViewHolder.setImageResource(R.id.iv_arrow, R.mipmap.icon_checkbox_unselected);
                return;
            }
        }
        baseViewHolder.setImageResource(R.id.iv_arrow, R.mipmap.icon_arrow_right);
    }

    /* renamed from: s0 */
    public ArrayList<ConfigFileModel> m11937s0() {
        ArrayList<ConfigFileModel> arrayList = new ArrayList<>();
        for (ConfigItemAdapterEntity configItemAdapterEntity : m17070D()) {
            if (configItemAdapterEntity.isSelect()) {
                arrayList.add(configItemAdapterEntity.getConfigFile());
            }
        }
        return arrayList;
    }

    /* renamed from: t0 */
    public int m11936t0() {
        int i = 0;
        for (ConfigItemAdapterEntity configItemAdapterEntity : m17070D()) {
            if (configItemAdapterEntity.isSelect()) {
                i++;
            }
        }
        return i;
    }

    /* renamed from: u0 */
    public boolean m11935u0() {
        return this.f14049z;
    }

    /* renamed from: v0 */
    public void m11934v0(boolean z, int i) {
        this.f14049z = z;
        List<ConfigItemAdapterEntity> m17070D = m17070D();
        int size = m17070D.size();
        int i2 = 0;
        while (i2 < size) {
            m17070D.get(i2).setSelect(i == i2);
            i2++;
        }
        notifyItemRangeChanged(0, size);
    }

    /* renamed from: w0 */
    public void m11933w0(boolean z) {
        List<ConfigItemAdapterEntity> m17070D = m17070D();
        for (ConfigItemAdapterEntity configItemAdapterEntity : m17070D) {
            configItemAdapterEntity.setSelect(z);
        }
        notifyItemRangeChanged(0, m17070D.size());
    }

    /* renamed from: x0 */
    public void m11932x0(int i, boolean z) {
        m17070D().get(i).setSelect(z);
        notifyItemChanged(i);
    }
}
