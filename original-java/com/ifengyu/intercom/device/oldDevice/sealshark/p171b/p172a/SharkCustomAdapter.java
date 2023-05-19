package com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p172a;

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
import com.google.android.material.timepicker.TimeModel;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.utils.UIUtils;
import java.util.List;
import java.util.Locale;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.a.a */
/* loaded from: classes2.dex */
public class SharkCustomAdapter extends RecyclerView.Adapter<C3652c> {

    /* renamed from: a */
    private final LayoutInflater f13162a;

    /* renamed from: b */
    private List<SealSharkChannelModel> f13163b;

    /* renamed from: d */
    private SealSharkChannelModel f13165d;

    /* renamed from: m */
    private InterfaceC3653d f13174m;

    /* renamed from: c */
    private final Typeface f13164c = AppConstants.f13909c;

    /* renamed from: l */
    private SpannableStringBuilder f13173l = new SpannableStringBuilder();

    /* renamed from: e */
    private AbsoluteSizeSpan f13166e = new AbsoluteSizeSpan(MethodsUtils.m11301I(12.0f));

    /* renamed from: f */
    private final ForegroundColorSpan f13167f = new ForegroundColorSpan(Color.parseColor("#99000000"));

    /* renamed from: g */
    private final ForegroundColorSpan f13168g = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* renamed from: h */
    private final ForegroundColorSpan f13169h = new ForegroundColorSpan(Color.parseColor("#ff000000"));

    /* renamed from: i */
    private final ForegroundColorSpan f13170i = new ForegroundColorSpan(Color.parseColor("#ff0076ff"));

    /* renamed from: j */
    private final ForegroundColorSpan f13171j = new ForegroundColorSpan(Color.parseColor("#99000000"));

    /* renamed from: k */
    private final ForegroundColorSpan f13172k = new ForegroundColorSpan(Color.parseColor("#960076ff"));

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.a.a$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3650a implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ C3652c f13175a;

        View$OnClickListenerC3650a(C3652c c3652c) {
            this.f13175a = c3652c;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = this.f13175a.getAdapterPosition();
            if (adapterPosition >= SharkCustomAdapter.this.f13163b.size() || adapterPosition < 0) {
                return;
            }
            SharkCustomAdapter.this.f13174m.mo12637o(this.f13175a.itemView, adapterPosition, (SealSharkChannelModel) SharkCustomAdapter.this.f13163b.get(adapterPosition));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.a.a$b */
    /* loaded from: classes2.dex */
    public class View$OnLongClickListenerC3651b implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ C3652c f13177a;

        View$OnLongClickListenerC3651b(C3652c c3652c) {
            this.f13177a = c3652c;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int adapterPosition = this.f13177a.getAdapterPosition();
            if (adapterPosition >= SharkCustomAdapter.this.f13163b.size() || adapterPosition < 0) {
                return true;
            }
            SharkCustomAdapter.this.f13174m.mo12640m(this.f13177a.itemView, adapterPosition, (SealSharkChannelModel) SharkCustomAdapter.this.f13163b.get(adapterPosition));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SharkCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.a.a$c */
    /* loaded from: classes2.dex */
    public class C3652c extends RecyclerView.AbstractC0849y {

        /* renamed from: a */
        TextView f13179a;

        /* renamed from: b */
        TextView f13180b;

        /* renamed from: c */
        TextView f13181c;

        /* renamed from: d */
        TextView f13182d;

        /* renamed from: e */
        View f13183e;

        public C3652c(View view) {
            super(view);
            this.f13179a = (TextView) view.findViewById(R.id.tv_custom_index);
            this.f13180b = (TextView) view.findViewById(R.id.tv_custom_name);
            this.f13181c = (TextView) view.findViewById(R.id.tv_custom_up);
            this.f13182d = (TextView) view.findViewById(R.id.tv_custom_down);
            this.f13183e = view.findViewById(R.id.bottom_space_view);
        }

        /* renamed from: a */
        public void m12957a(int i) {
            SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) SharkCustomAdapter.this.f13163b.get(i);
            this.f13179a.setText(String.format(Locale.getDefault(), TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(sealSharkChannelModel.getNo() + 1)));
            this.f13180b.setText(sealSharkChannelModel.getName().trim());
            if (sealSharkChannelModel.equals(SharkCustomAdapter.this.f13165d)) {
                this.f13179a.setTextColor(SharkCustomAdapter.this.f13168g.getForegroundColor());
                this.f13181c.setTextColor(SharkCustomAdapter.this.f13170i.getForegroundColor());
                this.f13182d.setTextColor(SharkCustomAdapter.this.f13170i.getForegroundColor());
            } else {
                this.f13179a.setTextColor(SharkCustomAdapter.this.f13167f.getForegroundColor());
                this.f13181c.setTextColor(SharkCustomAdapter.this.f13169h.getForegroundColor());
                this.f13182d.setTextColor(SharkCustomAdapter.this.f13169h.getForegroundColor());
            }
            if (sealSharkChannelModel.getRxCss() % 256 != 0 || sealSharkChannelModel.getTxCss() % 256 != 0) {
                SharkCustomAdapter.this.f13173l.clear();
                if (sealSharkChannelModel.getRxCss() % 256 == 0) {
                    SharkCustomAdapter.this.f13173l.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq())).append((CharSequence) " / ").append((CharSequence) UIUtils.m8603o(R.string.css_code_close));
                } else {
                    SharkCustomAdapter.this.f13173l.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq())).append((CharSequence) " / ").append((CharSequence) MethodsUtils.m11304F(sealSharkChannelModel.getRxCss()));
                }
                int indexOf = SharkCustomAdapter.this.f13173l.toString().indexOf("/");
                SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13166e, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                if (sealSharkChannelModel.equals(SharkCustomAdapter.this.f13165d)) {
                    SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13172k, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                } else {
                    SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13171j, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                }
                this.f13181c.setText(SharkCustomAdapter.this.f13173l);
                SharkCustomAdapter.this.f13173l.clear();
                if (sealSharkChannelModel.getTxCss() % 256 == 0) {
                    SharkCustomAdapter.this.f13173l.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())).append((CharSequence) " / ").append((CharSequence) UIUtils.m8603o(R.string.css_code_close));
                } else {
                    SharkCustomAdapter.this.f13173l.append((CharSequence) MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())).append((CharSequence) " / ").append((CharSequence) MethodsUtils.m11304F(sealSharkChannelModel.getTxCss()));
                }
                SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13166e, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                if (sealSharkChannelModel.equals(SharkCustomAdapter.this.f13165d)) {
                    SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13172k, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                } else {
                    SharkCustomAdapter.this.f13173l.setSpan(SharkCustomAdapter.this.f13171j, indexOf, SharkCustomAdapter.this.f13173l.length(), 33);
                }
                this.f13182d.setText(SharkCustomAdapter.this.f13173l);
            } else {
                this.f13181c.setText(MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()));
                this.f13182d.setText(MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq()));
            }
            this.f13181c.setTypeface(SharkCustomAdapter.this.f13164c);
            this.f13182d.setTypeface(SharkCustomAdapter.this.f13164c);
        }
    }

    /* compiled from: SharkCustomAdapter.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.b.a.a$d */
    /* loaded from: classes2.dex */
    public interface InterfaceC3653d {
        /* renamed from: m */
        void mo12640m(View view, int i, SealSharkChannelModel sealSharkChannelModel);

        /* renamed from: o */
        void mo12637o(View view, int i, SealSharkChannelModel sealSharkChannelModel);
    }

    public SharkCustomAdapter(Context context, List<SealSharkChannelModel> list) {
        this.f13162a = LayoutInflater.from(context);
        this.f13163b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<SealSharkChannelModel> list = this.f13163b;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: q */
    public void onBindViewHolder(C3652c c3652c, int i) {
        if (i == this.f13163b.size() - 1) {
            c3652c.f13183e.setVisibility(0);
        } else {
            c3652c.f13183e.setVisibility(8);
        }
        c3652c.m12957a(i);
        if (this.f13174m != null) {
            c3652c.itemView.setOnClickListener(new View$OnClickListenerC3650a(c3652c));
            c3652c.itemView.setOnLongClickListener(new View$OnLongClickListenerC3651b(c3652c));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: r */
    public C3652c onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C3652c(this.f13162a.inflate(R.layout.item_shark_custom_info, viewGroup, false));
    }

    /* renamed from: s */
    public void m12958s(SealSharkChannelModel sealSharkChannelModel) {
        this.f13165d = sealSharkChannelModel;
    }

    public void setOnItemClickListener(InterfaceC3653d interfaceC3653d) {
        this.f13174m = interfaceC3653d;
    }
}
