package com.ifengyu.intercom.p216ui.fragment;

import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoverResult;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.httpold.download.C3855b;
import com.ifengyu.intercom.p209o.OkHttpUtils;
import com.ifengyu.intercom.p209o.p210b.GetBuilder;
import com.ifengyu.intercom.p209o.p211c.DiscoverCallback;
import com.ifengyu.intercom.p214p.ACache;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.activity.ExamQuestionBankActivity;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.fragment.DiscoveryFragment;
import com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import okhttp3.Call;

/* renamed from: com.ifengyu.intercom.ui.fragment.DiscoveryFragment */
/* loaded from: classes2.dex */
public class DiscoveryFragment extends BaseFragment {

    /* renamed from: A */
    private ArrayList<DiscoveryArticleBean> f15148A;

    /* renamed from: B */
    private int f15149B = 10;

    /* renamed from: C */
    private int f15150C = 0;

    /* renamed from: D */
    private View f15151D;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.discovery_recycler)
    RecyclerView recyclerView;
    @BindView(R.id.discovery_swipe_refresh_layout)
    SwipeRefreshLayout swipeRefreshLayout;

    /* renamed from: z */
    private DiscoveryFragmentAdapter f15152z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.DiscoveryFragment$a */
    /* loaded from: classes2.dex */
    public class C4485a implements DiscoveryFragmentAdapter.InterfaceC4431a {
        C4485a() {
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: a */
        public void mo10115a() {
            DiscoveryFragment.this.m10116x3();
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: b */
        public void mo10114b() {
            DiscoveryFragment.this.startActivity(new Intent(DiscoveryFragment.this.getContext(), ExamQuestionBankActivity.class));
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: c */
        public void mo10113c(int i) {
            Intent intent = new Intent(DiscoveryFragment.this.getContext(), WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.SINGLE_ARTICLE");
            intent.putExtra("cms_single_article_id", ((DiscoveryArticleBean) DiscoveryFragment.this.f15148A.get(i)).getId());
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: d */
        public void mo10112d() {
            Intent intent = new Intent(DiscoveryFragment.this.getContext(), WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.NEW_MAN_GUIDE");
            DiscoveryFragment.this.startActivity(intent);
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: e */
        public void mo10111e(int i) {
        }

        @Override // com.ifengyu.intercom.p216ui.p217b.DiscoveryFragmentAdapter.InterfaceC4431a
        /* renamed from: f */
        public void mo10110f() {
            Intent intent = new Intent(DiscoveryFragment.this.getContext(), WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.EXAM_IFNO_QUERY");
            DiscoveryFragment.this.startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.DiscoveryFragment$b */
    /* loaded from: classes2.dex */
    public class C4486b extends DiscoverCallback {
        C4486b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: i */
        public /* synthetic */ void m10108j(int i, DiscoverResult discoverResult) {
            for (int i2 = 0; i2 < i; i2++) {
                DiscoveryArticleBean discoveryArticleBean = discoverResult.items.get(i2);
                discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                ACache m11134a = ACache.m11134a(UIUtils.m8613e(), "DiscoveryListInfoData");
                m11134a.m11128g("list_info_data_" + i2, discoveryArticleBean);
            }
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: d */
        public void mo9819d(Call call, Exception exc, int i) {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: k */
        public void mo9818e(final DiscoverResult discoverResult, int i) {
            final int size = discoverResult.items.size();
            DiscoveryFragment.this.f15150C += size;
            DiscoveryFragment.this.f15148A.clear();
            for (int i2 = 0; i2 < size; i2++) {
                DiscoveryArticleBean discoveryArticleBean = discoverResult.items.get(i2);
                discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                DiscoveryFragment.this.f15148A.add(discoveryArticleBean);
            }
            DiscoveryFragment.this.f15152z.m10395i(DiscoveryFragment.this.f15148A);
            DiscoveryFragment.this.f15152z.notifyDataSetChanged();
            C3855b.m12387a().execute(new Runnable() { // from class: com.ifengyu.intercom.ui.fragment.b0
                @Override // java.lang.Runnable
                public final void run() {
                    DiscoveryFragment.C4486b.this.m10108j(size, discoverResult);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.DiscoveryFragment$c */
    /* loaded from: classes2.dex */
    public class C4487c extends DiscoverCallback {
        C4487c() {
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: d */
        public void mo9819d(Call call, Exception exc, int i) {
            UIUtils.m8593y(R.string.net_work_error_pls_retry);
            DiscoveryFragment.this.f15152z.notifyItemChanged(DiscoveryFragment.this.f15152z.getItemCount() - 1);
        }

        @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
        /* renamed from: i */
        public void mo9818e(DiscoverResult discoverResult, int i) {
            int size = discoverResult.items.size();
            if (size > 0) {
                DiscoveryFragment.this.f15150C += size;
                for (int i2 = 0; i2 < size; i2++) {
                    DiscoveryArticleBean discoveryArticleBean = discoverResult.items.get(i2);
                    discoveryArticleBean.setExcerpt(discoveryArticleBean.getExcerpt().replace("<p>", "").replace("</p>", ""));
                    boolean z = false;
                    for (int i3 = 0; i3 < DiscoveryFragment.this.f15148A.size(); i3++) {
                        if (((DiscoveryArticleBean) DiscoveryFragment.this.f15148A.get(i3)).getId() == discoveryArticleBean.getId()) {
                            z = true;
                        }
                    }
                    if (!z) {
                        DiscoveryFragment.this.f15148A.add(discoveryArticleBean);
                    }
                    DiscoveryFragment.this.f15152z.m10395i(DiscoveryFragment.this.f15148A);
                    DiscoveryFragment.this.f15152z.notifyDataSetChanged();
                }
                return;
            }
            MethodsUtils.m11302H(DiscoveryFragment.this.getResources().getString(R.string.tab_discovery_not_have_more_content), false);
            DiscoveryFragment.this.f15152z.notifyDataSetChanged();
        }
    }

    /* renamed from: l3 */
    private ArrayList<DiscoveryArticleBean> m10128l3() {
        ACache m11134a = ACache.m11134a(getContext(), "DiscoveryListInfoData");
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            DiscoveryArticleBean discoveryArticleBean = (DiscoveryArticleBean) m11134a.m11130e("list_info_data_" + i);
            if (discoveryArticleBean == null) {
                break;
            }
            arrayList.add(discoveryArticleBean);
        }
        return arrayList;
    }

    /* renamed from: m3 */
    private void m10127m3() {
        ((ObservableSubscribeProxy) Observable.create(new ObservableOnSubscribe() { // from class: com.ifengyu.intercom.ui.fragment.e0
            @Override // io.reactivex.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                DiscoveryFragment.this.m10123q3(observableEmitter);
            }
        }).subscribeOn(Schedulers.m800io()).observeOn(AndroidSchedulers.mainThread()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5996a(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.f0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DiscoveryFragment.this.m10121s3((ArrayList) obj);
            }
        });
    }

    /* renamed from: n3 */
    private void m10126n3() {
        this.f15150C = 0;
        GetBuilder m11353b = OkHttpUtils.m11353b();
        m11353b.m11344a("https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit=" + this.f15149B + "&offset=" + this.f15150C + "&order=-first_published_at&fields=excerpt,header_image_url,views");
        m11353b.m11345c().m11325b(new C4486b());
    }

    /* renamed from: o3 */
    private void m10125o3() {
        this.mTopbar.m7338p(R.string.discovery_center);
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DiscoveryFragment.this.m10119u3(view);
            }
        });
        this.swipeRefreshLayout.setColorSchemeResources(R.color.track_record_color);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        this.recyclerView.setLayoutManager(linearLayoutManager);
        ArrayList<DiscoveryArticleBean> arrayList = new ArrayList<>();
        this.f15148A = arrayList;
        DiscoveryFragmentAdapter discoveryFragmentAdapter = new DiscoveryFragmentAdapter(null, arrayList, getContext());
        this.f15152z = discoveryFragmentAdapter;
        discoveryFragmentAdapter.setOnAllItemClickListener(new C4485a());
        this.recyclerView.setAdapter(this.f15152z);
        this.swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.InterfaceC0974j() { // from class: com.ifengyu.intercom.ui.fragment.c0
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.InterfaceC0974j
            /* renamed from: a */
            public final void mo9849a() {
                DiscoveryFragment.this.m10117w3();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m10123q3(ObservableEmitter observableEmitter) throws Exception {
        observableEmitter.onNext(m10128l3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m10121s3(ArrayList arrayList) throws Exception {
        this.f15148A.clear();
        this.f15148A.addAll(arrayList);
        this.f15152z.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m10119u3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m10117w3() {
        m10126n3();
        this.swipeRefreshLayout.setRefreshing(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public void m10116x3() {
        GetBuilder m11353b = OkHttpUtils.m11353b();
        m11353b.m11344a("https://cms.ifengyu.com/api/v1/pages/?type=puput.EntryPage&child_of=3&limit=" + this.f15149B + "&offset=" + this.f15150C + "&order=-first_published_at&fields=excerpt,header_image_url,views");
        m11353b.m11345c().m11325b(new C4487c());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m10127m3();
        m10126n3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_discovery, (ViewGroup) null);
        this.f15151D = inflate;
        ButterKnife.bind(this, inflate);
        m10125o3();
        return this.f15151D;
    }
}
