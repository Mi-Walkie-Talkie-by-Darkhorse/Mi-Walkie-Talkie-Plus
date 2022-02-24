package com.ifengyu.intercom.lite.fragment;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
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
import com.ifengyu.intercom.lite.base.recycler.c;
import com.ifengyu.intercom.lite.base.recycler.d;
import com.ifengyu.intercom.lite.event.LiteEvent;
import com.ifengyu.intercom.lite.h.g0;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.models.ConfigFileModel;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.utils.f;
import com.ifengyu.intercom.lite.utils.h;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.dialog.b;
import com.umeng.analytics.MobclickAgent;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public class LiteChannelFragment extends e {
    private h0 A;
    private g0 B;
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
    private c z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements c.a<ChannelModel> {
        a() {
        }

        public void a(View view, int i, ChannelModel channelModel) {
            LiteChannelFragment.this.a(LiteChannelEditFragment.a(channelModel), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteChannelFragment.this.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class c extends com.ifengyu.intercom.lite.base.recycler.c<ChannelModel> {
        c(Context context, List<ChannelModel> list) {
            super(context, list);
        }

        @Override // com.ifengyu.intercom.lite.base.recycler.c
        public int b(int i) {
            return R.layout.lite_channel_list_item;
        }

        public void a(d dVar, int i, ChannelModel channelModel, boolean z) {
            TextView a2 = dVar.a(R.id.tv_number);
            a2.setTypeface(p.f5323a);
            a2.setText(channelModel.getDisplaySeq());
            TextView a3 = dVar.a(R.id.tv_freq_receive);
            TextView a4 = dVar.a(R.id.tv_freq_send);
            if (channelModel.isEmpty()) {
                dVar.d(R.id.empty_container, 0);
                dVar.d(R.id.content_container, 8);
            } else {
                dVar.d(R.id.empty_container, 8);
                dVar.d(R.id.content_container, 0);
            }
            if (z) {
                dVar.c(R.id.tv_number, R.color.lite_colorAccent30);
                dVar.c(R.id.tv_empty_title, R.color.lite_colorAccent);
                dVar.c(R.id.tv_empty_detail, R.color.lite_colorAccent50);
                dVar.c(R.id.tv_freq_receive, R.color.lite_colorAccent);
                dVar.c(R.id.tv_freq_send, R.color.lite_colorAccent);
                dVar.c(R.id.tv_receive, R.color.lite_colorAccent70);
                dVar.c(R.id.tv_send, R.color.lite_colorAccent70);
                a3.setText(f.b(channelModel.getDisplayReceiveFreqWithTone()));
                a4.setText(f.b(channelModel.getDisplaySendFreqWithTone()));
                return;
            }
            dVar.c(R.id.tv_number, R.color.lite_channel_seq_text_color);
            dVar.c(R.id.tv_empty_title, R.color.black70);
            dVar.c(R.id.tv_empty_detail, R.color.black50);
            dVar.c(R.id.tv_freq_receive, R.color.black70);
            dVar.c(R.id.tv_freq_send, R.color.black70);
            dVar.c(R.id.tv_receive, R.color.black50);
            dVar.c(R.id.tv_send, R.color.black50);
            a3.setText(f.c(channelModel.getDisplayReceiveFreqWithTone()));
            a4.setText(f.c(channelModel.getDisplaySendFreqWithTone()));
        }
    }

    private void B() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.A.g().setValue((ChannelModel) arguments.getParcelable("channel"));
        }
        z();
        this.A.b(1);
    }

    private void C() {
        g0 g0Var = (g0) x.a(this).a(g0.class);
        this.B = g0Var;
        g0Var.d().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.y0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.a((ConfigFileModel) obj);
            }
        });
        h0 h0Var = (h0) x.a(this).a(h0.class);
        this.A = h0Var;
        h0Var.g().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.s0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.a((ChannelModel) obj);
            }
        });
        this.A.f().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.p0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.a((List) obj);
            }
        });
        this.A.e().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.r0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.b((ChannelModel) obj);
            }
        });
        this.A.j().observe(this, new q() { // from class: com.ifengyu.intercom.lite.fragment.x0
            @Override // androidx.lifecycle.q
            public final void onChanged(Object obj) {
                LiteChannelFragment.this.b((String) obj);
            }
        });
        this.A.l();
        this.A.m();
        j.a().a(this, LiteEvent.class, new Consumer() { // from class: com.ifengyu.intercom.lite.fragment.q0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteChannelFragment.this.a((LiteEvent) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_config_file_backup_dialog_message);
        eVar.a(0, R.string.common_cancel, 2, w0.f5558a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.u0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                LiteChannelFragment.this.a(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    private void E() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(getContext());
        eVar.d(R.string.lite_config_file_backup_finish_text);
        eVar.a(0, R.string.btn_back, 2, t0.f5552a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.lookup, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.fragment.o0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                LiteChannelFragment.this.b(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    private void c(ChannelModel channelModel) {
        if (channelModel != null) {
            if (channelModel.isEmpty()) {
                this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, channelModel.getDisplaySeq()));
                this.mContentBoard.setVisibility(8);
                this.mEmptyBoard.setVisibility(0);
                return;
            }
            this.mContentBoard.setVisibility(0);
            this.mEmptyBoard.setVisibility(8);
            this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, channelModel.getDisplaySeq()));
            this.mTvReceiveFreq.setText(channelModel.getDisplayReceiveFreq());
            this.mTvSendFreq.setText(channelModel.getDisplaySendFreq());
            h.a(p.f5324b, this.mTvReceiveFreq, this.mTvSendFreq);
        }
    }

    protected void A() {
        this.mTopBar.setBackgroundColor(m.a((int) R.color.transparent));
        QMUIAlphaImageButton a2 = this.mTopBar.a();
        a2.setImageResource(R.drawable.icon_back_white);
        a2.setChangeAlphaWhenPress(true);
        a2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelFragment.this.b(view);
            }
        });
        this.z = new c(getContext(), null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManagerWapper(getContext(), 1, false));
        this.mRecyclerView.addItemDecoration(new androidx.recyclerview.widget.d(getContext(), 1));
        this.mRecyclerView.setAdapter(this.z);
        this.z.setOnItemClickListener(new a());
        this.mRlChannelBackup.setOnClickListener(new b());
    }

    public /* synthetic */ void b(View view) {
        o();
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        j.a().b(this);
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_channel, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        C();
        B();
        return inflate;
    }

    public /* synthetic */ void a(ConfigFileModel configFileModel) {
        if (configFileModel != null) {
            x();
            E();
        }
    }

    public /* synthetic */ void b(String str) {
        if (str != null) {
            x();
            y();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ChannelModel channelModel) {
        x();
        ChannelModel a2 = this.z.a(channelModel.getChannelSeq());
        a2.setReceiveFreq(channelModel.getReceiveFreq());
        a2.setSendFreq(channelModel.getSendFreq());
        a2.setReceiveToneType(channelModel.getReceiveToneType());
        a2.setReceiveToneValue(channelModel.getReceiveToneValue());
        a2.setSendToneType(channelModel.getSendToneType());
        a2.setSendToneValue(channelModel.getSendToneValue());
        this.z.notifyDataSetChanged();
        ChannelModel value = this.A.g().getValue();
        if (value != null && channelModel.getChannelSeq() == value.getChannelSeq()) {
            this.A.g().setValue(channelModel);
        }
    }

    public /* synthetic */ void a(ChannelModel channelModel) {
        if (channelModel != null) {
            c(channelModel);
            this.z.c(channelModel.getChannelSeq());
        }
    }

    public /* synthetic */ void a(List list) {
        x();
        if (list != null) {
            this.z.b(list);
            return;
        }
        QMUITipDialog.Builder builder = new QMUITipDialog.Builder(getContext());
        builder.a(3);
        builder.a(getString(R.string.lite_query_channel_failed));
        final QMUITipDialog a2 = builder.a(true);
        a2.show();
        RecyclerView recyclerView = this.mRecyclerView;
        a2.getClass();
        recyclerView.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.lite.fragment.p1
            @Override // java.lang.Runnable
            public final void run() {
                QMUITipDialog.this.dismiss();
            }
        }, 1500L);
    }

    public /* synthetic */ void a(LiteEvent liteEvent) throws Exception {
        if (liteEvent == LiteEvent.IMPORTED) {
            this.A.b(1);
            this.A.l();
        }
    }

    public /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        a(ConfigFileListFragment.newInstance());
        bVar.dismiss();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected void a(int i, int i2, Intent intent) {
        Bundle extras;
        ChannelModel channelModel;
        if (i2 == -1 && intent != null && (extras = intent.getExtras()) != null && (channelModel = (ChannelModel) extras.getParcelable("channel")) != null) {
            z();
            this.A.a(channelModel);
        }
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        List<ChannelModel> e = this.z.e();
        if (e.size() != 0) {
            z();
            ConfigFileModel configFileModel = new ConfigFileModel();
            configFileModel.setChannelModelList(e);
            DeviceModel value = this.A.h().getValue();
            if (value != null) {
                configFileModel.setFrom(value.getName());
            }
            configFileModel.setCreateTime(System.currentTimeMillis());
            configFileModel.setUpdateTime(System.currentTimeMillis());
            this.B.a(configFileModel);
            bVar.dismiss();
            HashMap hashMap = new HashMap();
            hashMap.put("userId", d0.N());
            MobclickAgent.onEventObject(getContext(), "Lite_BackupClick_FromChannel", hashMap);
        }
    }
}
