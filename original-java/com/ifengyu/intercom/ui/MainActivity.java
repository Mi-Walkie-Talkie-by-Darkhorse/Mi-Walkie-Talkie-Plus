package com.ifengyu.intercom.ui;

import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.google.android.material.tabs.TabLayout;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.PrivacyInfoBean;
import com.ifengyu.intercom.g.d.h;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.e0;
import com.ifengyu.intercom.i.i;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.fragment.DiscoveryFragment;
import com.ifengyu.intercom.ui.fragment.MapFragment;
import com.ifengyu.intercom.ui.fragment.MyFragment;
import com.ifengyu.intercom.ui.widget.view.NoScrollViewPager;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import java.util.ArrayList;
import java.util.List;
import okhttp3.Call;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: classes2.dex */
public class MainActivity extends BaseActivity implements EasyPermissions.PermissionCallbacks {
    @BindView(R.id.bottom_tab_layout)
    TabLayout mTabLayout;
    private ArrayList<Fragment> q;
    public int[] r;
    public int[] s;
    public String[] t;
    private boolean u = true;
    private e v;
    @BindView(R.id.home_container)
    NoScrollViewPager viewPager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends h {
        a() {
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            MainActivity.this.A();
        }

        public void a(PrivacyInfoBean privacyInfoBean, int i) {
            int parseInt = Integer.parseInt(privacyInfoBean.getVersion());
            if (parseInt > d0.b("app")) {
                MainActivity.this.g(parseInt);
            } else {
                MainActivity.this.A();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(TabLayout.Tab tab) {
            MainActivity.this.viewPager.setCurrentItem(tab.getPosition(), false);
            MainActivity.this.f(tab.getPosition());
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Tab tab) {
            View customView = MainActivity.this.mTabLayout.getTabAt(tab.getPosition()).getCustomView();
            customView.setScaleX(1.0f);
            customView.setScaleY(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements QMUIDialogAction.b {
        c() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
            d0.c(false);
            MiTalkiApp.b().p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends com.qmuiteam.qmui.span.d {
        d(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserProtocolActivity.a(MainActivity.this, 0);
        }
    }

    /* loaded from: classes2.dex */
    private class e implements com.ifengyu.intercom.node.h {
        private e() {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
            z.a("MainActivity", "已连接...");
            ((MapFragment) MainActivity.this.q.get(0)).j();
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            z.c("MainActivity", "连接断开...");
            ((MapFragment) MainActivity.this.q.get(0)).k();
        }

        /* synthetic */ e(MainActivity mainActivity, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public class f extends FragmentPagerAdapter {
        public f(FragmentManager fragmentManager) {
            super(fragmentManager);
        }

        @Override // androidx.viewpager.widget.a
        public int getCount() {
            return MainActivity.this.q.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i) {
            return (Fragment) MainActivity.this.q.get(i);
        }

        @Override // androidx.viewpager.widget.a
        public CharSequence getPageTitle(int i) {
            return MainActivity.this.t[i];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        UpdateManager d2 = UpdateManager.d();
        UpdateManager d3 = UpdateManager.d();
        d3.getClass();
        d2.a(new UpdateManager.e(d3, this, UpdateManager.CHECK_CONDITION.APK));
    }

    private void B() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
                com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this);
                fVar.b(R.string.common_select, (DialogInterface.OnClickListener) null);
                fVar.b(R.string.connect_open_ble);
                fVar.a();
                fVar.d();
            }
        } catch (Exception e2) {
            z.b("MainActivity", "error " + e2.getMessage());
        }
    }

    private SpannableString C() {
        String string = getString(R.string.user_protocol);
        String string2 = getString(R.string.user_protocol_updated_suffix);
        SpannableString spannableString = new SpannableString(string + string2);
        d dVar = new d(androidx.core.content.b.a(this, (int) R.color.lite_colorAccent), androidx.core.content.b.a(this, (int) R.color.lite_colorAccent50), 0, 0);
        dVar.b(true);
        spannableString.setSpan(dVar, 0, string.length(), 17);
        return spannableString;
    }

    private void D() {
        ArrayList<Fragment> arrayList = new ArrayList<>();
        this.q = arrayList;
        arrayList.add(MapFragment.newInstance());
        this.q.add(DiscoveryFragment.newInstance());
        this.q.add(MyFragment.newInstance());
    }

    private void E() {
        this.viewPager.setAdapter(new f(getSupportFragmentManager()));
        this.viewPager.setOffscreenPageLimit(3);
        this.viewPager.addOnPageChangeListener(new TabLayout.TabLayoutOnPageChangeListener(this.mTabLayout));
        this.mTabLayout.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
        for (int i = 0; i < this.t.length; i++) {
            TabLayout tabLayout = this.mTabLayout;
            tabLayout.addTab(tabLayout.newTab().setCustomView(e(i)));
        }
    }

    private void F() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.pls_open_location_service_at_setting).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.c(dialogInterface, i);
            }
        }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        for (int i2 = 0; i2 < this.mTabLayout.getTabCount(); i2++) {
            View customView = this.mTabLayout.getTabAt(i2).getCustomView();
            ImageView imageView = (ImageView) customView.findViewById(R.id.tab_content_image);
            TextView textView = (TextView) customView.findViewById(R.id.tab_content_text);
            if (i2 == i) {
                imageView.setImageResource(this.s[i2]);
                textView.setTextColor(getResources().getColor(R.color.select_color));
                customView.setScaleX(1.1f);
                customView.setScaleY(1.1f);
            } else {
                imageView.setImageResource(this.r[i2]);
                textView.setTextColor(getResources().getColor(R.color.black60));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final int i) {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
        eVar.c(R.string.user_protocol_updated);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(C());
        eVar2.a(false);
        com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
        eVar3.b(false);
        com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
        eVar4.a(0, R.string.common_cancel, 2, new c());
        com.ifengyu.intercom.lite.c.b.e eVar5 = eVar4;
        eVar5.a(0, R.string.agree_and_continue, 1, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.c
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(b bVar, int i2) {
                MainActivity.this.a(i, bVar, i2);
            }
        });
        eVar5.a(R.style.DialogTheme2).show();
    }

    private void y() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_location_permission).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.b
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.a(dialogInterface, i);
            }
        }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
    }

    private void z() {
        if (this.u) {
            this.u = false;
            com.ifengyu.intercom.g.a.b("app", new a());
        }
    }

    public /* synthetic */ void c(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        startActivity(new Intent("android.settings.LOCATION_SOURCE_SETTINGS"));
    }

    public View e(int i) {
        View inflate = LayoutInflater.from(this).inflate(R.layout.home_tab_content, (ViewGroup) null);
        ((ImageView) inflate.findViewById(R.id.tab_content_image)).setImageResource(this.r[i]);
        ((TextView) inflate.findViewById(R.id.tab_content_text)).setText(this.t[i]);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        z.a("MainActivity", "onCreate");
        setContentView(R.layout.activity_main);
        ButterKnife.bind(this);
        this.r = new int[]{R.drawable.map_icon_map_unchecked, R.drawable.map_icon_find_unchecked, R.drawable.map_icon_mine_unchecked};
        this.s = new int[]{R.drawable.map_icon_map_checked, R.drawable.map_icon_find_checked, R.drawable.map_icon_mine_checked};
        this.t = k0.d(R.array.main_tab_title);
        D();
        E();
        this.v = new e(this, null);
        j.b().a(this.v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        z.a("MainActivity", "onDestroy");
        j.b().b(this.v);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        z.a("MainActivity", "onNewIntent");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        z.a("MainActivity", "onPause");
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int i, List<String> list) {
        l0.a(list);
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.after_refuse_location_permission).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                MainActivity.this.b(dialogInterface, i2);
            }
        }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int i, List<String> list) {
        l0.b(list);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i, strArr, iArr, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        z.a("MainActivity", "onResume");
        z();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        z.a("MainActivity", "onStart");
        com.ifengyu.intercom.eventbus.a.a().b(this);
        w();
        B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        z.a("MainActivity", "onStop");
        com.ifengyu.intercom.eventbus.a.a().c(this);
    }

    public boolean w() {
        if (!i.b() || x() != 0) {
            return true;
        }
        if (!EasyPermissions.hasPermissions(this, "android.permission.ACCESS_FINE_LOCATION")) {
            y();
            return false;
        } else if (e0.a(this)) {
            return true;
        } else {
            F();
            return false;
        }
    }

    public int x() {
        return this.mTabLayout.getSelectedTabPosition();
    }

    public /* synthetic */ void a(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        if (i.b()) {
            requestPermissions(new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 103);
        }
    }

    public /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", m.e(), null));
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public /* synthetic */ void a(int i, com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        bVar.dismiss();
        l0.a("app");
        d0.a("app", i);
        A();
    }
}
