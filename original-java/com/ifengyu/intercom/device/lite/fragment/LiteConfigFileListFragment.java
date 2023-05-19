package com.ifengyu.intercom.device.lite.fragment;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.device.lite.p161e.LiteViewModel;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.lite.fragment.j1 */
/* loaded from: classes2.dex */
public class LiteConfigFileListFragment extends BaseConfigFileListFragment {

    /* renamed from: F */
    private LiteViewModel f12372F;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d4 */
    public /* synthetic */ void m13850e4(String str) {
        if (str != null) {
            m10312X2(R.string.import_config_file_failed);
            return;
        }
        m10306d3(R.string.import_config_file_success);
        RxBus.m11806d().m11805e(LiteEvent.IMPORTED);
    }

    /* renamed from: f4 */
    public static LiteConfigFileListFragment m13849f4() {
        return new LiteConfigFileListFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m13852c4(List list) {
        if (list == null) {
            m10312X2(R.string.config_backup_failed);
            return;
        }
        ConfigFileModel configFileModel = new ConfigFileModel();
        configFileModel.setCreateTime(System.currentTimeMillis());
        configFileModel.setUpdateTime(System.currentTimeMillis());
        DeviceModel value = this.f12372F.m14035p().getValue();
        configFileModel.setFrom(value != null ? value.getName() : "");
        configFileModel.setFromDeviceType(9);
        configFileModel.setChannelModelList(list);
        this.f14086E.m11844f(configFileModel);
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: P3 */
    protected void mo11757P3(List<ChannelModel> list) {
        this.f12372F.m14031t(list);
        HashMap hashMap = new HashMap();
        hashMap.put("userId", MiTalkClientUtil.m11243P());
        MobclickAgent.onEventObject(getContext(), "Lite_ImportClick_FromConfigList", hashMap);
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: Q3 */
    protected void mo11756Q3(ConfigFileModel configFileModel) {
        m8041v2(LiteConfigFileDetailFragment.m13853y3(configFileModel));
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: R3 */
    protected void mo11755R3() {
        m10308b3();
        this.f12372F.m14063H(1);
        HashMap hashMap = new HashMap();
        hashMap.put("userId", MiTalkClientUtil.m11243P());
        MobclickAgent.onEventObject(getContext(), "Lite_BackupClick_FromConfig", hashMap);
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: S3 */
    protected void mo11754S3(ConfigFileModel configFileModel) {
        m10308b3();
        this.f14086E.m11850U(configFileModel);
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: k3 */
    public void mo11749k3() {
        super.mo11749k3();
        LiteViewModel liteViewModel = (LiteViewModel) new ViewModelProvider(requireActivity()).m22691a(LiteViewModel.class);
        this.f12372F = liteViewModel;
        liteViewModel.m14037n().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.i0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteConfigFileListFragment.this.m13852c4((List) obj);
            }
        });
        this.f12372F.m14040k().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.j0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteConfigFileListFragment.this.m13850e4((String) obj);
            }
        });
        this.f12372F.m14061J();
    }
}
