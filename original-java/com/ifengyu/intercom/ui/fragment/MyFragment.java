package com.ifengyu.intercom.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.Message;
import com.ifengyu.intercom.g.d.g;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.WebActivity;
import com.ifengyu.intercom.lite.c.b.e;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.AboutActivity;
import com.ifengyu.intercom.ui.activity.AppSettingActivity;
import com.ifengyu.intercom.ui.activity.MyInfoSettingActivity;
import com.ifengyu.intercom.ui.activity.MyTrackActivity;
import com.ifengyu.intercom.ui.activity.OfflineMapTypeSelectActivity;
import com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.library.base.BaseApp;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.List;
import okhttp3.Call;

/* loaded from: classes2.dex */
public class MyFragment extends com.ifengyu.intercom.ui.baseui.a implements View.OnClickListener, OnDownloadListener {
    private MainActivity g;
    private SharedPreferences h;
    private SharedPreferences i;
    private boolean j;
    private View k;
    @BindView(R.id.setting_user_portrait)
    CirclrImageView mCivPortrait;
    @BindView(R.id.title_bar_right)
    ImageView titleBarRight;
    @BindView(R.id.title_bar_title)
    TextView titleBarTitle;
    @BindView(R.id.setting_user_id_text)
    TextView userID;
    @BindView(R.id.setting_user_name_text)
    TextView userName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends g {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            z.a("MyFragment", "onError:" + exc.getMessage());
        }

        public void a(Message message, int i) {
            z.a("MyFragment", "message:" + message.toString());
            List<Message.Item> list = message.items;
            if (list != null && list.size() > 0) {
                String str = message.items.get(0).meta.first_published_at;
                if (!MyFragment.this.i.getString("key_first_published_at", "").equals(str)) {
                    MyFragment.this.titleBarRight.setImageResource(R.drawable.mine_icon_news_update);
                    MyFragment.this.i.edit().putString("key_first_published_at", str).putBoolean("key_has_new_message", true).apply();
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyFragment.this.g.j();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MyFragment.this.g.j();
        }
    }

    private void j() {
        this.e = (ViewGroup) this.k.findViewById(R.id.title_bar);
        i();
        this.titleBarTitle.setText(k0.c(R.string.tab_my));
        boolean z = this.i.getBoolean("key_has_new_message", false);
        this.j = z;
        this.titleBarRight.setImageResource(z ? R.drawable.mine_icon_news_update : R.drawable.mine_icon_news_normal);
        this.userName.setText(this.h.getString("nickname", k0.c(R.string.f5217me)));
        ImageLoader.getInstance().displayImage(this.h.getString("avatar", ""), this.mCivPortrait, new DisplayImageOptions.Builder().showImageForEmptyUri(R.drawable.my_head_default).showImageOnFail(R.drawable.my_head_default).showImageOnLoading(R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.titleBarRight.setOnClickListener(this);
        this.k.findViewById(R.id.setting_user_info).setOnClickListener(this);
        this.k.findViewById(R.id.setting_my_track).setOnClickListener(this);
        this.k.findViewById(R.id.setting_map_download).setOnClickListener(this);
        this.k.findViewById(R.id.setting_product_instructions).setOnClickListener(this);
        this.k.findViewById(R.id.setting_use_help).setOnClickListener(this);
        this.k.findViewById(R.id.setting_more_apk_check_update).setOnClickListener(this);
        this.k.findViewById(R.id.setting_more_question_feedback).setOnClickListener(this);
        this.k.findViewById(R.id.setting_more_about_device).setOnClickListener(this);
        this.k.findViewById(R.id.setting).setOnClickListener(this);
        this.k.findViewById(R.id.logout).setOnClickListener(this);
        com.ifengyu.intercom.g.a.b(new a());
    }

    private void k() {
        e eVar = new e(getContext());
        eVar.d(R.string.setting_confirm_logout);
        eVar.a(true);
        e eVar2 = eVar;
        eVar2.b(true);
        e eVar3 = eVar2;
        eVar3.a(0, R.string.common_cancel, 2, n.f6462a);
        e eVar4 = eVar3;
        eVar4.a(0, R.string.common_ok, 1, m.f6461a);
        eVar4.a(R.style.DialogTheme2).show();
    }

    public static MyFragment newInstance() {
        z.c("MyFragment", "newInstance");
        return new MyFragment();
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void a(String str) {
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void a(String str, String str2) {
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void h() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        z.c("MyFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
        UpdateManager.d().addDownloadListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 5 && i2 == 1 && intent != null) {
            String stringExtra = intent.getStringExtra("setting_my_name");
            boolean booleanExtra = intent.getBooleanExtra("setting_had_modify_portrait", false);
            boolean booleanExtra2 = intent.getBooleanExtra("setting_had_modify_name", false);
            Uri data = intent.getData();
            if (booleanExtra && data != null) {
                this.mCivPortrait.setImageBitmap(k0.a(data));
            }
            if (booleanExtra2) {
                this.userName.setText(stringExtra);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        z.c("MyFragment", "onAttach");
        super.onAttach(context);
        this.g = (MainActivity) getActivity();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.logout) {
            k();
        } else if (id == R.id.setting_user_info) {
            Intent intent = new Intent(this.g, MyInfoSettingActivity.class);
            intent.putExtra("setting_my_name", d0.P());
            startActivityForResult(intent, 5);
        } else if (id != R.id.title_bar_right) {
            switch (id) {
                case R.id.setting /* 2131297175 */:
                    AppSettingActivity.start(getContext());
                    return;
                case R.id.setting_map_download /* 2131297176 */:
                    startActivity(new Intent(this.g, OfflineMapTypeSelectActivity.class));
                    return;
                case R.id.setting_more_about_device /* 2131297177 */:
                    startActivity(new Intent(this.g, AboutActivity.class));
                    return;
                case R.id.setting_more_apk_check_update /* 2131297178 */:
                    if (!c0.b(this.g)) {
                        c0.a((CharSequence) k0.c(R.string.net_error_please_check), false);
                        return;
                    }
                    this.g.a(false, true, R.string.dialog_please_wait, R.drawable.load_spinner);
                    UpdateManager d = UpdateManager.d();
                    d.getClass();
                    UpdateManager.d().a(new UpdateManager.e(d, this.g, UpdateManager.CHECK_CONDITION.APK));
                    BaseApp.a().postDelayed(new b(), 5000L);
                    return;
                case R.id.setting_more_question_feedback /* 2131297179 */:
                    startActivity(new Intent(this.g, QuestionFeedbackActivity.class));
                    return;
                case R.id.setting_my_track /* 2131297180 */:
                    startActivity(new Intent(this.g, MyTrackActivity.class));
                    return;
                case R.id.setting_product_instructions /* 2131297181 */:
                    WebActivity.a(getContext(), k0.c(R.string.setting_product_instructions), c0.a() ? "https://m.ifengyu.com/resources/en/productList.html" : "https://m.ifengyu.com/resources/productList.html");
                    return;
                case R.id.setting_use_help /* 2131297182 */:
                    Intent intent2 = new Intent(this.g, WebViewActivity.class);
                    intent2.setAction("com.ifengyu.intercom.action.USE_HELP");
                    startActivity(intent2);
                    return;
                default:
                    return;
            }
        } else {
            Intent intent3 = new Intent(this.g, WebViewActivity.class);
            intent3.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
            startActivity(intent3);
            this.titleBarRight.setImageResource(R.drawable.mine_icon_news_normal);
            this.i.edit().putBoolean("key_has_new_message", false).apply();
        }
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        z.c("MyFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        z.c("MyFragment", "onCreateView");
        View inflate = layoutInflater.inflate(R.layout.fragment_my, viewGroup, false);
        this.k = inflate;
        ButterKnife.bind(this, inflate);
        this.h = d0.R();
        this.i = PreferenceManager.getDefaultSharedPreferences(MiTalkiApp.b());
        j();
        return this.k;
    }

    @Override // com.ifengyu.intercom.ui.baseui.a, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        UpdateManager.d().removeDownloadListener(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        z.c("MyFragment", "onStart");
        super.onStart();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        MiTalkiApp.b().p();
    }

    @Override // com.ifengyu.intercom.network.OnDownloadListener
    public void b(UpdateManager.CHECK_CONDITION check_condition, boolean z) {
        if (check_condition == UpdateManager.CHECK_CONDITION.APK && z) {
            this.g.b(k0.c(R.string.setting_check_apk_update_is_newest));
            this.g.b(R.drawable.mine_icon_win);
            BaseApp.a().postDelayed(new c(), 500L);
        } else if (check_condition == UpdateManager.CHECK_CONDITION.APK && !z) {
            this.g.j();
        }
    }
}
