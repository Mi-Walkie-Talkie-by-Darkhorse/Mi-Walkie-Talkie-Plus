package com.ifengyu.intercom.device.oldDevice.p177w.p178a;

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
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import java.util.List;

/* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.b */
/* loaded from: classes2.dex */
public class DolphinRelayAdapter extends RecyclerView.Adapter<C3838d> {

    /* renamed from: a */
    private final LayoutInflater f13637a;

    /* renamed from: b */
    private List<DolphinChannelModel> f13638b;

    /* renamed from: d */
    private DolphinChannelModel f13640d;

    /* renamed from: k */
    private InterfaceC3837c f13647k;

    /* renamed from: c */
    private final Typeface f13639c = AppConstants.f13909c;

    /* renamed from: j */
    private SpannableStringBuilder f13646j = new SpannableStringBuilder();

    /* renamed from: e */
    private AbsoluteSizeSpan f13641e = new AbsoluteSizeSpan(MethodsUtils.m11301I(12.0f));

    /* renamed from: f */
    private final ForegroundColorSpan f13642f = new ForegroundColorSpan(Color.parseColor("#ff000000"));

    /* renamed from: g */
    private final ForegroundColorSpan f13643g = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));

    /* renamed from: h */
    private final ForegroundColorSpan f13644h = new ForegroundColorSpan(Color.parseColor("#99000000"));

    /* renamed from: i */
    private final ForegroundColorSpan f13645i = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.b$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3835a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ C3838d f13648a;

        View$OnClickListenerC3835a(C3838d c3838d) {
            this.f13648a = c3838d;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f13648a.getAdapterPosition();
            if (adapterPosition < DolphinRelayAdapter.this.f13638b.size()) {
                DolphinRelayAdapter.this.f13647k.mo12476v0(this.f13648a.itemView, adapterPosition, (DolphinChannelModel) DolphinRelayAdapter.this.f13638b.get(adapterPosition));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.b$b */
    /* loaded from: classes2.dex */
    public class View$OnLongClickListenerC3836b implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ C3838d f13650a;

        View$OnLongClickListenerC3836b(C3838d c3838d) {
            this.f13650a = c3838d;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f13650a.getAdapterPosition();
            if (adapterPosition < DolphinRelayAdapter.this.f13638b.size()) {
                DolphinRelayAdapter.this.f13647k.mo12477T0(this.f13650a.itemView, adapterPosition, (DolphinChannelModel) DolphinRelayAdapter.this.f13638b.get(adapterPosition));
                return true;
            }
            return true;
        }
    }

    /* compiled from: DolphinRelayAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.b$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC3837c {
        /* renamed from: T0 */
        void mo12477T0(View view, int i, DolphinChannelModel dolphinChannelModel);

        /* renamed from: v0 */
        void mo12476v0(View view, int i, DolphinChannelModel dolphinChannelModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DolphinRelayAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.w.a.b$d */
    /* loaded from: classes2.dex */
    public class C3838d extends RecyclerView.AbstractC0849y {

        /* renamed from: a */
        TextView f13652a;

        /* renamed from: b */
        TextView f13653b;

        /* renamed from: c */
        TextView f13654c;

        public C3838d(View view) {
            super(view);
            this.f13652a = (TextView) view.findViewById(R.id.tv_relay_name);
            this.f13653b = (TextView) view.findViewById(R.id.tv_relay_up);
            this.f13654c = (TextView) view.findViewById(R.id.tv_relay_down);
        }

        /* renamed from: a */
        public void m12475a(int i) {
            String m8603o;
            String m8603o2;
            DolphinChannelModel dolphinChannelModel = (DolphinChannelModel) DolphinRelayAdapter.this.f13638b.get(i);
            this.f13652a.setText(dolphinChannelModel.getName().trim());
            DolphinRelayAdapter.this.f13646j.clear();
            int tone = dolphinChannelModel.getTone();
            String[] strArr = AppConstants.f13912f;
            if (tone < strArr.length) {
                if (dolphinChannelModel.getTone() != 0 && dolphinChannelModel.getTone() != 40 && dolphinChannelModel.getTone() != 124) {
                    m8603o = strArr[dolphinChannelModel.getTone()];
                } else {
                    m8603o = UIUtils.m8603o(R.string.common_closed);
                }
            } else {
                m8603o = UIUtils.m8603o(R.string.common_closed);
            }
            DolphinRelayAdapter.this.f13646j.append((CharSequence) MethodsUtils.m11290j(dolphinChannelModel.getFreq())).append((CharSequence) " / ").append((CharSequence) m8603o);
            int indexOf = DolphinRelayAdapter.this.f13646j.toString().indexOf("/");
            DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13641e, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            if (dolphinChannelModel.equals(DolphinRelayAdapter.this.f13640d)) {
                this.f13652a.setTextColor(DolphinRelayAdapter.this.f13643g.getForegroundColor());
                this.f13653b.setTextColor(DolphinRelayAdapter.this.f13643g.getForegroundColor());
                this.f13654c.setTextColor(DolphinRelayAdapter.this.f13643g.getForegroundColor());
                DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13645i, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            } else {
                this.f13652a.setTextColor(DolphinRelayAdapter.this.f13642f.getForegroundColor());
                this.f13653b.setTextColor(DolphinRelayAdapter.this.f13642f.getForegroundColor());
                this.f13654c.setTextColor(DolphinRelayAdapter.this.f13642f.getForegroundColor());
                DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13644h, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            }
            this.f13653b.setText(DolphinRelayAdapter.this.f13646j);
            this.f13653b.setTypeface(DolphinRelayAdapter.this.f13639c);
            DolphinRelayAdapter.this.f13646j.clear();
            if (dolphinChannelModel.getTone2() < strArr.length) {
                if (dolphinChannelModel.getTone2() != 0 && dolphinChannelModel.getTone2() != 40 && dolphinChannelModel.getTone2() != 124) {
                    m8603o2 = strArr[dolphinChannelModel.getTone2()];
                } else {
                    m8603o2 = UIUtils.m8603o(R.string.common_closed);
                }
            } else {
                m8603o2 = UIUtils.m8603o(R.string.common_closed);
            }
            DolphinRelayAdapter.this.f13646j.append((CharSequence) MethodsUtils.m11290j(dolphinChannelModel.getFreq2())).append((CharSequence) " / ").append((CharSequence) m8603o2);
            DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13641e, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            if (dolphinChannelModel.equals(DolphinRelayAdapter.this.f13640d)) {
                DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13645i, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            } else {
                DolphinRelayAdapter.this.f13646j.setSpan(DolphinRelayAdapter.this.f13644h, indexOf, DolphinRelayAdapter.this.f13646j.length(), 33);
            }
            this.f13654c.setText(DolphinRelayAdapter.this.f13646j);
            this.f13654c.setTypeface(DolphinRelayAdapter.this.f13639c);
        }
    }

    public DolphinRelayAdapter(Context context, List<DolphinChannelModel> list) {
        this.f13637a = LayoutInflater.from(context);
        this.f13638b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DolphinChannelModel> list = this.f13638b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: o */
    public void onBindViewHolder(C3838d c3838d, int i) {
        c3838d.m12475a(i);
        if (this.f13647k != null) {
            c3838d.itemView.setOnClickListener(new View$OnClickListenerC3835a(c3838d));
            c3838d.itemView.setOnLongClickListener(new View$OnLongClickListenerC3836b(c3838d));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: p */
    public C3838d onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C3838d(this.f13637a.inflate(R.layout.item_relay_info, viewGroup, false));
    }

    /* renamed from: q */
    public void m12478q(DolphinChannelModel dolphinChannelModel) {
        this.f13640d = dolphinChannelModel;
    }

    public void setOnItemClickListener(InterfaceC3837c interfaceC3837c) {
        this.f13647k = interfaceC3837c;
    }
}
