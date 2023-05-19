package com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkCustomFragment;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkPresetFragment;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.library.utils.UIUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class SharkChannelSettingActivity extends BaseActivity1 implements View.OnClickListener {
    @BindView(R.id.click_to_edit_channel)
    TextView clickToEdit;

    /* renamed from: l */
    private SealSharkChannelModel f13449l;

    /* renamed from: m */
    private boolean f13450m;
    @BindView(R.id.channel_name)
    TextView mChannelName;
    @BindView(R.id.fab)
    ImageView mFab;
    @BindView(R.id.bottom_transparent_layout)
    View mFabLayout;
    @BindView(R.id.title_bar_left)
    ImageView mIbBack;
    @BindView(R.id.tab_layout)
    TabLayout mTabLayout;
    @BindView(R.id.container)
    ViewPager mViewPager;

    /* renamed from: n */
    private boolean f13451n;
    @BindView(R.id.normal_channel_number)
    TextView normalChannelNumber;
    @BindView(R.id.normal_css_channel_layout)
    LinearLayout normalCssChannelLayout;
    @BindView(R.id.normal_rx_css_value)
    TextView normalRxCssValue;
    @BindView(R.id.normal_tx_css_value)
    TextView normalTxCssValue;

    /* renamed from: o */
    private String f13452o;
    @BindView(R.id.special_channel_layout)
    LinearLayout specialChannelLayout;
    @BindView(R.id.special_css_channel_layout)
    LinearLayout specialCssChannelLayout;
    @BindView(R.id.special_rx_channel_number)
    TextView specialRxChannelNumber;
    @BindView(R.id.special_rx_css_value)
    TextView specialRxCssValue;
    @BindView(R.id.special_tx_channel_number)
    TextView specialTxChannelNumber;
    @BindView(R.id.special_tx_css_value)
    TextView specialTxCssValue;

    /* renamed from: j */
    private final String[] f13447j = UIUtils.m8601q(R.array.channel_tab_title);

    /* renamed from: k */
    private List<SharkChannelBaseFragment> f13448k = new ArrayList();

    /* renamed from: p */
    private ViewPager.C1068k f13453p = new C3765a();

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity$a */
    /* loaded from: classes2.dex */
    class C3765a extends ViewPager.C1068k {
        C3765a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.InterfaceC1065h
        public void onPageSelected(int i) {
            String str = ((BaseActivity1) SharkChannelSettingActivity.this).f15055a;
            C4161y.m11054a(str, "mSimpleOnPageChangeListener onPageSelected:" + i);
            if (i == 0) {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(0);
            } else {
                SharkChannelSettingActivity.this.mFabLayout.setVisibility(8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity$b */
    /* loaded from: classes2.dex */
    public class C3766b implements TabLayout.OnTabSelectedListener {
        C3766b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.select_color));
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            ((TextView) tab.getCustomView()).setTextColor(SharkChannelSettingActivity.this.getResources().getColor(R.color.black80));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity$c */
    /* loaded from: classes2.dex */
    public class C3767c extends FragmentPagerAdapter {
        public C3767c(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return SharkChannelSettingActivity.this.f13447j.length;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return (Fragment) SharkChannelSettingActivity.this.f13448k.get(i);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i) {
            return SharkChannelSettingActivity.this.f13447j[i];
        }
    }

    /* renamed from: I */
    public static void m12699I(Context context, @NonNull SealSharkChannelModel sealSharkChannelModel, boolean z, String str) {
        Intent intent = new Intent(context, SharkChannelSettingActivity.class);
        intent.putExtra("extra_shark_channel", sealSharkChannelModel);
        intent.putExtra("extra_shark_is_major_channel", z);
        intent.putExtra("device_mac_address", str);
        context.startActivity(intent);
    }

    /* renamed from: L */
    private void m12696L() {
        TextView textView = this.normalChannelNumber;
        Typeface typeface = AppConstants.f13909c;
        textView.setTypeface(typeface);
        this.specialRxChannelNumber.setTypeface(typeface);
        this.specialTxChannelNumber.setTypeface(typeface);
        boolean booleanExtra = getIntent().getBooleanExtra("extra_shark_is_major_channel", true);
        MiTalkClientUtil.m11251L();
        this.mViewPager.setAdapter(new C3767c(getSupportFragmentManager()));
        this.mViewPager.addOnPageChangeListener(this.f13453p);
        this.mViewPager.setOffscreenPageLimit(2);
        this.mTabLayout.setTabMode(1);
        this.mTabLayout.setupWithViewPager(this.mViewPager);
        this.mTabLayout.setTabGravity(0);
        for (int i = 0; i < this.mTabLayout.getTabCount(); i++) {
            TextView textView2 = new TextView(this);
            textView2.setTypeface(AppConstants.f13907a);
            textView2.setText(this.f13447j[i]);
            textView2.setGravity(17);
            this.mTabLayout.getTabAt(i).setCustomView(textView2);
        }
        this.mTabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new C3766b());
        LinearLayout linearLayout = (LinearLayout) this.mTabLayout.getChildAt(0);
        linearLayout.setShowDividers(2);
        linearLayout.setDividerPadding(30);
        linearLayout.setDividerDrawable(ContextCompat.m23927d(this, R.drawable.layout_divider_vertical));
        this.f13448k.clear();
        SharkCustomFragment m12635p2 = SharkCustomFragment.m12635p2(booleanExtra, this.f13452o);
        SharkPresetFragment m12591n2 = SharkPresetFragment.m12591n2(booleanExtra, this.f13452o);
        this.f13448k.add(m12635p2);
        this.f13448k.add(m12591n2);
        this.mIbBack.setOnClickListener(this);
        this.mFab.setOnClickListener(this);
        this.clickToEdit.setOnClickListener(this);
        SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) getIntent().getParcelableExtra("extra_shark_channel");
        this.f13449l = sealSharkChannelModel;
        if (sealSharkChannelModel != null) {
            m12693O(sealSharkChannelModel);
            if (this.f13449l.getType() == 2) {
                this.mViewPager.setCurrentItem(0);
                ((TextView) this.mTabLayout.getTabAt(0).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
                this.mFabLayout.setVisibility(0);
                return;
            }
            this.mViewPager.setCurrentItem(1);
            ((TextView) this.mTabLayout.getTabAt(1).getCustomView()).setTextColor(getResources().getColor(R.color.select_color));
            this.mFabLayout.setVisibility(8);
        }
    }

    /* renamed from: J */
    public SealSharkChannelModel m12698J() {
        return this.f13449l;
    }

    /* renamed from: K */
    public int m12697K() {
        return this.mViewPager.getCurrentItem();
    }

    /* renamed from: M */
    public boolean m12695M() {
        return this.f13451n;
    }

    /* renamed from: N */
    public boolean m12694N() {
        return this.f13450m;
    }

    /* renamed from: O */
    public void m12693O(SealSharkChannelModel sealSharkChannelModel) {
        if (sealSharkChannelModel != null) {
            m12692P(sealSharkChannelModel);
            if (sealSharkChannelModel.isStChannel()) {
                this.specialChannelLayout.setVisibility(8);
                this.specialCssChannelLayout.setVisibility(8);
                this.normalChannelNumber.setVisibility(0);
                this.normalCssChannelLayout.setVisibility(0);
                this.normalChannelNumber.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
                if (sealSharkChannelModel.getRxCss() % 256 == 0 && sealSharkChannelModel.getTxCss() % 256 == 0) {
                    this.normalCssChannelLayout.setVisibility(4);
                } else {
                    this.normalRxCssValue.setText(UIUtils.m8602p(R.string.receive_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getRxCss())));
                    this.normalTxCssValue.setText(UIUtils.m8602p(R.string.translate_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getTxCss())));
                }
                this.mChannelName.setText(sealSharkChannelModel.getName().trim());
                return;
            }
            this.specialChannelLayout.setVisibility(0);
            this.specialCssChannelLayout.setVisibility(0);
            this.normalChannelNumber.setVisibility(8);
            this.normalCssChannelLayout.setVisibility(8);
            this.specialRxChannelNumber.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
            this.specialTxChannelNumber.setText(MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq()));
            if (sealSharkChannelModel.getRxCss() % 256 == 0 && sealSharkChannelModel.getTxCss() % 256 == 0) {
                this.specialCssChannelLayout.setVisibility(4);
            } else {
                this.specialRxCssValue.setText(UIUtils.m8602p(R.string.receive_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getRxCss())));
                this.specialTxCssValue.setText(UIUtils.m8602p(R.string.translate_css_code_s, MethodsUtils.m11304F(sealSharkChannelModel.getTxCss())));
            }
            this.mChannelName.setText(sealSharkChannelModel.getName().trim());
        }
    }

    /* renamed from: P */
    public void m12692P(SealSharkChannelModel sealSharkChannelModel) {
        this.f13449l = sealSharkChannelModel;
    }

    /* renamed from: R */
    public void m12691R(boolean z) {
        this.f13451n = z;
    }

    /* renamed from: S */
    public void m12690S(boolean z) {
        this.f13450m = z;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.click_to_edit_channel) {
            if (id == R.id.fab) {
                ((SharkCustomFragment) this.f13448k.get(0)).m12638n2();
                return;
            } else if (id != R.id.title_bar_left) {
                return;
            } else {
                finish();
                return;
            }
        }
        SealSharkChannelModel sealSharkChannelModel = this.f13449l;
        if (sealSharkChannelModel != null) {
            if (sealSharkChannelModel.isStChannel()) {
                this.f13450m = true;
                this.f13451n = false;
                ((SharkPresetFragment) this.f13448k.get(1)).m12590o2(this.f13449l);
                return;
            }
            this.f13450m = false;
            this.f13451n = true;
            ((SharkCustomFragment) this.f13448k.get(0)).m12632s2(this.f13449l);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_shark_channel_setting);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13452o = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        ButterKnife.bind(this);
        m12696L();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        UIUtils.m8597u();
    }
}
