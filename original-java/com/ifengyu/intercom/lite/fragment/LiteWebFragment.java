package com.ifengyu.intercom.lite.fragment;

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
import com.ifengyu.intercom.lite.base.e;
import com.ifengyu.library.a.m;
import com.just.agentweb.AgentWeb;
import com.just.agentweb.WebChromeClient;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* loaded from: classes2.dex */
public class LiteWebFragment extends e {
    private WebChromeClient A = new a();
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.web_container)
    FrameLayout mWebContainer;
    private AgentWeb z;

    /* loaded from: classes2.dex */
    class a extends WebChromeClient {
        a() {
        }

        @Override // com.just.agentweb.WebChromeClientDelegate, android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            if (!TextUtils.isEmpty(str) && !webView.getUrl().contains(str)) {
                LiteWebFragment.this.mTopBar.a(str);
            }
        }
    }

    private void A() {
        this.mTopBar.a().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.lite.fragment.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteWebFragment.this.b(view);
            }
        });
    }

    private void B() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("extra_title");
            String string2 = arguments.getString("extra_url");
            this.mTopBar.a(string);
            this.z = AgentWeb.with(this).setAgentWebParent(this.mWebContainer, new ConstraintLayout.LayoutParams(-1, -1)).useDefaultIndicator(m.a((int) R.color.lite_colorAccent)).setWebChromeClient(this.A).createAgentWeb().ready().go(string2);
        }
    }

    @Override // com.qmuiteam.qmui.arch.b
    public boolean a(int i, KeyEvent keyEvent) {
        if (this.z.handleKeyEvent(i, keyEvent)) {
            return true;
        }
        return super.a(i, keyEvent);
    }

    public /* synthetic */ void b(View view) {
        t();
    }

    @Override // com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.z.getWebLifeCycle().onDestroy();
        super.onDestroyView();
    }

    @Override // com.ifengyu.intercom.lite.base.e, androidx.fragment.app.Fragment
    public void onPause() {
        this.z.getWebLifeCycle().onPause();
        super.onPause();
    }

    @Override // com.ifengyu.intercom.lite.base.e, com.qmuiteam.qmui.arch.b, androidx.fragment.app.Fragment
    public void onResume() {
        this.z.getWebLifeCycle().onResume();
        super.onResume();
    }

    @Override // com.qmuiteam.qmui.arch.b
    protected View p() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_web, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        A();
        B();
        return inflate;
    }
}
