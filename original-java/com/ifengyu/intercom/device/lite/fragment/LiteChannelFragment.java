package com.ifengyu.intercom.device.lite.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2;
import com.ifengyu.intercom.device.lite.base.recycler.LinearLayoutManagerWapper;
import com.ifengyu.intercom.device.lite.base.recycler.RecyclerViewHolder;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.device.lite.p161e.LiteViewModel;
import com.ifengyu.intercom.device.lite.utils.FormatUtil;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.ConfigFileModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p189l.p190a.p192b.p195c.ConfigFileViewModel;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.umeng.analytics.MobclickAgent;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class LiteChannelFragment extends BaseFragment {

    /* renamed from: A */
    private LiteViewModel f12286A;

    /* renamed from: B */
    private ConfigFileViewModel f12287B;
    @BindView(R.id.content_board)
    RelativeLayout mContentBoard;
    @BindView(R.id.empty_board)
    LinearLayout mEmptyBoard;
    @BindView(R.id.ll_channel_board)
    RelativeLayout mLlChannelBoard;
    @BindView(R.id.recycler_view)
    RecyclerView mRecyclerView;
    @BindView(R.id.rl_channel_backup)
    RelativeLayout mRlChannelBackup;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_board_detail)
    TextView mTvBoardDetail;
    @BindView(R.id.tv_board_title)
    TextView mTvBoardTitle;
    @BindView(R.id.tv_channel_name)
    TextView mTvChannelName;
    @BindView(R.id.tv_receive_freq)
    TextView mTvReceiveFreq;
    @BindView(R.id.tv_send_freq)
    TextView mTvSendFreq;

    /* renamed from: z */
    private C3237c f12288z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelFragment$a */
    /* loaded from: classes2.dex */
    public class C3235a implements BaseRecyclerAdapter2.InterfaceC3183a<ChannelModel> {
        C3235a() {
        }

        @Override // com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2.InterfaceC3183a
        /* renamed from: b */
        public void mo13934a(View view, int i, ChannelModel channelModel) {
            LiteChannelFragment.this.m8035y2(LiteChannelEditFragment.m13968q3(channelModel), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelFragment$b */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3236b implements View.OnClickListener {
        View$OnClickListenerC3236b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteChannelFragment.this.m13957G3();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteChannelFragment$c */
    /* loaded from: classes2.dex */
    public static class C3237c extends BaseRecyclerAdapter2<ChannelModel> {
        C3237c(Context context, List<ChannelModel> list) {
            super(context, list);
        }

        @Override // com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2
        /* renamed from: j */
        public int mo11916j(int i) {
            return R.layout.lite_channel_list_item;
        }

        @Override // com.ifengyu.intercom.device.lite.base.recycler.BaseRecyclerAdapter2
        /* renamed from: v */
        public void mo11917e(RecyclerViewHolder recyclerViewHolder, int i, ChannelModel channelModel, boolean z) {
            TextView m14190b = recyclerViewHolder.m14190b(R.id.tv_number);
            m14190b.setTypeface(AppConstants.f13908b);
            m14190b.setText(channelModel.getLiteDisplaySeq());
            TextView m14190b2 = recyclerViewHolder.m14190b(R.id.tv_freq_receive);
            TextView m14190b3 = recyclerViewHolder.m14190b(R.id.tv_freq_send);
            if (channelModel.isEmpty()) {
                recyclerViewHolder.m14184h(R.id.empty_container, 0);
                recyclerViewHolder.m14184h(R.id.content_container, 8);
            } else {
                recyclerViewHolder.m14184h(R.id.empty_container, 8);
                recyclerViewHolder.m14184h(R.id.content_container, 0);
            }
            if (z) {
                recyclerViewHolder.m14187e(R.id.tv_number, R.color.lite_colorAccent30);
                recyclerViewHolder.m14187e(R.id.tv_empty_title, R.color.lite_colorAccent);
                recyclerViewHolder.m14187e(R.id.tv_empty_detail, R.color.lite_colorAccent50);
                recyclerViewHolder.m14187e(R.id.tv_freq_receive, R.color.lite_colorAccent);
                recyclerViewHolder.m14187e(R.id.tv_freq_send, R.color.lite_colorAccent);
                recyclerViewHolder.m14187e(R.id.tv_receive, R.color.lite_colorAccent70);
                recyclerViewHolder.m14187e(R.id.tv_send, R.color.lite_colorAccent70);
                m14190b2.setText(FormatUtil.m13840a(channelModel.getDisplayReceiveFreqWithTone()));
                m14190b3.setText(FormatUtil.m13840a(channelModel.getDisplaySendFreqWithTone()));
                return;
            }
            recyclerViewHolder.m14187e(R.id.tv_number, R.color.lite_channel_seq_text_color);
            recyclerViewHolder.m14187e(R.id.tv_empty_title, R.color.black70);
            recyclerViewHolder.m14187e(R.id.tv_empty_detail, R.color.black50);
            recyclerViewHolder.m14187e(R.id.tv_freq_receive, R.color.black70);
            recyclerViewHolder.m14187e(R.id.tv_freq_send, R.color.black70);
            recyclerViewHolder.m14187e(R.id.tv_receive, R.color.black50);
            recyclerViewHolder.m14187e(R.id.tv_send, R.color.black50);
            m14190b2.setText(FormatUtil.m13839b(channelModel.getDisplayReceiveFreqWithTone()));
            m14190b3.setText(FormatUtil.m13839b(channelModel.getDisplaySendFreqWithTone()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m13961C3(QMUIDialog qMUIDialog, int i) {
        m8041v2(LiteConfigFileListFragment.m13849f4());
        qMUIDialog.dismiss();
    }

    /* renamed from: E3 */
    public static LiteChannelFragment m13959E3(ChannelModel channelModel) {
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        LiteChannelFragment liteChannelFragment = new LiteChannelFragment();
        liteChannelFragment.setArguments(bundle);
        return liteChannelFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public void m13958F3(ChannelModel channelModel) {
        m10329C2();
        ChannelModel m14204i = this.f12288z.m14204i(channelModel.getChannelSeq());
        m14204i.setReceiveFreq(channelModel.getReceiveFreq());
        m14204i.setSendFreq(channelModel.getSendFreq());
        m14204i.setReceiveToneType(channelModel.getReceiveToneType());
        m14204i.setReceiveToneValue(channelModel.getReceiveToneValue());
        m14204i.setSendToneType(channelModel.getSendToneType());
        m14204i.setSendToneValue(channelModel.getSendToneValue());
        this.f12288z.notifyDataSetChanged();
        ChannelModel value = this.f12286A.m14036o().getValue();
        if (value == null || channelModel.getChannelSeq() != value.getChannelSeq()) {
            return;
        }
        this.f12286A.m14036o().setValue(channelModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public void m13957G3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.config_file_backup_dialog_message);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3316v.f12401a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.f0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LiteChannelFragment.this.m13963A3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: H3 */
    private void m13956H3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.config_file_backup_finish_text);
        messageDialogBuilder.m7300b(0, R.string.btn_back, 2, C3278e0.f12356a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.lookup, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.c0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LiteChannelFragment.this.m13961C3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: I3 */
    private void m13955I3(ChannelModel channelModel) {
        if (channelModel == null) {
            return;
        }
        if (channelModel.isEmpty()) {
            this.mTvChannelName.setText(UIUtils.m8602p(R.string.lite_channel_name_placeholder, channelModel.getLiteDisplaySeq()));
            this.mContentBoard.setVisibility(8);
            this.mEmptyBoard.setVisibility(0);
            return;
        }
        this.mContentBoard.setVisibility(0);
        this.mEmptyBoard.setVisibility(8);
        this.mTvChannelName.setText(UIUtils.m8602p(R.string.lite_channel_name_placeholder, channelModel.getLiteDisplaySeq()));
        this.mTvReceiveFreq.setText(channelModel.getDisplayReceiveFreq());
        this.mTvSendFreq.setText(channelModel.getDisplaySendFreq());
        UIUtils.m8595w(AppConstants.f13909c, this.mTvReceiveFreq, this.mTvSendFreq);
    }

    /* renamed from: i3 */
    private void m13952i3() {
        ConfigFileViewModel configFileViewModel = (ConfigFileViewModel) ViewModelProviders.m22685a(this).m22691a(ConfigFileViewModel.class);
        this.f12287B = configFileViewModel;
        configFileViewModel.m11841i().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.z
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.m13948m3((ConfigFileModel) obj);
            }
        });
        LiteViewModel liteViewModel = (LiteViewModel) ViewModelProviders.m22685a(this).m22691a(LiteViewModel.class);
        this.f12286A = liteViewModel;
        liteViewModel.m14036o().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.w
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.m13946o3((ChannelModel) obj);
            }
        });
        this.f12286A.m14037n().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.b0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.m13944q3((List) obj);
            }
        });
        this.f12286A.m14038m().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.d0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.m13958F3((ChannelModel) obj);
            }
        });
        this.f12286A.m14033r().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.a0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.m13942s3((String) obj);
            }
        });
        this.f12286A.m14062I();
        this.f12286A.m14061J();
        m8043t2(new Runnable() { // from class: com.ifengyu.intercom.device.lite.fragment.y
            @Override // java.lang.Runnable
            public final void run() {
                LiteChannelFragment.this.m13940u3();
            }
        }, true);
        RxBus.m11806d().m11808b(this, LiteEvent.class, new Consumer() { // from class: com.ifengyu.intercom.device.lite.fragment.x
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteChannelFragment.this.m13938w3((LiteEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m13950k3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13948m3(ConfigFileModel configFileModel) {
        if (configFileModel != null) {
            m10329C2();
            m13956H3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m13946o3(ChannelModel channelModel) {
        if (channelModel != null) {
            m13955I3(channelModel);
            this.f12288z.m14196r(channelModel.getChannelSeq());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m13944q3(List list) {
        m10329C2();
        if (list != null) {
            this.f12288z.m14193u(list);
            return;
        }
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.m7270e(3);
        builder.m7269f(getString(R.string.lite_query_channel_failed));
        final QMUITipDialog m7274a = builder.m7274a(true);
        m7274a.show();
        RecyclerView recyclerView = this.mRecyclerView;
        Objects.requireNonNull(m7274a);
        recyclerView.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.device.lite.fragment.h1
            @Override // java.lang.Runnable
            public final void run() {
                QMUITipDialog.this.dismiss();
            }
        }, 1500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13942s3(String str) {
        if (str != null) {
            m10313W2();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m13940u3() {
        m10308b3();
        this.f12286A.m14063H(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m13938w3(LiteEvent liteEvent) throws Exception {
        if (liteEvent == LiteEvent.IMPORTED) {
            this.f12286A.m14063H(1);
            this.f12286A.m14062I();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m13963A3(QMUIDialog qMUIDialog, int i) {
        List<ChannelModel> m14205h = this.f12288z.m14205h();
        if (m14205h.size() == 0) {
            return;
        }
        m10308b3();
        ConfigFileModel configFileModel = new ConfigFileModel();
        configFileModel.setChannelModelList(m14205h);
        DeviceModel value = this.f12286A.m14035p().getValue();
        if (value != null) {
            configFileModel.setFrom(value.getName());
        }
        configFileModel.setFromDeviceType(9);
        configFileModel.setCreateTime(System.currentTimeMillis());
        configFileModel.setUpdateTime(System.currentTimeMillis());
        this.f12287B.m11844f(configFileModel);
        qMUIDialog.dismiss();
        HashMap hashMap = new HashMap();
        hashMap.put("userId", MiTalkClientUtil.m11243P());
        MobclickAgent.onEventObject(getContext(), "Lite_BackupClick_FromChannel", hashMap);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f12286A.m14036o().setValue((ChannelModel) arguments.getParcelable("channel"));
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_channel, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13953h3();
        m13952i3();
        return inflate;
    }

    /* renamed from: h3 */
    protected void m13953h3() {
        this.mTopBar.setBackgroundColor(UIUtils.m8614d(R.color.transparent));
        QMUIAlphaImageButton m7344h = this.mTopBar.m7344h();
        m7344h.setImageResource(R.drawable.icon_back_white);
        m7344h.setChangeAlphaWhenPress(true);
        m7344h.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelFragment.this.m13950k3(view);
            }
        });
        this.f12288z = new C3237c(getContext(), null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRecyclerView.addItemDecoration(new DividerItemDecoration(getContext(), 1));
        this.mRecyclerView.setAdapter(this.f12288z);
        this.f12288z.setOnItemClickListener(new C3235a());
        this.mRlChannelBackup.setOnClickListener(new View$OnClickListenerC3236b());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: j2 */
    protected void mo8052j2(int i, int i2, Intent intent) {
        Bundle extras;
        ChannelModel channelModel;
        if (i2 != -1 || intent == null || (extras = intent.getExtras()) == null || (channelModel = (ChannelModel) extras.getParcelable("channel")) == null) {
            return;
        }
        m10308b3();
        this.f12286A.m14058M(channelModel);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
    }
}
