package com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import java.util.List;
import java.util.Locale;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.b */
/* loaded from: classes2.dex */
public class SealCustomAdapter extends RecyclerView.Adapter<C3635c> {

    /* renamed from: a */
    private final LayoutInflater f13108a;

    /* renamed from: b */
    private List<SealSharkChannelModel> f13109b;

    /* renamed from: d */
    private SealSharkChannelModel f13111d;

    /* renamed from: o */
    private InterfaceC3636d f13122o;

    /* renamed from: c */
    private final Typeface f13110c = AppConstants.f13909c;

    /* renamed from: n */
    private SpannableStringBuilder f13121n = new SpannableStringBuilder();

    /* renamed from: e */
    private AbsoluteSizeSpan f13112e = new AbsoluteSizeSpan(MethodsUtils.m11301I(12.0f));

    /* renamed from: f */
    private final ForegroundColorSpan f13113f = new ForegroundColorSpan(Color.parseColor("#99000000"));

    /* renamed from: g */
    private final ForegroundColorSpan f13114g = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));

    /* renamed from: h */
    private final ForegroundColorSpan f13115h = new ForegroundColorSpan(Color.parseColor("#ff000000"));

    /* renamed from: i */
    private final ForegroundColorSpan f13116i = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));

    /* renamed from: j */
    private final ForegroundColorSpan f13117j = new ForegroundColorSpan(Color.parseColor("#ff000000"));

    /* renamed from: k */
    private final ForegroundColorSpan f13118k = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));

    /* renamed from: l */
    private final ForegroundColorSpan f13119l = new ForegroundColorSpan(Color.parseColor("#99000000"));

    /* renamed from: m */
    private final ForegroundColorSpan f13120m = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.b$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3633a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ C3635c f13123a;

        View$OnClickListenerC3633a(C3635c c3635c) {
            this.f13123a = c3635c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f13123a.getAdapterPosition();
            if (adapterPosition < SealCustomAdapter.this.f13109b.size()) {
                SealCustomAdapter.this.f13122o.mo12782o(this.f13123a.itemView, adapterPosition, (SealSharkChannelModel) SealCustomAdapter.this.f13109b.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.b$b */
    /* loaded from: classes2.dex */
    public class View$OnLongClickListenerC3634b implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ C3635c f13125a;

        View$OnLongClickListenerC3634b(C3635c c3635c) {
            this.f13125a = c3635c;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f13125a.getAdapterPosition();
            if (adapterPosition < SealCustomAdapter.this.f13109b.size()) {
                SealCustomAdapter.this.f13122o.mo12785m(this.f13125a.itemView, adapterPosition, (SealSharkChannelModel) SealCustomAdapter.this.f13109b.get(adapterPosition));
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.b$c */
    /* loaded from: classes2.dex */
    public class C3635c extends RecyclerView.AbstractC0849y {

        /* renamed from: a */
        TextView f13127a;

        /* renamed from: b */
        TextView f13128b;

        /* renamed from: c */
        TextView f13129c;

        /* renamed from: d */
        TextView f13130d;

        /* renamed from: e */
        View f13131e;

        public C3635c(View view) {
            super(view);
            this.f13127a = (TextView) view.findViewById(R.id.tv_custom_index);
            this.f13128b = (TextView) view.findViewById(R.id.tv_custom_name);
            this.f13129c = (TextView) view.findViewById(R.id.tv_custom_up);
            this.f13130d = (TextView) view.findViewById(R.id.tv_custom_down);
            this.f13131e = view.findViewById(R.id.bottom_space_view);
        }

        /* renamed from: a */
        public void m13018a(int i) {
            SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) SealCustomAdapter.this.f13109b.get(i);
            this.f13127a.setText(String.format(Locale.getDefault(), "C%02d", Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            this.f13128b.setText(sealSharkChannelModel.getName().trim());
            if (sealSharkChannelModel.equals(SealCustomAdapter.this.f13111d)) {
                this.f13127a.setTextColor(SealCustomAdapter.this.f13114g.getForegroundColor());
                this.f13128b.setTextColor(SealCustomAdapter.this.f13116i.getForegroundColor());
                this.f13129c.setTextColor(SealCustomAdapter.this.f13118k.getForegroundColor());
                this.f13130d.setTextColor(SealCustomAdapter.this.f13118k.getForegroundColor());
            } else {
                this.f13127a.setTextColor(SealCustomAdapter.this.f13113f.getForegroundColor());
                this.f13128b.setTextColor(SealCustomAdapter.this.f13115h.getForegroundColor());
                this.f13129c.setTextColor(SealCustomAdapter.this.f13117j.getForegroundColor());
                this.f13130d.setTextColor(SealCustomAdapter.this.f13117j.getForegroundColor());
            }
            if (sealSharkChannelModel.getRxCss() % 256 != 0 || sealSharkChannelModel.getTxCss() % 256 != 0) {
                SealCustomAdapter.this.f13121n.clear();
                if (sealSharkChannelModel.getRxCss() % 256 == 0) {
                    SealCustomAdapter.this.f13121n.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq())).append((CharSequence) " / ").append((CharSequence) UIUtils.m8603o(R.string.css_code_close));
                } else {
                    SealCustomAdapter.this.f13121n.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq())).append((CharSequence) " / ").append((CharSequence) MethodsUtils.m11305E(sealSharkChannelModel.getRxCss()));
                }
                int indexOf = SealCustomAdapter.this.f13121n.toString().indexOf("/");
                SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13112e, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                if (sealSharkChannelModel.equals(SealCustomAdapter.this.f13111d)) {
                    SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13120m, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                } else {
                    SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13119l, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                }
                this.f13129c.setText(SealCustomAdapter.this.f13121n);
                SealCustomAdapter.this.f13121n.clear();
                if (sealSharkChannelModel.getTxCss() % 256 == 0) {
                    SealCustomAdapter.this.f13121n.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())).append((CharSequence) " / ").append((CharSequence) UIUtils.m8603o(R.string.css_code_close));
                } else {
                    SealCustomAdapter.this.f13121n.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())).append((CharSequence) " / ").append((CharSequence) MethodsUtils.m11305E(sealSharkChannelModel.getTxCss()));
                }
                SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13112e, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                if (sealSharkChannelModel.equals(SealCustomAdapter.this.f13111d)) {
                    SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13120m, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                } else {
                    SealCustomAdapter.this.f13121n.setSpan(SealCustomAdapter.this.f13119l, indexOf, SealCustomAdapter.this.f13121n.length(), 33);
                }
                this.f13130d.setText(SealCustomAdapter.this.f13121n);
            } else {
                this.f13129c.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
                this.f13130d.setText(MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq()));
            }
            this.f13129c.setTypeface(SealCustomAdapter.this.f13110c);
            this.f13130d.setTypeface(SealCustomAdapter.this.f13110c);
        }
    }

    /* compiled from: SealCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.a.b$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC3636d {
        /* renamed from: m */
        void mo12785m(View view, int i, SealSharkChannelModel sealSharkChannelModel);

        /* renamed from: o */
        void mo12782o(View view, int i, SealSharkChannelModel sealSharkChannelModel);
    }

    public SealCustomAdapter(Context context, List<SealSharkChannelModel> list) {
        this.f13108a = LayoutInflater.from(context);
        this.f13109b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SealSharkChannelModel> list = this.f13109b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: s */
    public void onBindViewHolder(C3635c c3635c, int i) {
        if (i == this.f13109b.size() - 1) {
            c3635c.f13131e.setVisibility(0);
        } else {
            c3635c.f13131e.setVisibility(8);
        }
        c3635c.m13018a(i);
        if (this.f13122o != null) {
            c3635c.itemView.setOnClickListener(new View$OnClickListenerC3633a(c3635c));
            c3635c.itemView.setOnLongClickListener(new View$OnLongClickListenerC3634b(c3635c));
        }
    }

    public void setOnItemClickListener(InterfaceC3636d interfaceC3636d) {
        this.f13122o = interfaceC3636d;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: t */
    public C3635c onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C3635c(this.f13108a.inflate(R.layout.item_seal_custom_info, viewGroup, false));
    }

    /* renamed from: u */
    public void m13019u(SealSharkChannelModel sealSharkChannelModel) {
        this.f13111d = sealSharkChannelModel;
    }
}
