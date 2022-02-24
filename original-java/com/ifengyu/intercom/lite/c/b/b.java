package com.ifengyu.intercom.lite.c.b;

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
import com.ifengyu.intercom.i.p;
import com.ifengyu.library.a.m;
import com.qmuiteam.qmui.util.g;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import com.tencent.connect.common.Constants;

/* compiled from: ChannelDialogBuilder.java */
/* loaded from: classes2.dex */
public class b extends com.ifengyu.intercom.lite.c.a.a<b> {
    private static final String[] A = {"1", "2", "3", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "0", "0", "确定"};
    private static final int[] B = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0};
    private C0152b t;
    private int[] w;
    private String x;
    private c z;
    private int y = -1;
    private TextView[] u = new TextView[7];
    private int[] v = new int[7];

    /* compiled from: ChannelDialogBuilder.java */
    /* loaded from: classes2.dex */
    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            b.this.a(adapterView, view, i, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ChannelDialogBuilder.java */
    /* renamed from: com.ifengyu.intercom.lite.c.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0152b extends BaseAdapter {

        /* renamed from: a  reason: collision with root package name */
        private String[] f5351a;

        /* renamed from: b  reason: collision with root package name */
        private LayoutInflater f5352b;

        /* renamed from: c  reason: collision with root package name */
        private boolean[] f5353c;

        public C0152b(Context context, String[] strArr) {
            this.f5351a = strArr;
            this.f5352b = LayoutInflater.from(context);
            this.f5353c = new boolean[strArr.length];
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            return false;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            String[] strArr = this.f5351a;
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
            d dVar;
            if (view == null) {
                view = this.f5352b.inflate(R.layout.keyboard_item, (ViewGroup) null);
                dVar = new d();
                dVar.f5354a = (TextView) view.findViewById(R.id.tv_key);
                dVar.f5355b = (ImageView) view.findViewById(R.id.imgDelete);
                view.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
            }
            dVar.f5354a.setText(this.f5351a[i]);
            if (i == 9) {
                dVar.f5355b.setVisibility(0);
                dVar.f5354a.setVisibility(8);
                this.f5353c[i] = true;
            } else if (i == 11) {
                dVar.f5354a.setText(m.b((int) R.string.common_ok));
                dVar.f5354a.setTextSize(0, m.b(16.0f));
                dVar.f5354a.setVisibility(0);
                dVar.f5355b.setVisibility(8);
                this.f5353c[i] = true;
            } else {
                dVar.f5354a.setVisibility(0);
                dVar.f5355b.setVisibility(8);
                boolean[] zArr = this.f5353c;
                b bVar = b.this;
                zArr[i] = bVar.a(bVar.y + 1, b.this.v, i);
                if (this.f5353c[i]) {
                    dVar.f5354a.setTextColor(Color.parseColor("#333333"));
                } else {
                    dVar.f5354a.setTextColor(Color.parseColor("#dddddd"));
                }
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return this.f5353c[i];
        }

        @Override // android.widget.Adapter
        public String getItem(int i) {
            return this.f5351a[i];
        }
    }

    /* compiled from: ChannelDialogBuilder.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i);
    }

    /* compiled from: ChannelDialogBuilder.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        TextView f5354a;

        /* renamed from: b  reason: collision with root package name */
        ImageView f5355b;
    }

    public b(Context context) {
        super(context);
        int i = 0;
        while (true) {
            int[] iArr = this.v;
            if (i < iArr.length) {
                iArr[i] = -1;
                i++;
            } else {
                return;
            }
        }
    }

    protected boolean a(int i, int[] iArr, int i2) {
        return false;
    }

    protected void b(int i, int[] iArr, int i2) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    public View c(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        return null;
    }

    protected void c(int i, int[] iArr, int i2) {
    }

    public b d(int i) {
        int i2 = i / 100;
        int a2 = g.a(i2);
        if (i2 > 0 && a2 >= 7) {
            this.w = new int[7];
            for (int i3 = 0; i3 < 7; i3++) {
                this.w[6 - i3] = i2 % 10;
                i2 /= 10;
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(int i) {
        int i2 = this.y + 1;
        this.y = i2;
        this.v[i2] = i;
        this.u[i2].setText(String.valueOf(i));
    }

    protected boolean f() {
        String str = this.x;
        return (str == null || str.length() == 0) ? false : true;
    }

    public b b(String str) {
        this.x = str;
        return this;
    }

    public b a(c cVar) {
        this.z = cVar;
        return this;
    }

    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
    @Nullable
    protected View a(com.qmuiteam.qmui.widget.dialog.b bVar, QMUIDialogView qMUIDialogView, Context context) {
        TextView[] textViewArr;
        View inflate = LayoutInflater.from(context).inflate(R.layout.channel_input_dialog, (ViewGroup) null);
        int i = 0;
        this.u[0] = (TextView) inflate.findViewById(R.id.tv_num1);
        this.u[1] = (TextView) inflate.findViewById(R.id.tv_num2);
        this.u[2] = (TextView) inflate.findViewById(R.id.tv_num3);
        this.u[3] = (TextView) inflate.findViewById(R.id.tv_num4);
        this.u[4] = (TextView) inflate.findViewById(R.id.tv_num5);
        this.u[5] = (TextView) inflate.findViewById(R.id.tv_num6);
        this.u[6] = (TextView) inflate.findViewById(R.id.tv_num7);
        GridView gridView = (GridView) inflate.findViewById(R.id.gv_keybord);
        TextView textView = (TextView) inflate.findViewById(R.id.tv_freq_range);
        while (true) {
            textViewArr = this.u;
            if (i >= textViewArr.length) {
                break;
            }
            TextView textView2 = textViewArr[i];
            textView2.setTypeface(p.f5324b);
            int[] iArr = this.w;
            if (iArr != null && iArr.length == this.u.length) {
                textView2.setText(String.valueOf(iArr[i]));
                this.v[i] = this.w[i];
            }
            i++;
        }
        int[] iArr2 = this.w;
        if (iArr2 != null && iArr2.length == textViewArr.length) {
            this.y = textViewArr.length - 1;
        }
        TextView textView3 = (TextView) inflate.findViewById(R.id.tv_title);
        textView3.setTypeface(Typeface.defaultFromStyle(1));
        if (b()) {
            textView3.setText(this.f7534c);
        }
        if (f()) {
            textView.setText(this.x);
        }
        C0152b bVar2 = new C0152b(context, A);
        this.t = bVar2;
        gridView.setAdapter((ListAdapter) bVar2);
        gridView.setOnItemClickListener(new a());
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        int[] iArr = this.v;
        int i = this.y;
        iArr[i] = -1;
        this.u[i].setText("");
        this.y--;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdapterView<?> adapterView, View view, int i, long j) {
        int[] iArr;
        if (i == 11) {
            if (this.y >= this.u.length - 1 && this.z != null) {
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (i2 < this.v.length) {
                        i3 = (int) (i3 + (iArr[i2] * Math.pow(10.0d, (iArr.length - 1) - i2)));
                        i2++;
                    } else {
                        this.z.a(this.f7533b, i3 * 100);
                        return;
                    }
                }
            }
        } else if (i == 9) {
            int i4 = this.y;
            if (i4 >= 0) {
                TextView[] textViewArr = this.u;
                if (i4 < textViewArr.length) {
                    textViewArr[i4].setText("");
                    int[] iArr2 = this.v;
                    int i5 = this.y;
                    iArr2[i5] = -1;
                    int i6 = i5 - 1;
                    this.y = i6;
                    b(i6, iArr2, i);
                    this.t.notifyDataSetChanged();
                }
            }
        } else {
            int i7 = this.y;
            if (i7 >= -1) {
                TextView[] textViewArr2 = this.u;
                if (i7 < textViewArr2.length - 1) {
                    int i8 = i7 + 1;
                    this.y = i8;
                    textViewArr2[i8].setText(A[i]);
                    int[] iArr3 = this.v;
                    int i9 = this.y;
                    iArr3[i9] = B[i];
                    c(i9, iArr3, i);
                    this.t.notifyDataSetChanged();
                }
            }
        }
    }
}
