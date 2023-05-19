package com.ifengyu.intercom.p189l.p190a.p192b.p194b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.p026a.p027a.AppCompatResources;
import androidx.databinding.DataBindingUtil;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConfigFileEvent;
import com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2;
import com.ifengyu.intercom.device.lite.base.recycler.LinearLayoutManagerWapper;
import com.ifengyu.intercom.device.lite.base.recycler.RecyclerViewHolder;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p188k.FragmentConfigFileDetailBinding;
import com.ifengyu.intercom.p189l.p190a.p192b.p195c.ConfigFileViewModel;
import com.ifengyu.intercom.p189l.p198b.p201c.ChannelTypeTabAdapter;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3CustomListFragment;
import com.ifengyu.intercom.p189l.p198b.p201c.Mi3RemoteListFragment;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.span.QMUICustomTypefaceSpan;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.umeng.analytics.MobclickAgent;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.greenrobot.eventbus.EventBus;

/* renamed from: com.ifengyu.intercom.l.a.b.b.y */
/* loaded from: classes2.dex */
public abstract class BaseConfigFileDetailFragment extends BaseFragment {

    /* renamed from: A */
    private FragmentConfigFileDetailBinding f14077A;

    /* renamed from: B */
    private ConfigFileModel f14078B;

    /* renamed from: C */
    private C3968a f14079C;

    /* renamed from: z */
    private final String[] f14080z = {UIUtils.m8603o(R.string.channel_remote), UIUtils.m8603o(R.string.channel_custom)};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseConfigFileDetailFragment.java */
    /* renamed from: com.ifengyu.intercom.l.a.b.b.y$a */
    /* loaded from: classes2.dex */
    public static class C3968a extends BaseRecyclerAdapter2<ChannelModel> {

        /* renamed from: k */
        private final QMUICustomTypefaceSpan f14081k;

        public C3968a(Context context, List<ChannelModel> list) {
            super(context, list);
            this.f14081k = new QMUICustomTypefaceSpan("Kmedium", AppConstants.f13909c);
        }

        /* renamed from: w */
        private CharSequence m11914w(String str) {
            int indexOf = str.indexOf("/");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(UIUtils.m8594x(12.0f)), indexOf, spannableStringBuilder.length(), 17);
            spannableStringBuilder.setSpan(this.f14081k, 0, spannableStringBuilder.length(), 17);
            return spannableStringBuilder;
        }

        @Override // com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2
        /* renamed from: j */
        public int mo11916j(int i) {
            return R.layout.lite_config_file_detail_list_item;
        }

        @Override // com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2
        /* renamed from: v */
        public void mo11917e(RecyclerViewHolder recyclerViewHolder, int i, ChannelModel channelModel, boolean z) {
            recyclerViewHolder.m14188d(R.id.tv_number, channelModel.getLiteDisplaySeq());
            recyclerViewHolder.m14185g(AppConstants.f13908b, R.id.tv_number);
            if (!channelModel.isEmpty()) {
                recyclerViewHolder.m14184h(R.id.line, 0);
                recyclerViewHolder.m14184h(R.id.tv_detail1, 0);
                recyclerViewHolder.m14184h(R.id.tv_title2, 0);
                recyclerViewHolder.m14184h(R.id.tv_detail2, 0);
                recyclerViewHolder.m14188d(R.id.tv_title1, m11914w(channelModel.getDisplayReceiveFreqWithTone()));
                recyclerViewHolder.m14188d(R.id.tv_title2, m11914w(channelModel.getDisplaySendFreqWithTone()));
                recyclerViewHolder.m14189c(R.id.tv_detail1, R.string.lite_receive);
                recyclerViewHolder.m14186f(R.id.tv_title1, UIUtils.m8594x(18.0f));
                return;
            }
            recyclerViewHolder.m14184h(R.id.line, 8);
            recyclerViewHolder.m14184h(R.id.tv_detail1, 8);
            recyclerViewHolder.m14184h(R.id.tv_title2, 8);
            recyclerViewHolder.m14184h(R.id.tv_detail2, 8);
            recyclerViewHolder.m14188d(R.id.tv_title1, this.f12163d.getString(R.string.lite_empty_channel_text));
            recyclerViewHolder.m14185g(AppConstants.f13907a, R.id.tv_title1);
            recyclerViewHolder.m14186f(R.id.tv_title1, UIUtils.m8594x(15.0f));
        }
    }

    /* renamed from: h3 */
    private void m11930h3() {
        if (getActivity() == null || this.f14078B == null) {
            return;
        }
        this.f14077A.f13939A.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseConfigFileDetailFragment.this.m11928k3(view);
            }
        });
        Button m7339o = this.f14077A.f13939A.m7339o(R.string.config_file_import, QMUIViewHelper.m7473b());
        m7339o.setTextColor(AppCompatResources.m26123c(getActivity(), R.color.topbar_right_btn_color_state_list));
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.a.b.b.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseConfigFileDetailFragment.this.m11926m3(view);
            }
        });
        this.f14077A.f13939A.m7337q(this.f14078B.getName());
        int fromDeviceType = this.f14078B.getFromDeviceType();
        if (fromDeviceType == 9) {
            this.f14077A.f13940w.setVisibility(0);
            this.f14077A.f13941x.setVisibility(8);
            this.f14079C = new C3968a(getContext(), null);
            this.f14077A.f13940w.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
            this.f14077A.f13940w.addItemDecoration(new DividerItemDecoration(getActivity(), 1));
            this.f14077A.f13940w.setAdapter(this.f14079C);
        } else if (fromDeviceType == 14) {
            this.f14077A.f13940w.setVisibility(8);
            this.f14077A.f13941x.setVisibility(0);
            FragmentConfigFileDetailBinding fragmentConfigFileDetailBinding = this.f14077A;
            TabLayout tabLayout = fragmentConfigFileDetailBinding.f13942y;
            ViewPager2 viewPager2 = fragmentConfigFileDetailBinding.f13943z;
            viewPager2.setOffscreenPageLimit(-1);
            viewPager2.setAdapter(new ChannelTypeTabAdapter(getActivity(), new Fragment[]{Mi3RemoteListFragment.m11731s3(106), Mi3CustomListFragment.m11741v3(106)}));
            viewPager2.setSaveEnabled(false);
            new TabLayoutMediator(tabLayout, viewPager2, new TabLayoutMediator.TabConfigurationStrategy() { // from class: com.ifengyu.intercom.l.a.b.b.d
                @Override // com.google.android.material.tabs.TabLayoutMediator.TabConfigurationStrategy
                public final void onConfigureTab(TabLayout.Tab tab, int i) {
                    BaseConfigFileDetailFragment.this.m11924o3(tab, i);
                }
            }).attach();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m11928k3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m11926m3(View view) {
        m11918v3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m11924o3(TabLayout.Tab tab, int i) {
        tab.setCustomView(m11931g3(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m11922q3(List list) {
        C3968a c3968a = this.f14079C;
        if (c3968a != null) {
            c3968a.m14194t(list);
        }
        ConfigFileModel configFileModel = this.f14078B;
        if (configFileModel != null) {
            configFileModel.setChannelModelList(list);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ChannelModel channelModel = (ChannelModel) it2.next();
            if (channelModel.getIsCustomCh()) {
                arrayList.add(channelModel);
            }
            if (channelModel.getIsRemoteCh()) {
                arrayList2.add(channelModel);
            }
        }
        EventBus.m174c().m161p(new ConfigFileEvent(arrayList, arrayList2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11919t3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        ConfigFileModel configFileModel = this.f14078B;
        if (configFileModel != null) {
            List<ChannelModel> channelModelList = configFileModel.getChannelModelList();
            if (channelModelList != null) {
                mo11761u3(channelModelList);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("userId", MiTalkClientUtil.m11243P());
            int fromDeviceType = this.f14078B.getFromDeviceType();
            if (fromDeviceType == 9) {
                MobclickAgent.onEventObject(getContext(), "Lite_ImportClick_FromConfigDetail", hashMap);
            } else if (fromDeviceType == 14) {
                MobclickAgent.onEventObject(getContext(), "Mi3_ImportClick_FromConfigDetail", hashMap);
            }
        }
    }

    /* renamed from: v3 */
    private void m11918v3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.import_config_file_confirm_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3949f.f14055a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.a.b.b.e
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                BaseConfigFileDetailFragment.this.m11919t3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f14078B = (ConfigFileModel) bundle.getParcelable("config_file");
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentConfigFileDetailBinding fragmentConfigFileDetailBinding = (FragmentConfigFileDetailBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_config_file_detail, null, false);
        this.f14077A = fragmentConfigFileDetailBinding;
        fragmentConfigFileDetailBinding.m23011A(getActivity());
        mo11762i3();
        m11930h3();
        return this.f14077A.mo23006a();
    }

    /* renamed from: g3 */
    public View m11931g3(int i) {
        TextView textView = new TextView(getContext());
        int m8614d = UIUtils.m8614d(R.color.color_black_333333);
        textView.setText(this.f14080z[i]);
        textView.setTextColor(m8614d);
        textView.setTextSize(0, UIUtils.m8594x(14.0f));
        textView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        textView.setGravity(17);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: i3 */
    public void mo11762i3() {
        ConfigFileViewModel configFileViewModel = (ConfigFileViewModel) new ViewModelProvider(requireActivity()).m22691a(ConfigFileViewModel.class);
        configFileViewModel.m11842h().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.a.b.b.b
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseConfigFileDetailFragment.this.m11922q3((List) obj);
            }
        });
        ConfigFileModel configFileModel = this.f14078B;
        if (configFileModel != null) {
            configFileViewModel.m11850U(configFileModel);
        }
    }

    /* renamed from: u3 */
    protected abstract void mo11761u3(List<ChannelModel> list);
}
