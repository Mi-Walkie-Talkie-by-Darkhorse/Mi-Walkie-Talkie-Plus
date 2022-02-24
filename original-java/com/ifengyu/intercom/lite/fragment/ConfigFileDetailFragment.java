package com.ifengyu.intercom.lite.fragment;

import android.content.Context;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.lifecycle.q;
import androidx.lifecycle.x;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.intercom.lite.base.recycler.LinearLayoutManagerWapper;
import com.ifengyu.intercom.lite.base.recycler.d;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.h.g0;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.span.QMUICustomTypefaceSpan;
import com.qmuiteam.qmui.util.l;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.umeng.analytics.MobclickAgent;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class ConfigFileDetailFragment extends e {
    private h0 A;
    @BindView(R.id.recycler_view)
    RecyclerView mRecyclerView;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private c z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements q<String> {
        a() {
        }

        /* renamed from: a */
        public void onChanged(String str) {
            ConfigFileDetailFragment.this.x();
            if (str != null) {
                ConfigFileDetailFragment.this.a((int) R.string.lite_import_failed);
                return;
            }
            ConfigFileDetailFragment.this.b((int) R.string.lite_import_success);
            j.a().a(LiteEvent.IMPORTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements q<List<ChannelModel>> {
        b() {
        }

        /* renamed from: a */
        public void onChanged(List<ChannelModel> list) {
            ConfigFileDetailFragment.this.z.a(list);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends com.ifengyu.intercom.lite.base.recycler.c<ChannelModel> {
        private final QMUICustomTypefaceSpan k = new QMUICustomTypefaceSpan("Kmedium", p.f5324b);

        public c(Context context, List<ChannelModel> list) {
            super(context, list);
            new QMUICustomTypefaceSpan("MI_LanTing_GB_Outside_YS_V2.3", p.f5325c);
        }

        @Override // com.ifengyu.intercom.lite.base.recycler.c
        public int b(int i) {
            return R.layout.lite_config_file_detail_list_item;
        }

        public void a(d dVar, int i, ChannelModel channelModel, boolean z) {
            dVar.a(R.id.tv_number, channelModel.getDisplaySeq());
            dVar.a(p.f5323a, R.id.tv_number);
            if (!channelModel.isEmpty()) {
                dVar.d(R.id.line, 0);
                dVar.d(R.id.tv_detail1, 0);
                dVar.d(R.id.tv_title2, 0);
                dVar.d(R.id.tv_detail2, 0);
                dVar.a(R.id.tv_title1, a(channelModel.getDisplayReceiveFreqWithTone()));
                dVar.a(R.id.tv_title2, a(channelModel.getDisplaySendFreqWithTone()));
                dVar.b(R.id.tv_detail1, R.string.lite_receive);
                dVar.a(R.id.tv_title1, m.b(18.0f));
                return;
            }
            dVar.d(R.id.line, 8);
            dVar.d(R.id.tv_detail1, 8);
            dVar.d(R.id.tv_title2, 8);
            dVar.d(R.id.tv_detail2, 8);
            dVar.a(R.id.tv_title1, this.d.getString(R.string.lite_empty_channel_text));
            dVar.a(p.f5325c, R.id.tv_title1);
            dVar.a(R.id.tv_title1, m.b(15.0f));
        }

        private CharSequence a(String str) {
            int indexOf = str.indexOf("/");
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            spannableStringBuilder.setSpan(new AbsoluteSizeSpan(m.b(12.0f)), indexOf, spannableStringBuilder.length(), 17);
            spannableStringBuilder.setSpan(this.k, 0, spannableStringBuilder.length(), 17);
            return spannableStringBuilder;
        }
    }

    private ConfigFileModel A() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            return (ConfigFileModel) arguments.getParcelable("config_file");
        }
        return null;
    }

    private void B() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileDetailFragment.this.b(view);
            }
        });
        Button c2 = this.mTopBar.c(R.string.lite_import, l.a());
        c2.setTextColor(androidx.appcompat.a.a.a.b(getContext(), R.color.topbar_right_btn_color_state_list));
        c2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfigFileDetailFragment.this.c(view);
            }
        });
    }

    private void C() {
        ConfigFileModel A = A();
        this.mTopBar.a(A != null ? A.getName() : "");
        this.z = new c(getContext(), null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRecyclerView.addItemDecoration(new androidx.recyclerview.widget.d(getContext(), 1));
        this.mRecyclerView.setAdapter(this.z);
    }

    private void D() {
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.A = h0Var;
        h0Var.c().observe(this, new a());
        g0 g0Var = (g0) x.a(this).a(g0.class);
        g0Var.c().observe(this, new b());
        ConfigFileModel A = A();
        if (A != null) {
            g0Var.b(A.getId());
        }
    }

    private void E() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_import_confirm_message);
        eVar.a(0, R.string.common_cancel, 2, k.f5524a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.i
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                ConfigFileDetailFragment.this.a(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void c(View view) {
        E();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_config_file_detail, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        B();
        C();
        D();
        return inflate;
    }

    public static ConfigFileDetailFragment a(ConfigFileModel configFileModel) {
        ConfigFileDetailFragment configFileDetailFragment = new ConfigFileDetailFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable("config_file", configFileModel);
        configFileDetailFragment.setArguments(bundle);
        return configFileDetailFragment;
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        ConfigFileModel A = A();
        if (A != null) {
            z();
            this.A.a(A.getId());
        }
        HashMap hashMap = new HashMap();
        hashMap.put("userId", d0.N());
        MobclickAgent.onEventObject(getContext(), "Lite_ImportClick_FromConfigDetail", hashMap);
    }
}
