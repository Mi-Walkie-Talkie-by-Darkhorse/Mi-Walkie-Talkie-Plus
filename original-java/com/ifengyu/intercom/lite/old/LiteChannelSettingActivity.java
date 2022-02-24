package com.ifengyu.intercom.lite.old;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.AbsoluteSizeSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.lite.base.BaseActivity;
import com.ifengyu.intercom.lite.base.recycler.LinearLayoutManagerWapper;
import com.ifengyu.intercom.lite.base.recycler.c;
import com.ifengyu.intercom.lite.base.recycler.d;
import com.ifengyu.intercom.lite.c.b.e;
import com.ifengyu.intercom.lite.models.ChannelModel;
import com.ifengyu.intercom.lite.utils.h;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUITipDialog;
import com.qmuiteam.qmui.widget.dialog.b;
import java.util.List;

/* loaded from: classes2.dex */
public class LiteChannelSettingActivity extends BaseActivity {
    private c m;
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
    private ChannelModel n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements c.a<ChannelModel> {
        a() {
        }

        public void a(View view, int i, ChannelModel channelModel) {
            LiteChannelEditActivity.a(LiteChannelSettingActivity.this, channelModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LiteChannelSettingActivity.this.y();
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
            if (channelModel.isEmpty()) {
                dVar.d(R.id.empty_container, 0);
                dVar.d(R.id.content_container, 8);
            } else {
                dVar.d(R.id.empty_container, 8);
                dVar.d(R.id.content_container, 0);
                TextView a3 = dVar.a(R.id.tv_freq_receive);
                TextView a4 = dVar.a(R.id.tv_freq_send);
                a3.setTypeface(p.f5324b);
                a4.setTypeface(p.f5324b);
                String displayReceiveFreqWithTone = channelModel.getDisplayReceiveFreqWithTone();
                int indexOf = displayReceiveFreqWithTone.indexOf("/");
                SpannableString spannableString = new SpannableString(displayReceiveFreqWithTone);
                spannableString.setSpan(new AbsoluteSizeSpan(m.b(12.0f)), indexOf, spannableString.length(), 17);
                a3.setText(spannableString);
                String displaySendFreqWithTone = channelModel.getDisplaySendFreqWithTone();
                int indexOf2 = displaySendFreqWithTone.indexOf("/");
                SpannableString spannableString2 = new SpannableString(displaySendFreqWithTone);
                spannableString2.setSpan(new AbsoluteSizeSpan(m.b(12.0f)), indexOf2, spannableString2.length(), 17);
                a4.setText(spannableString2);
            }
            if (z) {
                dVar.c(R.id.tv_number, R.color.lite_colorAccent30);
                dVar.c(R.id.tv_empty_title, R.color.lite_colorAccent);
                dVar.c(R.id.tv_empty_detail, R.color.lite_colorAccent50);
                dVar.c(R.id.tv_freq_receive, R.color.lite_colorAccent);
                dVar.c(R.id.tv_freq_send, R.color.lite_colorAccent);
                dVar.c(R.id.tv_receive, R.color.lite_colorAccent70);
                dVar.c(R.id.tv_send, R.color.lite_colorAccent70);
                return;
            }
            dVar.c(R.id.tv_number, R.color.lite_channel_seq_text_color);
            dVar.c(R.id.tv_empty_title, R.color.black70);
            dVar.c(R.id.tv_empty_detail, R.color.black50);
            dVar.c(R.id.tv_freq_receive, R.color.black70);
            dVar.c(R.id.tv_freq_send, R.color.black70);
            dVar.c(R.id.tv_receive, R.color.black50);
            dVar.c(R.id.tv_send, R.color.black50);
        }
    }

    private void A() {
        if (this.n.isEmpty()) {
            this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, this.n.getDisplaySeq()));
            this.mContentBoard.setVisibility(8);
            this.mEmptyBoard.setVisibility(0);
            return;
        }
        this.mContentBoard.setVisibility(0);
        this.mEmptyBoard.setVisibility(8);
        this.mTvChannelName.setText(m.a((int) R.string.lite_channel_name_placeholder, this.n.getDisplaySeq()));
        this.mTvReceiveFreq.setText(this.n.getDisplayReceiveFreq());
        this.mTvSendFreq.setText(this.n.getDisplaySendFreq());
        h.a(p.f5324b, this.mTvReceiveFreq, this.mTvSendFreq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        e eVar = new e(this);
        eVar.d(R.string.lite_config_file_backup_dialog_message);
        eVar.a(0, R.string.common_cancel, 2, h.f5771a);
        e eVar2 = eVar;
        eVar2.a(0, R.string.common_ok, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.old.i
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                LiteChannelSettingActivity.this.a(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        e eVar = new e(this);
        eVar.d(R.string.lite_config_file_backup_finish_text);
        eVar.a(0, R.string.btn_back, 2, k.f5774a);
        e eVar2 = eVar;
        eVar2.a(0, R.string.lookup, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.lite.old.f
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i) {
                LiteChannelSettingActivity.this.b(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        Bundle extras;
        final ChannelModel channelModel;
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && intent != null && (extras = intent.getExtras()) != null && (channelModel = (ChannelModel) extras.getParcelable("channel")) != null) {
            QMUITipDialog.Builder builder = new QMUITipDialog.Builder(this);
            builder.a(1);
            builder.a(m.b((int) R.string.please_wait));
            final QMUITipDialog a2 = builder.a(false);
            a2.show();
            m.a(new Runnable() { // from class: com.ifengyu.intercom.lite.old.g
                @Override // java.lang.Runnable
                public final void run() {
                    LiteChannelSettingActivity.this.a(a2, channelModel);
                }
            }, 1000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.lite.base.BaseActivity, com.qmuiteam.qmui.arch.QMUIActivity, com.qmuiteam.qmui.arch.a, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_lite_channel_setting);
        ButterKnife.bind(this);
        a(getIntent());
        x();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        a(intent);
    }

    protected void x() {
        this.mTopBar.setBackgroundColor(m.a((int) R.color.transparent));
        QMUIAlphaImageButton a2 = this.mTopBar.a();
        a2.setImageResource(R.drawable.icon_back_white);
        a2.setChangeAlphaWhenPress(true);
        a2.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.old.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteChannelSettingActivity.this.a(view);
            }
        });
        this.m = new c(getApplicationContext(), null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManagerWapper(getApplicationContext(), 1, false));
        this.mRecyclerView.addItemDecoration(new androidx.recyclerview.widget.d(this, 1));
        this.mRecyclerView.setAdapter(this.m);
        this.m.setOnItemClickListener(new a());
        ChannelModel channelModel = this.n;
        if (channelModel != null) {
            this.m.c(channelModel.getChannelSeq());
            A();
        }
        this.mRlChannelBackup.setOnClickListener(new b());
    }

    public static void a(Activity activity, ChannelModel channelModel) {
        Intent intent = new Intent(activity, LiteChannelSettingActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("channel", channelModel);
        intent.putExtras(bundle);
        activity.startActivityForResult(intent, 0);
    }

    public /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        LiteConfigFileActivity.start(this);
        bVar.dismiss();
    }

    private void a(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            this.n = (ChannelModel) extras.getParcelable("channel");
        }
    }

    public /* synthetic */ void a(View view) {
        onBackPressed();
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        w();
        bVar.dismiss();
        m.a(new w(this), 2000L);
    }

    public /* synthetic */ void a(QMUITipDialog qMUITipDialog, ChannelModel channelModel) {
        qMUITipDialog.dismiss();
        ChannelModel a2 = this.m.a(channelModel.getChannelSeq());
        a2.setReceiveFreq(channelModel.getReceiveFreq());
        a2.setSendFreq(channelModel.getSendFreq());
        a2.setReceiveToneType(channelModel.getReceiveToneType());
        a2.setReceiveToneValue(channelModel.getReceiveToneValue());
        a2.setSendToneType(channelModel.getSendToneType());
        a2.setSendToneValue(channelModel.getSendToneValue());
        this.m.notifyDataSetChanged();
        if (channelModel.getChannelSeq() == this.n.getChannelSeq()) {
            this.n.setReceiveFreq(channelModel.getReceiveFreq());
            this.n.setSendFreq(channelModel.getSendFreq());
            this.n.setReceiveToneType(channelModel.getReceiveToneType());
            this.n.setReceiveToneValue(channelModel.getReceiveToneValue());
            this.n.setSendToneType(channelModel.getSendToneType());
            this.n.setSendToneValue(channelModel.getSendToneValue());
            A();
        }
    }
}
