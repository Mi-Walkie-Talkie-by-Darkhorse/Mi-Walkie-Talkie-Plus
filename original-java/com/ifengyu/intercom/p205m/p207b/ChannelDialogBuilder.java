package com.ifengyu.intercom.p205m.p207b;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p205m.p206a.BaseQMUIDialogBuilder;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.tencent.connect.common.Constants;

/* renamed from: com.ifengyu.intercom.m.b.c */
/* loaded from: classes2.dex */
public class ChannelDialogBuilder extends BaseQMUIDialogBuilder<ChannelDialogBuilder> {

    /* renamed from: B */
    private static final String[] f14336B = {"1", "2", "3", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "0", "0", UIUtils.m8603o(R.string.common_sure)};

    /* renamed from: C */
    private static final int[] f14337C = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0};

    /* renamed from: A */
    private InterfaceC4114c f14338A;

    /* renamed from: u */
    private C4113b f14339u;

    /* renamed from: v */
    private TextView[] f14340v;

    /* renamed from: w */
    private int[] f14341w;

    /* renamed from: x */
    private int[] f14342x;

    /* renamed from: y */
    private String f14343y;

    /* renamed from: z */
    private int f14344z;

    /* compiled from: ChannelDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.c$a */
    /* loaded from: classes2.dex */
    class C4112a implements AdapterView.OnItemClickListener {
        C4112a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            ChannelDialogBuilder.this.m11447J(adapterView, view, i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChannelDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.c$b */
    /* loaded from: classes2.dex */
    public class C4113b extends BaseAdapter {

        /* renamed from: a */
        private String[] f14346a;

        /* renamed from: b */
        private LayoutInflater f14347b;

        /* renamed from: c */
        private boolean[] f14348c;

        public C4113b(Context context, String[] strArr) {
            this.f14346a = strArr;
            this.f14347b = LayoutInflater.from(context);
            this.f14348c = new boolean[strArr.length];
        }

        @Override // android.widget.Adapter
        /* renamed from: a */
        public String getItem(int i) {
            return this.f14346a[i];
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            String[] strArr = this.f14346a;
            if (strArr != null) {
                return strArr.length;
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C4115d c4115d;
            if (view == null) {
                view = this.f14347b.inflate(R.layout.keyboard_item, (ViewGroup) null);
                c4115d = new C4115d();
                c4115d.f14350a = (TextView) view.findViewById(R.id.tv_key);
                c4115d.f14351b = (ImageView) view.findViewById(R.id.imgDelete);
                view.setTag(c4115d);
            } else {
                c4115d = (C4115d) view.getTag();
            }
            c4115d.f14350a.setText(this.f14346a[i]);
            if (i == 9) {
                c4115d.f14351b.setVisibility(0);
                c4115d.f14350a.setVisibility(8);
                this.f14348c[i] = true;
            } else if (i == 11) {
                c4115d.f14350a.setText(UIUtils.m8603o(R.string.common_ok));
                c4115d.f14350a.setTextSize(0, UIUtils.m8594x(16.0f));
                c4115d.f14350a.setVisibility(0);
                c4115d.f14351b.setVisibility(8);
                this.f14348c[i] = true;
            } else {
                c4115d.f14350a.setVisibility(0);
                c4115d.f14351b.setVisibility(8);
                boolean[] zArr = this.f14348c;
                ChannelDialogBuilder channelDialogBuilder = ChannelDialogBuilder.this;
                zArr[i] = channelDialogBuilder.mo11440L(channelDialogBuilder.f14344z + 1, ChannelDialogBuilder.this.f14341w, i);
                if (this.f14348c[i]) {
                    c4115d.f14350a.setTextColor(Color.parseColor("#333333"));
                } else {
                    c4115d.f14350a.setTextColor(Color.parseColor("#dddddd"));
                }
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.f14348c[i];
        }
    }

    /* compiled from: ChannelDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.c$c */
    /* loaded from: classes2.dex */
    public interface InterfaceC4114c {
        /* renamed from: a */
        void mo11441a(QMUIDialog qMUIDialog, int i);
    }

    /* compiled from: ChannelDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.m.b.c$d */
    /* loaded from: classes2.dex */
    public static class C4115d {

        /* renamed from: a */
        TextView f14350a;

        /* renamed from: b */
        ImageView f14351b;
    }

    public ChannelDialogBuilder(Context context) {
        super(context);
        this.f14344z = -1;
        this.f14340v = new TextView[7];
        this.f14341w = new int[7];
        int i = 0;
        while (true) {
            int[] iArr = this.f14341w;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = -1;
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public void m11447J(AdapterView<?> adapterView, View view, int i, long j) {
        int[] iArr;
        if (i != 11) {
            if (i == 9) {
                int i2 = this.f14344z;
                if (i2 >= 0) {
                    TextView[] textViewArr = this.f14340v;
                    if (i2 < textViewArr.length) {
                        textViewArr[i2].setText("");
                        int[] iArr2 = this.f14341w;
                        int i3 = this.f14344z;
                        iArr2[i3] = -1;
                        int i4 = i3 - 1;
                        this.f14344z = i4;
                        mo11439M(i4, iArr2, i);
                        this.f14339u.notifyDataSetChanged();
                        return;
                    }
                    return;
                }
                return;
            }
            int i5 = this.f14344z;
            if (i5 >= -1) {
                TextView[] textViewArr2 = this.f14340v;
                if (i5 < textViewArr2.length - 1) {
                    int i6 = i5 + 1;
                    this.f14344z = i6;
                    textViewArr2[i6].setText(f14336B[i]);
                    int[] iArr3 = this.f14341w;
                    int i7 = this.f14344z;
                    iArr3[i7] = f14337C[i];
                    mo11438N(i7, iArr3, i);
                    this.f14339u.notifyDataSetChanged();
                }
            }
        } else if (this.f14344z < this.f14340v.length - 1 || this.f14338A == null) {
        } else {
            int i8 = 0;
            int i9 = 0;
            while (true) {
                if (i8 < this.f14341w.length) {
                    i9 = (int) (i9 + (iArr[i8] * Math.pow(10.0d, (iArr.length - 1) - i8)));
                    i8++;
                } else {
                    this.f14338A.mo11441a(this.f17717b, i9 * 100);
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: H */
    public void m11449H() {
        int[] iArr = this.f14341w;
        int i = this.f14344z;
        iArr[i] = -1;
        this.f14340v[i].setText("");
        this.f14344z--;
    }

    /* renamed from: I */
    protected int m11448I() {
        return R.layout.channel_input_dialog;
    }

    /* renamed from: K */
    protected boolean m11446K() {
        String str = this.f14343y;
        return (str == null || str.length() == 0) ? false : true;
    }

    /* renamed from: L */
    protected boolean mo11440L(int i, int[] iArr, int i2) {
        return false;
    }

    /* renamed from: M */
    protected void mo11439M(int i, int[] iArr, int i2) {
    }

    /* renamed from: N */
    protected void mo11438N(int i, int[] iArr, int i2) {
    }

    /* renamed from: O */
    public ChannelDialogBuilder m11445O(InterfaceC4114c interfaceC4114c) {
        this.f14338A = interfaceC4114c;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: P */
    public void m11444P(int i) {
        int i2 = this.f14344z + 1;
        this.f14344z = i2;
        this.f14341w[i2] = i;
        this.f14340v[i2].setText(String.valueOf(i));
    }

    /* renamed from: Q */
    public ChannelDialogBuilder m11443Q(String str) {
        this.f14343y = str;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: k */
    protected View mo7246k(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        TextView[] textViewArr;
        View inflate = LayoutInflater.from(context).inflate(m11448I(), (ViewGroup) null);
        int i = 0;
        this.f14340v[0] = (TextView) inflate.findViewById(R.id.tv_num1);
        this.f14340v[1] = (TextView) inflate.findViewById(R.id.tv_num2);
        this.f14340v[2] = (TextView) inflate.findViewById(R.id.tv_num3);
        this.f14340v[3] = (TextView) inflate.findViewById(R.id.tv_num4);
        this.f14340v[4] = (TextView) inflate.findViewById(R.id.tv_num5);
        this.f14340v[5] = (TextView) inflate.findViewById(R.id.tv_num6);
        this.f14340v[6] = (TextView) inflate.findViewById(R.id.tv_num7);
        GridView gridView = (GridView) inflate.findViewById(R.id.gv_keybord);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_freq_range);
        while (true) {
            textViewArr = this.f14340v;
            if (i >= textViewArr.length) {
                break;
            }
            TextView textView2 = textViewArr[i];
            textView2.setTypeface(AppConstants.f13909c);
            int[] iArr = this.f14342x;
            if (iArr != null && iArr.length == this.f14340v.length) {
                textView2.setText(String.valueOf(iArr[i]));
                this.f14341w[i] = this.f14342x[i];
            }
            i++;
        }
        int[] iArr2 = this.f14342x;
        if (iArr2 != null && iArr2.length == textViewArr.length) {
            this.f14344z = textViewArr.length - 1;
        }
        TextView textView3 = (TextView) inflate.findViewById(R.id.tv_title);
        textView3.setTypeface(Typeface.defaultFromStyle(1));
        if (m7293i()) {
            textView3.setText(this.f17718c);
        }
        if (m11446K()) {
            textView.setText(this.f14343y);
        }
        C4113b c4113b = new C4113b(context, f14336B);
        this.f14339u = c4113b;
        gridView.setAdapter((ListAdapter) c4113b);
        gridView.setOnItemClickListener(new C4112a());
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    /* renamed from: q */
    public View mo7245q(QMUIDialog qMUIDialog, QMUIDialogView qMUIDialogView, Context context) {
        return null;
    }
}
