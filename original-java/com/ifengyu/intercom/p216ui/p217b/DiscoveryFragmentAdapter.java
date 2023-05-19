package com.ifengyu.intercom.p216ui.p217b;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.RequestOptions;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.DiscoveryArticleBean;
import com.ifengyu.intercom.p216ui.widget.view.MyColorPointHintView;
import com.ifengyu.library.utils.UIUtils;
import com.jude.rollviewpager.InterfaceC5032b;
import com.jude.rollviewpager.RollPagerView;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import java.util.ArrayList;

/* renamed from: com.ifengyu.intercom.ui.b.b */
/* loaded from: classes2.dex */
public class DiscoveryFragmentAdapter extends RecyclerView.Adapter {

    /* renamed from: a */
    private Animation f14974a;

    /* renamed from: b */
    private ArrayList<DiscoveryArticleBean> f14975b;

    /* renamed from: c */
    private ArrayList<DiscoveryArticleBean> f14976c;

    /* renamed from: d */
    private Context f14977d;

    /* renamed from: e */
    private PicLoopPagerAdapter f14978e;

    /* renamed from: f */
    private InterfaceC4431a f14979f;

    /* renamed from: g */
    private final RequestOptions f14980g = new RequestOptions().m17260V(R.drawable.common_icon_head_big).m17235k(R.drawable.common_icon_head_big).m17237j(R.drawable.common_icon_head_big).m17251c();

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.b$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC4431a {
        /* renamed from: a */
        void mo10115a();

        /* renamed from: b */
        void mo10114b();

        /* renamed from: c */
        void mo10113c(int i);

        /* renamed from: d */
        void mo10112d();

        /* renamed from: e */
        void mo10111e(int i);

        /* renamed from: f */
        void mo10110f();
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.b$b */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC4432b extends RecyclerView.AbstractC0849y implements View.OnClickListener {

        /* renamed from: a */
        TextView f14981a;

        /* renamed from: b */
        ImageView f14982b;

        public View$OnClickListenerC4432b(View view) {
            super(view);
            this.f14981a = (TextView) view.findViewById(R.id.load_more_text);
            this.f14982b = (ImageView) view.findViewById(R.id.load_more_icon);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.itemView.setClickable(false);
            this.f14981a.setText(R.string.loading);
            this.f14982b.startAnimation(DiscoveryFragmentAdapter.this.f14974a);
            this.f14982b.setVisibility(0);
            if (DiscoveryFragmentAdapter.this.f14979f != null) {
                DiscoveryFragmentAdapter.this.f14979f.mo10115a();
            }
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.b$c */
    /* loaded from: classes2.dex */
    class C4433c extends RecyclerView.AbstractC0849y {

        /* renamed from: a */
        RollPagerView f14984a;

        /* compiled from: DiscoveryFragmentAdapter.java */
        /* renamed from: com.ifengyu.intercom.ui.b.b$c$a */
        /* loaded from: classes2.dex */
        class C4434a implements InterfaceC5032b {
            C4434a(DiscoveryFragmentAdapter discoveryFragmentAdapter) {
            }

            @Override // com.jude.rollviewpager.InterfaceC5032b
            /* renamed from: a */
            public void mo8325a(int i) {
                if (DiscoveryFragmentAdapter.this.f14979f != null) {
                    DiscoveryFragmentAdapter.this.f14979f.mo10111e(i);
                }
            }
        }

        public C4433c(View view) {
            super(view);
            RollPagerView rollPagerView = (RollPagerView) view.findViewById(R.id.roll_pager_view);
            this.f14984a = rollPagerView;
            rollPagerView.setAnimationDurtion(XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER);
            this.f14984a.setHintView(new MyColorPointHintView(DiscoveryFragmentAdapter.this.f14977d, Color.parseColor("#FF0076FF"), Color.parseColor("#FFFFFFFF")));
            this.f14984a.setOnItemClickListener(new C4434a(DiscoveryFragmentAdapter.this));
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.b$d */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC4435d extends RecyclerView.AbstractC0849y implements View.OnClickListener {

        /* renamed from: a */
        ImageView f14987a;

        /* renamed from: b */
        TextView f14988b;

        /* renamed from: c */
        TextView f14989c;

        public View$OnClickListenerC4435d(View view) {
            super(view);
            this.f14987a = (ImageView) view.findViewById(R.id.item_picture);
            this.f14988b = (TextView) view.findViewById(R.id.item_title);
            this.f14989c = (TextView) view.findViewById(R.id.item_read_count);
            view.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DiscoveryFragmentAdapter.this.f14979f != null) {
                DiscoveryFragmentAdapter.this.f14979f.mo10113c(getLayoutPosition());
            }
        }
    }

    /* compiled from: DiscoveryFragmentAdapter.java */
    /* renamed from: com.ifengyu.intercom.ui.b.b$e */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC4436e extends RecyclerView.AbstractC0849y implements View.OnClickListener {

        /* renamed from: a */
        LinearLayout f14991a;

        /* renamed from: b */
        LinearLayout f14992b;

        /* renamed from: c */
        LinearLayout f14993c;

        public View$OnClickListenerC4436e(View view) {
            super(view);
            this.f14991a = (LinearLayout) view.findViewById(R.id.info_query_item_1);
            this.f14992b = (LinearLayout) view.findViewById(R.id.info_query_item_2);
            this.f14993c = (LinearLayout) view.findViewById(R.id.info_query_item_3);
            this.f14991a.setOnClickListener(this);
            this.f14992b.setOnClickListener(this);
            this.f14993c.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (DiscoveryFragmentAdapter.this.f14979f == null) {
                return;
            }
            switch (view.getId()) {
                case R.id.info_query_item_1 /* 2131296800 */:
                    DiscoveryFragmentAdapter.this.f14979f.mo10112d();
                    return;
                case R.id.info_query_item_2 /* 2131296801 */:
                    DiscoveryFragmentAdapter.this.f14979f.mo10110f();
                    return;
                case R.id.info_query_item_3 /* 2131296802 */:
                    DiscoveryFragmentAdapter.this.f14979f.mo10114b();
                    return;
                default:
                    return;
            }
        }
    }

    public DiscoveryFragmentAdapter(ArrayList<DiscoveryArticleBean> arrayList, ArrayList<DiscoveryArticleBean> arrayList2, Context context) {
        this.f14975b = arrayList;
        this.f14976c = arrayList2;
        this.f14977d = context;
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.rotate);
        this.f14974a = loadAnimation;
        loadAnimation.setInterpolator(new LinearInterpolator());
    }

    /* renamed from: h */
    private void m10396h(String str, ImageView imageView) {
        RequestBuilder<Drawable> m18113q = Glide.m18152u(this.f14977d).m18113q(str);
        m18113q.m18140b(this.f14980g);
        m18113q.m18130l(imageView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f14976c.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return i == getItemCount() + (-1) ? 3 : 2;
    }

    /* renamed from: i */
    public void m10395i(ArrayList<DiscoveryArticleBean> arrayList) {
        this.f14976c = arrayList;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.AbstractC0849y abstractC0849y, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType == 0) {
            PicLoopPagerAdapter picLoopPagerAdapter = this.f14978e;
            if (picLoopPagerAdapter != null) {
                picLoopPagerAdapter.notifyDataSetChanged();
                return;
            }
            C4433c c4433c = (C4433c) abstractC0849y;
            PicLoopPagerAdapter picLoopPagerAdapter2 = new PicLoopPagerAdapter(this.f14975b, c4433c.f14984a);
            this.f14978e = picLoopPagerAdapter2;
            c4433c.f14984a.setAdapter(picLoopPagerAdapter2);
        } else if (itemViewType != 2) {
            if (itemViewType != 3) {
                return;
            }
            View$OnClickListenerC4432b view$OnClickListenerC4432b = (View$OnClickListenerC4432b) abstractC0849y;
            view$OnClickListenerC4432b.itemView.setClickable(true);
            view$OnClickListenerC4432b.f14981a.setText(R.string.load_more);
            view$OnClickListenerC4432b.f14982b.clearAnimation();
            view$OnClickListenerC4432b.f14982b.setVisibility(8);
        } else {
            View$OnClickListenerC4435d view$OnClickListenerC4435d = (View$OnClickListenerC4435d) abstractC0849y;
            DiscoveryArticleBean discoveryArticleBean = this.f14976c.get(i);
            view$OnClickListenerC4435d.f14988b.setText(discoveryArticleBean.getTitle());
            view$OnClickListenerC4435d.f14989c.setText(UIUtils.m8602p(R.string.discovery_read_count_s, Integer.valueOf(discoveryArticleBean.getViews())));
            String medium = discoveryArticleBean.getHeader_image_url().getMedium();
            if (medium != null) {
                if (!medium.toLowerCase().contains("http:") && !medium.toLowerCase().contains("https:")) {
                    m10396h("https://cms.ifengyu.com" + medium, view$OnClickListenerC4435d.f14987a);
                    return;
                }
                m10396h(medium, view$OnClickListenerC4435d.f14987a);
                return;
            }
            m10396h(null, view$OnClickListenerC4435d.f14987a);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.AbstractC0849y onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new C4433c(LayoutInflater.from(this.f14977d).inflate(R.layout.pic_roll_poling_view, viewGroup, false));
        }
        if (i == 1) {
            return new View$OnClickListenerC4436e(LayoutInflater.from(this.f14977d).inflate(R.layout.discovery_fragment_info_query_item, viewGroup, false));
        }
        if (i == 3) {
            return new View$OnClickListenerC4432b(LayoutInflater.from(this.f14977d).inflate(R.layout.discovery_fragment_load_more, viewGroup, false));
        }
        return new View$OnClickListenerC4435d(LayoutInflater.from(this.f14977d).inflate(R.layout.discovery_fragment_info_content_item, viewGroup, false));
    }

    public void setOnAllItemClickListener(InterfaceC4431a interfaceC4431a) {
        this.f14979f = interfaceC4431a;
    }
}
