package com.ifengyu.intercom.p189l.p198b.p201c;

import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p191a.RemoteChannelCache;
import com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.library.utils.UIUtils;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* renamed from: com.ifengyu.intercom.l.b.c.p1 */
/* loaded from: classes2.dex */
public class Mi3ConfigFileListFragment extends BaseConfigFileListFragment {

    /* renamed from: F */
    private Mi3ViewModel f14185F;

    /* renamed from: c4 */
    private void m11753c4() {
        ConfigFileModel configFileModel = new ConfigFileModel();
        configFileModel.setCreateTime(System.currentTimeMillis());
        configFileModel.setUpdateTime(System.currentTimeMillis());
        DeviceModel value = this.f14185F.m11462v().getValue();
        configFileModel.setFrom(value != null ? value.getName() : "");
        configFileModel.setFromDeviceType(14);
        ArrayList<ChannelModel> m11465s = this.f14185F.m11465s();
        if (m11465s == null) {
            m10311Y2(UIUtils.m8603o(R.string.config_backup_failed));
            return;
        }
        configFileModel.setChannelModelList(m11465s);
        this.f14086E.m11844f(configFileModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d4 */
    public /* synthetic */ void m11751e4(OperationResult operationResult) {
        if (operationResult == null || !Objects.equals(operationResult.getAction(), OperationResult.ACTION_IMPORT_CONFIG_FILE_CHANNELS)) {
            return;
        }
        if (operationResult.getStatus() == 1) {
            m10306d3(R.string.import_config_file_success);
        } else {
            m10312X2(R.string.import_config_file_failed);
        }
    }

    /* renamed from: f4 */
    public static Mi3ConfigFileListFragment m11750f4() {
        return new Mi3ConfigFileListFragment();
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: P3 */
    protected void mo11757P3(List<ChannelModel> list) {
        this.f14185F.m11524B(list);
        HashMap hashMap = new HashMap();
        hashMap.put("userId", MiTalkClientUtil.m11243P());
        MobclickAgent.onEventObject(getContext(), "Mi3_ImportClick_FromConfigList", hashMap);
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: Q3 */
    protected void mo11756Q3(ConfigFileModel configFileModel) {
        this.f14185F.m11459y().setValue(null);
        m8041v2(Mi3ConfigFileDetailFragment.m11758y3(configFileModel));
    }

    @Override // com.ifengyu.intercom.p189l.p190a.p192b.p194b.BaseConfigFileListFragment
    /* renamed from: R3 */
    protected void mo11755R3() {
        if (RemoteChannelCache.m11943d() && RemoteChannelCache.m11939h() == 20 && CustomChannelCache.m11951d()) {
            m11753c4();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            MobclickAgent.onEventObject(getContext(), "Mi3_BackupClick_FromConfig", hashMap);
            return;
        }
        UIUtils.m8593y(R.string.please_wait);
        this.f14185F.m11508R();
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
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14185F = mi3ViewModel;
        mi3ViewModel.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ConfigFileListFragment.this.m11751e4((OperationResult) obj);
            }
        });
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f14185F.m11497b0();
    }
}
