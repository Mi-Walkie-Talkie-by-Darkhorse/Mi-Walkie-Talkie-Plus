package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinCHSettingActivity;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import org.json.JSONObject;
import p048b.p078f.p079a.p080a.CommonAdapter;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* loaded from: classes2.dex */
public class DolphinPresetFragment extends DolphinChannelBaseFragment implements View.OnClickListener {

    /* renamed from: r */
    private static final String f12907r = DolphinPresetFragment.class.getSimpleName();

    /* renamed from: s */
    private static final int[] f12908s = UIUtils.m8610h(R.array.dolphin_remote_channel);

    /* renamed from: t */
    private static final int[] f12909t = UIUtils.m8610h(R.array.dolphin_public_channel);

    /* renamed from: l */
    private List<DolphinChannelModel> f12910l = new ArrayList();

    /* renamed from: m */
    private List<DolphinChannelModel> f12911m = new ArrayList();
    @BindView(R.id.btn_active_device)
    TextView mBtnActiveDevice;
    @BindView(R.id.ll_active_device_container)
    LinearLayout mLlActiveDeviceContainer;
    @BindView(R.id.ll_long_distance_container)
    LinearLayout mLlLongDistanceContainer;
    @BindView(R.id.rv_public)
    RecyclerView mRvPublic;
    @BindView(R.id.rv_remote)
    RecyclerView mRvRemote;

    /* renamed from: n */
    private DolphinCHSettingActivity f12912n;

    /* renamed from: o */
    private DolphinChannelModel f12913o;

    /* renamed from: p */
    private CommonAdapter<DolphinChannelModel> f12914p;

    /* renamed from: q */
    private CommonAdapter<DolphinChannelModel> f12915q;

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$a */
    /* loaded from: classes2.dex */
    class C3572a extends CommonAdapter<DolphinChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$a$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3573a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ DolphinChannelModel f12917a;

            View$OnClickListenerC3573a(DolphinChannelModel dolphinChannelModel) {
                this.f12917a = dolphinChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinPresetFragment.this.f12913o = this.f12917a;
                DolphinPresetFragment.this.m13199V1(this.f12917a);
            }
        }

        C3572a(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, DolphinChannelModel dolphinChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (DolphinPresetFragment.this.f12912n != null) {
                DolphinChannelModel m13309I = DolphinPresetFragment.this.f12912n.m13309I();
                if (m13309I != null && m13309I.equals(dolphinChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3573a(dolphinChannelModel));
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$b */
    /* loaded from: classes2.dex */
    class C3574b extends CommonAdapter<DolphinChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$b$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3575a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ DolphinChannelModel f12920a;

            View$OnClickListenerC3575a(DolphinChannelModel dolphinChannelModel) {
                this.f12920a = dolphinChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinPresetFragment.this.f12913o = this.f12920a;
                DolphinPresetFragment.this.m13199V1(this.f12920a);
            }
        }

        C3574b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, DolphinChannelModel dolphinChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (DolphinPresetFragment.this.f12912n != null) {
                DolphinChannelModel m13309I = DolphinPresetFragment.this.f12912n.m13309I();
                if (m13309I != null && m13309I.equals(dolphinChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3575a(dolphinChannelModel));
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$c */
    /* loaded from: classes2.dex */
    class RunnableC3576c implements Runnable {

        /* renamed from: a */
        final /* synthetic */ MitalkProtos.ParamUpdate f12922a;

        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$c$a */
        /* loaded from: classes2.dex */
        class RunnableC3577a implements Runnable {
            RunnableC3577a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DolphinPresetFragment.this.f12912n.m10283n();
                if (DolphinPresetFragment.this.f12912n.f15062h != null) {
                    DolphinPresetFragment.this.f12912n.f15062h.mo10270a();
                }
            }
        }

        RunnableC3576c(MitalkProtos.ParamUpdate paramUpdate) {
            this.f12922a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            UIUtils.m8596v(DolphinPresetFragment.this.f12912n.f15063i);
            if (this.f12922a.getResult() == MitalkProtos.STATECODE.SUCCESS) {
                DolphinPresetFragment.this.f12912n.m10277t(R.drawable.load_success);
                DolphinPresetFragment.this.f12912n.m10276u(R.string.activation_successful);
                UIUtils.m8599s(new RunnableC3577a(), 800L);
                return;
            }
            DolphinPresetFragment.this.f12912n.f15063i.run();
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$d */
    /* loaded from: classes2.dex */
    class C3578d implements BaseActivity1.InterfaceC4462d {
        C3578d() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: a */
        public void mo10270a() {
            DolphinPresetFragment.this.mLlActiveDeviceContainer.setVisibility(8);
            DolphinPresetFragment.this.mLlLongDistanceContainer.setVisibility(0);
            String m11211g = MiTalkClientUtil.m11211g();
            if (TextUtils.isEmpty(m11211g)) {
                return;
            }
            DolphinPresetFragment.this.m13233j2(m11211g);
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: b */
        public void mo10269b() {
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1.InterfaceC4462d
        /* renamed from: c */
        public void mo10268c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinPresetFragment$e */
    /* loaded from: classes2.dex */
    public class C3579e extends ErrorConsumer {
        C3579e(DolphinPresetFragment dolphinPresetFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(DolphinPresetFragment.f12907r, "activateDevice fail");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: j2 */
    public void m13233j2(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("deviceId", str);
        hashMap.put("active", 1);
        AppServiceClient.m11355a().m11390Q(RequestBody.create(MediaType.parse("application/json; charset=utf-8"), new JSONObject(hashMap).toString())).compose(Transformer.m8717a()).subscribe(C3585a.f12945a, new C3579e(this));
    }

    /* renamed from: l2 */
    public static DolphinPresetFragment m13231l2(String str, boolean z, int i) {
        DolphinPresetFragment dolphinPresetFragment = new DolphinPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i);
        dolphinPresetFragment.setArguments(bundle);
        return dolphinPresetFragment;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: O1 */
    protected void mo13206O1(StateUpdateEvent stateUpdateEvent) {
        if (this.f12948g) {
            if (stateUpdateEvent.isHasCh1()) {
                if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                    this.f12912n.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                    return;
                }
                this.f12912n.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh1()));
            }
        } else if (stateUpdateEvent.isHasCh2()) {
            if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh2().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.f12912n.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                return;
            }
            this.f12912n.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh2()));
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: P1 */
    protected void mo13205P1(StateUpdateEvent stateUpdateEvent) {
        DolphinChannelModel dolphinChannelModel = this.f12913o;
        if (dolphinChannelModel != null) {
            this.f12912n.m13305M(dolphinChannelModel);
            this.f12912n.m13306L(this.f12913o);
            CommonAdapter<DolphinChannelModel> commonAdapter = this.f12914p;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<DolphinChannelModel> commonAdapter2 = this.f12915q;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f12912n = (DolphinCHSettingActivity) getActivity();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DolphinCHSettingActivity dolphinCHSettingActivity;
        if (view.getId() == R.id.btn_active_device && (dolphinCHSettingActivity = this.f12912n) != null) {
            dolphinCHSettingActivity.m10289B(new C3578d());
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        while (true) {
            int[] iArr = f12908s;
            if (i >= iArr.length) {
                break;
            }
            int i2 = i + 1;
            this.f12910l.add(new DolphinChannelModel(i, 0, UIUtils.m8602p(R.string.channel_long_distance_d, Integer.valueOf(i2)), iArr[i]));
            i = i2;
        }
        int i3 = 0;
        while (true) {
            int[] iArr2 = f12909t;
            if (i3 >= iArr2.length) {
                return;
            }
            int i4 = i3 + 1;
            this.f12911m.add(new DolphinChannelModel(i3, 1, UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(i4)), iArr2[i3]));
            i3 = i4;
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_preset, viewGroup, false);
        ButterKnife.bind(this, inflate);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        C3572a c3572a = new C3572a(getActivity(), R.layout.layout_preset_item, this.f12910l);
        this.f12914p = c3572a;
        recyclerView.setAdapter(c3572a);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_public);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        C3574b c3574b = new C3574b(getActivity(), R.layout.layout_preset_item, this.f12911m);
        this.f12915q = c3574b;
        recyclerView2.setAdapter(c3574b);
        if (this.f12952k.m12361D0()) {
            this.mLlActiveDeviceContainer.setVisibility(8);
            this.mLlLongDistanceContainer.setVisibility(0);
        } else {
            this.mLlActiveDeviceContainer.setVisibility(0);
            this.mLlLongDistanceContainer.setVisibility(8);
        }
        this.mBtnActiveDevice.setOnClickListener(this);
        return inflate;
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        C4161y.m11054a(f12907r, "receiveChannelResponse");
        DolphinCHSettingActivity dolphinCHSettingActivity = this.f12912n;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.m13308J() == 0) {
            m13213H1(stateUpdateEvent);
        }
    }

    @Subscribe
    public void receiveParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        UIUtils.m8598t(new RunnableC3576c(paramUpdate));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f12907r, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f12907r;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            CommonAdapter<DolphinChannelModel> commonAdapter = this.f12914p;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<DolphinChannelModel> commonAdapter2 = this.f12915q;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
        }
    }
}
