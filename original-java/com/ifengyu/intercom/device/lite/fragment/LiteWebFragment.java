package com.ifengyu.intercom.device.lite.fragment;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.WebChromeClient;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteWebFragment extends BaseFragment {

    /* renamed from: A */
    private WebChromeClient f12339A = new C3264a();
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.web_container)
    FrameLayout mWebContainer;

    /* renamed from: z */
    private AgentWeb f12340z;

    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteWebFragment$a */
    /* loaded from: classes2.dex */
    class C3264a extends WebChromeClient {
        C3264a() {
        }

        @Override // com.just.agentweb.WebChromeClientDelegate, android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            if (TextUtils.isEmpty(str) || webView.getUrl().contains(str)) {
                return;
            }
            LiteWebFragment.this.mTopBar.m7337q(str);
        }
    }

    /* renamed from: g3 */
    private void m13859g3() {
        this.mTopBar.setBottomDividerAlpha(0);
        this.mTopBar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteWebFragment.this.m13856j3(view);
            }
        });
    }

    /* renamed from: h3 */
    private void m13858h3() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("extra_title");
            String string2 = arguments.getString("extra_url");
            this.mTopBar.m7337q(string);
            this.f12340z = AgentWeb.with(this).setAgentWebParent(this.mWebContainer, new ConstraintLayout.LayoutParams(-1, -1)).useDefaultIndicator(UIUtils.m8614d(R.color.lite_colorAccent)).setWebChromeClient(this.f12339A).createAgentWeb().ready().m8310go(string2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m13856j3(View view) {
        mo8048o2();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_web, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13859g3();
        m13858h3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: k2 */
    public boolean mo8051k2(int i, KeyEvent keyEvent) {
        if (this.f12340z.handleKeyEvent(i, keyEvent)) {
            return true;
        }
        return super.mo8051k2(i, keyEvent);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        this.f12340z.getWebLifeCycle().onDestroy();
        super.onDestroy();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        this.f12340z.getWebLifeCycle().onPause();
        super.onPause();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        this.f12340z.getWebLifeCycle().onResume();
        super.onResume();
    }
}
