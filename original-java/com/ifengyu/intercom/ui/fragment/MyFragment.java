package com.ifengyu.intercom.ui.fragment;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.f;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.Message;
import com.ifengyu.intercom.bean.Message.Item;
import com.ifengyu.intercom.network.OnDownloadListener;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.activity.AboutActivity;
import com.ifengyu.intercom.ui.activity.MyInfoSettingActivity;
import com.ifengyu.intercom.ui.activity.MyTrackActivity;
import com.ifengyu.intercom.ui.activity.OfflineMapTypeSelectActivity;
import com.ifengyu.intercom.ui.activity.QuestionFeedbackActivity;
import com.ifengyu.intercom.ui.activity.WebViewActivity;
import com.ifengyu.intercom.ui.baseui.BaseFragment;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.intercom.update.dolphin.UpdateManager.CHECK_CONDITION;
import com.ifengyu.intercom.update.dolphin.UpdateManager.b;
import com.nostra13.universalimageloader.core.DisplayImageOptions.Builder;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import okhttp3.Call;

public class MyFragment extends BaseFragment implements OnClickListener, OnDownloadListener {
    /* access modifiers changed from: private */
    public MainActivity b;
    private SharedPreferences c;
    /* access modifiers changed from: private */
    public SharedPreferences d;
    private boolean e;
    private View f;
    @BindView(2131755621)
    CirclrImageView mCivPortrait;
    @BindView(2131755355)
    ImageView titleBarRight;
    @BindView(2131755588)
    TextView titleBarTitle;
    @BindView(2131755623)
    TextView userID;
    @BindView(2131755622)
    TextView userName;

    public static MyFragment d() {
        s.c("MyFragment", "newInstance");
        return new MyFragment();
    }

    public void onAttach(Context context) {
        s.c("MyFragment", "onAttach");
        super.onAttach(context);
        this.b = (MainActivity) getActivity();
    }

    public void onCreate(@Nullable Bundle bundle) {
        s.c("MyFragment", "onCreate");
        super.onCreate(bundle);
    }

    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        s.c("MyFragment", "onCreateView");
        this.f = layoutInflater.inflate(R.layout.fragment_my, viewGroup, false);
        ButterKnife.bind((Object) this, this.f);
        this.c = w.b();
        this.d = PreferenceManager.getDefaultSharedPreferences(MiTalkiApp.a());
        e();
        return this.f;
    }

    public void onActivityCreated(@Nullable Bundle bundle) {
        s.c("MyFragment", "onActivityCreated");
        super.onActivityCreated(bundle);
        UpdateManager.a().addDownloadListener(this);
    }

    public void onStart() {
        s.c("MyFragment", "onStart");
        super.onStart();
    }

    public void onStop() {
        super.onStop();
    }

    public void onDestroy() {
        super.onDestroy();
        UpdateManager.a().removeDownloadListener(this);
    }

    private void e() {
        this.a = (ViewGroup) this.f.findViewById(R.id.title_bar);
        c();
        this.titleBarTitle.setText(getResources().getString(R.string.tab_my));
        this.e = this.d.getBoolean("key_has_new_message", false);
        this.titleBarRight.setImageResource(this.e ? R.drawable.mine_icon_news_update : R.drawable.mine_icon_news_normal);
        this.userName.setText(this.c.getString("nickname", ad.a((int) R.string.f1me)));
        if (MiTalkiApp.a().j()) {
            this.userID.setText("ID:" + w.K());
        }
        ImageLoader.getInstance().displayImage(this.c.getString("avatar", ""), (ImageView) this.mCivPortrait, new Builder().showImageForEmptyUri((int) R.drawable.my_head_default).showImageOnFail((int) R.drawable.my_head_default).showImageOnLoading((int) R.drawable.my_head_default).cacheInMemory(true).cacheOnDisk(true).build());
        this.titleBarRight.setOnClickListener(this);
        this.f.findViewById(R.id.setting_user_info).setOnClickListener(this);
        this.f.findViewById(R.id.setting_my_track).setOnClickListener(this);
        this.f.findViewById(R.id.setting_map_download).setOnClickListener(this);
        this.f.findViewById(R.id.setting_product_instructions).setOnClickListener(this);
        this.f.findViewById(R.id.setting_use_help).setOnClickListener(this);
        this.f.findViewById(R.id.setting_more_apk_check_update).setOnClickListener(this);
        this.f.findViewById(R.id.setting_more_question_feedback).setOnClickListener(this);
        this.f.findViewById(R.id.setting_more_about_device).setOnClickListener(this);
        this.f.findViewById(R.id.logout).setOnClickListener(this);
        a.a(new f() {
            public void a(Call call, Exception exc, int i) {
                s.b("MyFragment", "onError:" + exc.getMessage());
            }

            public void a(Message message, int i) {
                s.b("MyFragment", "message:" + message.toString());
                if (message.items != null && message.items.size() > 0) {
                    String str = ((Item) message.items.get(0)).meta.first_published_at;
                    if (!MyFragment.this.d.getString("key_first_published_at", "").equals(str)) {
                        MyFragment.this.titleBarRight.setImageResource(R.drawable.mine_icon_news_update);
                        MyFragment.this.d.edit().putString("key_first_published_at", str).putBoolean("key_has_new_message", true).apply();
                    }
                }
            }
        });
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.title_bar_right /*2131755355*/:
                Intent intent = new Intent(this.b, WebViewActivity.class);
                intent.setAction("com.ifengyu.intercom.action.MESSAGE_CENTER");
                startActivity(intent);
                this.titleBarRight.setImageResource(R.drawable.mine_icon_news_normal);
                this.d.edit().putBoolean("key_has_new_message", false).apply();
                MiStatInterface.recordCountEvent("my_tab_page", "messageCenterBtnClick");
                return;
            case R.id.setting_user_info /*2131755620*/:
                Intent intent2 = new Intent(this.b, MyInfoSettingActivity.class);
                intent2.putExtra("setting_my_name", w.M());
                startActivityForResult(intent2, 5);
                MiStatInterface.recordCountEvent("my_tab_page", "modifyPersonalInfoClick");
                return;
            case R.id.setting_map_download /*2131755778*/:
                startActivity(new Intent(this.b, OfflineMapTypeSelectActivity.class));
                MiStatInterface.recordCountEvent("my_tab_page", "offlineMapDownloadBtnClick");
                return;
            case R.id.setting_my_track /*2131755779*/:
                startActivity(new Intent(this.b, MyTrackActivity.class));
                MiStatInterface.recordCountEvent("my_tab_page", "myTrackBtnClick");
                return;
            case R.id.setting_product_instructions /*2131755780*/:
                Intent intent3 = new Intent(this.b, WebViewActivity.class);
                intent3.setAction("com.ifengyu.intercom.action.PRODUCT_MANUAL");
                if (!k.a().b()) {
                    intent3.putExtra("type", "dolphin");
                } else if (w.ad() == 5) {
                    intent3.putExtra("type", "seal");
                } else if (w.ad() == 4) {
                    intent3.putExtra("type", "shark");
                } else {
                    intent3.putExtra("type", "dolphin");
                }
                startActivity(intent3);
                MiStatInterface.recordCountEvent("my_tab_page", "productManualBtnClick");
                return;
            case R.id.setting_use_help /*2131755781*/:
                Intent intent4 = new Intent(this.b, WebViewActivity.class);
                intent4.setAction("com.ifengyu.intercom.action.USE_HELP");
                startActivity(intent4);
                MiStatInterface.recordCountEvent("my_tab_page", "commonQuestionAnswerClick");
                return;
            case R.id.setting_more_question_feedback /*2131755782*/:
                startActivity(new Intent(this.b, QuestionFeedbackActivity.class));
                MiStatInterface.recordCountEvent("my_tab_page", "questionFeedBackClick");
                return;
            case R.id.setting_more_apk_check_update /*2131755783*/:
                if (!v.a((Context) this.b)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                this.b.a(false, true, (int) R.string.dialog_please_wait, (int) R.drawable.load_spinner);
                UpdateManager a = UpdateManager.a();
                a.getClass();
                UpdateManager.a().a(new b(a, this.b, CHECK_CONDITION.APK));
                MiTalkiApp.n().postDelayed(new Runnable() {
                    public void run() {
                        MyFragment.this.b.k();
                    }
                }, 5000);
                return;
            case R.id.setting_more_about_device /*2131755784*/:
                startActivity(new Intent(this.b, AboutActivity.class));
                return;
            case R.id.logout /*2131755785*/:
                new com.ifengyu.intercom.ui.widget.dialog.s(this.b).show();
                return;
            default:
                return;
        }
    }

    public void a(CHECK_CONDITION check_condition, boolean z) {
        if (check_condition == CHECK_CONDITION.APK && z) {
            this.b.b(getString(R.string.setting_check_apk_update_is_newest));
            this.b.d(R.drawable.mine_icon_win);
            MiTalkiApp.n().postDelayed(new Runnable() {
                public void run() {
                    MyFragment.this.b.k();
                }
            }, 500);
        } else if (check_condition == CHECK_CONDITION.APK && !z) {
            this.b.k();
        }
    }

    public void a(String str) {
    }

    public void a(String str, String str2) {
    }

    public void a() {
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 5 && i2 == 1 && intent != null) {
            String stringExtra = intent.getStringExtra("setting_my_name");
            boolean booleanExtra = intent.getBooleanExtra("setting_had_modify_portrait", false);
            boolean booleanExtra2 = intent.getBooleanExtra("setting_had_modify_name", false);
            Uri data = intent.getData();
            if (booleanExtra && data != null) {
                this.mCivPortrait.setImageBitmap(ad.a(data));
            }
            if (booleanExtra2) {
                this.userName.setText(stringExtra);
            }
        }
    }
}
