package com.ifengyu.intercom.ui.setting.seal;

import android.app.Activity;
import android.os.Bundle;
import android.text.Editable;
import android.text.Selection;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.z;
import com.tencent.connect.common.Constants;

/* compiled from: SealInsertChannelDialog.java */
/* loaded from: classes2.dex */
public class d extends com.ifengyu.intercom.ui.widget.dialog.d {
    private static final String[] o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};
    private static final String[] p = {"0", "2", "5", "7", "", "0", "2", "5", "7", ""};
    private static final String[] q = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a  reason: collision with root package name */
    private Activity f6744a;

    /* renamed from: b  reason: collision with root package name */
    private k f6745b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f6746c;
    private EditText d;
    private EditText e;
    private EditText f;
    private EditText g;
    private EditText h;
    private EditText i;
    private i j;
    private String k;
    private int l;
    private LayoutInflater m;
    private TextWatcher n = new h();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class a implements ActionMode.Callback {
        a() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText1 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText2 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.ui.setting.seal.d$d  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC0179d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC0179d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText3 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class e implements View.OnFocusChangeListener {
        e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText4 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class f implements View.OnFocusChangeListener {
        f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText5 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class g implements View.OnFocusChangeListener {
        g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                z.a("InsertChannelDialog", "EditText6 has Focus");
                d.this.j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    class h implements TextWatcher {
        h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            z.a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (d.this.f6746c.isFocused()) {
                    d.this.f6746c.setFocusable(false);
                    d.this.f6746c.setFocusableInTouchMode(false);
                    d.this.f6746c.clearFocus();
                    d.this.d.setFocusable(true);
                    d.this.d.setFocusableInTouchMode(true);
                    d.this.d.requestFocus();
                } else if (d.this.d.isFocused()) {
                    d.this.d.setFocusable(false);
                    d.this.d.setFocusableInTouchMode(false);
                    d.this.d.clearFocus();
                    d.this.e.setFocusable(true);
                    d.this.e.setFocusableInTouchMode(true);
                    d.this.e.requestFocus();
                } else if (d.this.e.isFocused()) {
                    d.this.e.setFocusable(false);
                    d.this.e.setFocusableInTouchMode(false);
                    d.this.e.clearFocus();
                    d.this.f.setFocusable(true);
                    d.this.f.setFocusableInTouchMode(true);
                    d.this.f.requestFocus();
                } else if (d.this.f.isFocused()) {
                    d.this.f.setFocusable(false);
                    d.this.f.setFocusableInTouchMode(false);
                    d.this.f.clearFocus();
                    d.this.g.setFocusable(true);
                    d.this.g.setFocusableInTouchMode(true);
                    d.this.g.requestFocus();
                } else if (d.this.g.isFocused()) {
                    d.this.g.setFocusable(false);
                    d.this.g.setFocusableInTouchMode(false);
                    d.this.g.clearFocus();
                    d.this.h.setFocusable(true);
                    d.this.h.setFocusableInTouchMode(true);
                    d.this.h.requestFocus();
                } else if (d.this.h.isFocused()) {
                    d.this.h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(d.this.f6746c.getText().toString()) || TextUtils.isEmpty(d.this.d.getText().toString()) || TextUtils.isEmpty(d.this.e.getText().toString()) || TextUtils.isEmpty(d.this.f.getText().toString()) || TextUtils.isEmpty(d.this.g.getText().toString()) || TextUtils.isEmpty(d.this.h.getText().toString())) {
                d.this.i.setText("");
                return;
            }
            d.this.i.setText(d.q[Integer.parseInt(d.this.h.getText().toString())]);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            z.a("InsertChannelDialog", "beforeTextChanged:s:" + ((Object) charSequence) + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            z.a("InsertChannelDialog", "onTextChanged:s:" + ((Object) charSequence) + " start:" + i + " before:" + i2 + " count:" + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class i extends BaseAdapter {
        i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (d.o == null || d.o.length <= 0) {
                return 0;
            }
            return d.o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (d.o == null || d.o.length <= 0) {
                return null;
            }
            return d.o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) d.this.m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) d.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(d.o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) d.this.m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(k0.a((int) R.color.channel_settting_choose_number));
                textView2.setText(d.o[i]);
                if (d.this.f6746c.isFocused()) {
                    if (i != 3) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (d.this.d.isFocused()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (d.this.f6746c.getText().toString().equals("1")) {
                        if (i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (!(i == 8 || i == 3)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (d.this.e.isFocused()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString()) || TextUtils.isEmpty(d.this.d.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (!d.this.d.getText().toString().equals("4") || !d.this.f6746c.getText().toString().equals("1")) {
                        if (!d.this.d.getText().toString().equals("4") || !d.this.f6746c.getText().toString().equals("4")) {
                            d.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (d.this.f.isFocused()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString()) || TextUtils.isEmpty(d.this.d.getText().toString()) || TextUtils.isEmpty(d.this.e.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (d.this.f6746c.getText().toString().equals("4") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals("0") && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (d.this.g.isFocused()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString()) || TextUtils.isEmpty(d.this.d.getText().toString()) || TextUtils.isEmpty(d.this.e.getText().toString()) || TextUtils.isEmpty(d.this.f.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (d.this.f6746c.getText().toString().equals("4") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals("0") && i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                } else if (d.this.h.isFocusable()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString()) || TextUtils.isEmpty(d.this.d.getText().toString()) || TextUtils.isEmpty(d.this.e.getText().toString()) || TextUtils.isEmpty(d.this.f.getText().toString()) || TextUtils.isEmpty(d.this.g.getText().toString())) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    } else if (!d.this.f6746c.getText().toString().equals("4") || !d.this.d.getText().toString().equals("4") || !d.this.e.getText().toString().equals("0")) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                        }
                    } else if (i != 10) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(k0.a((int) R.color.channel_settting_custom_number_disabled));
                    }
                }
                return textView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public class j implements AdapterView.OnItemClickListener {
        j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (d.this.h.isFocused()) {
                    if (d.this.h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(d.this.f.getText());
                        int selectionStart = Selection.getSelectionStart(d.this.f.getText());
                        int selectionStart2 = d.this.h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            d.this.h.getText().delete(selectionStart2 - 1, selectionStart2);
                        } else if (selectionEnd - selectionStart > 0) {
                            d.this.h.getText().delete(selectionStart, selectionEnd);
                        }
                    } else {
                        d.this.g.setText("");
                        d.this.h.clearFocus();
                        d.this.g.setFocusable(true);
                        d.this.g.setFocusableInTouchMode(true);
                        d.this.g.requestFocus();
                    }
                } else if (d.this.g.isFocused()) {
                    d.this.f.setText("");
                    d.this.g.clearFocus();
                    d.this.f.setFocusable(true);
                    d.this.f.setFocusableInTouchMode(true);
                    d.this.f.requestFocus();
                } else if (d.this.f.isFocused()) {
                    d.this.e.setText("");
                    d.this.f.clearFocus();
                    d.this.e.setFocusable(true);
                    d.this.e.setFocusableInTouchMode(true);
                    d.this.e.requestFocus();
                } else if (d.this.e.isFocused()) {
                    d.this.d.setText("");
                    d.this.e.clearFocus();
                    d.this.d.setFocusable(true);
                    d.this.d.setFocusableInTouchMode(true);
                    d.this.d.requestFocus();
                } else if (d.this.d.isFocused()) {
                    d.this.f6746c.setText("");
                    d.this.d.clearFocus();
                    d.this.f6746c.setFocusable(true);
                    d.this.f6746c.setFocusableInTouchMode(true);
                    d.this.f6746c.requestFocus();
                }
            } else if (i == 11) {
                StringBuilder sb = new StringBuilder();
                String obj = d.this.f6746c.getText().toString();
                String obj2 = d.this.d.getText().toString();
                String obj3 = d.this.e.getText().toString();
                String obj4 = d.this.f.getText().toString();
                String obj5 = d.this.g.getText().toString();
                String obj6 = d.this.h.getText().toString();
                String obj7 = d.this.i.getText().toString();
                if (!c0.a(d.this.f6746c, d.this.d, d.this.e, d.this.f, d.this.g, d.this.h)) {
                    sb.append(obj);
                    sb.append(obj2);
                    sb.append(obj3);
                    sb.append(".");
                    sb.append(obj4);
                    sb.append(obj5);
                    sb.append(obj6);
                    sb.append(obj7);
                    String sb2 = sb.toString();
                    int c2 = c0.c(sb2);
                    z.a("InsertChannelDialog", "freq:" + c2);
                    if (c2 >= 430000000 && c2 <= 440000000) {
                        if (TextUtils.isEmpty(d.this.k)) {
                            if (d.this.f6745b != null) {
                                d.this.f6745b.b(sb2);
                            }
                        } else if (d.this.f6745b != null) {
                            d.this.f6745b.a(sb2);
                        }
                        d.this.dismiss();
                    }
                }
            } else {
                if (d.this.f6746c.isFocused()) {
                    if (i != 3) {
                        return;
                    }
                } else if (d.this.d.isFocused()) {
                    if (TextUtils.isEmpty(d.this.f6746c.getText().toString())) {
                        return;
                    }
                    if (d.this.f6746c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (!(i == 8 || i == 3)) {
                        return;
                    }
                } else if (d.this.e.isFocused()) {
                    if (c0.a(d.this.f6746c, d.this.d)) {
                        return;
                    }
                    if (!d.this.d.getText().toString().equals("4") || !d.this.f6746c.getText().toString().equals("1")) {
                        if (!d.this.d.getText().toString().equals("4") || !d.this.f6746c.getText().toString().equals("4")) {
                            d.this.d.getText().toString().equals("3");
                        } else if (i != 10) {
                            return;
                        }
                    } else if (!(i == 0 || i == 1 || i == 3 || i == 4 || i == 5)) {
                        return;
                    }
                } else if (d.this.f.isFocused()) {
                    if (c0.a(d.this.f6746c, d.this.d, d.this.e)) {
                        return;
                    }
                    if (((d.this.f6746c.getText().toString().equals("1") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (d.this.f6746c.getText().toString().equals("4") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (d.this.g.isFocused()) {
                    if (c0.a(d.this.f6746c, d.this.d, d.this.e, d.this.f)) {
                        return;
                    }
                    if (((d.this.f6746c.getText().toString().equals("1") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (d.this.f6746c.getText().toString().equals("4") && d.this.d.getText().toString().equals("4") && d.this.e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (d.this.h.isFocused()) {
                    if (c0.a(d.this.f6746c, d.this.d, d.this.e, d.this.f, d.this.g)) {
                        return;
                    }
                    if ((!d.this.f6746c.getText().toString().equals("1") || !d.this.d.getText().toString().equals("4") || !d.this.e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) && (!d.this.f6746c.getText().toString().equals("4") || !d.this.d.getText().toString().equals("4") || !d.this.e.getText().toString().equals("0"))) {
                        if (!(i == 10 || i == 7 || i == 4 || i == 0)) {
                            return;
                        }
                    } else if (i != 10) {
                        return;
                    }
                }
                if (d.this.f6746c.isFocused()) {
                    d.this.f6746c.setText(d.o[i]);
                } else if (d.this.d.isFocused()) {
                    d.this.d.setText(d.o[i]);
                } else if (d.this.e.isFocused()) {
                    d.this.e.setText(d.o[i]);
                } else if (d.this.f.isFocused()) {
                    d.this.f.setText(d.o[i]);
                } else if (d.this.g.isFocused()) {
                    d.this.g.setText(d.o[i]);
                } else if (d.this.h.isFocused() && d.this.h.getText().length() == 0) {
                    d.this.h.setText(d.o[i]);
                }
            }
        }
    }

    /* compiled from: SealInsertChannelDialog.java */
    /* loaded from: classes2.dex */
    public interface k {
        void a(String str);

        void b(String str);
    }

    public d(Activity activity, String str, int i2) {
        super(activity);
        this.f6744a = activity;
        this.m = LayoutInflater.from(activity);
        this.k = str;
        this.l = i2;
        String[] strArr = o;
        strArr[strArr.length - 1] = this.f6744a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_seal_input_custom_channel);
        a(this.f6744a);
        b();
    }

    @Override // android.app.Dialog
    public void show() {
        int c2;
        super.show();
        if (!TextUtils.isEmpty(this.k)) {
            String replace = this.k.replace(".", "");
            String str = this.k;
            if (str != null && (((c2 = c0.c(str)) < 430000000 && c2 >= 400000000) || (c2 > 440000000 && c2 <= 470000000))) {
                replace = null;
            }
            if (replace == null || replace.length() != 7) {
                this.f6746c.setFocusable(true);
                this.f6746c.setFocusableInTouchMode(true);
                this.f6746c.requestFocus();
            } else {
                char[] charArray = replace.toCharArray();
                this.f6746c.setText(String.valueOf(charArray[0]));
                this.d.setText(String.valueOf(charArray[1]));
                this.e.setText(String.valueOf(charArray[2]));
                this.f.setText(String.valueOf(charArray[3]));
                this.g.setText(String.valueOf(charArray[4]));
                this.h.setText(String.valueOf(charArray[5]));
                this.i.setText(String.valueOf(charArray[6]));
                this.h.setFocusable(true);
                this.h.setFocusableInTouchMode(true);
                this.h.requestFocus();
                this.h.setSelection(1);
            }
        } else {
            this.f6746c.setFocusable(true);
            this.f6746c.setFocusableInTouchMode(true);
            this.f6746c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    public void a(k kVar) {
        this.f6745b = kVar;
    }

    public void b() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i2 = this.l;
        if (i2 == 1) {
            textView.setText(R.string.emission_frequency);
        } else if (i2 == 2) {
            textView.setText(R.string.receive_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        i iVar = new i();
        this.j = iVar;
        gridView.setAdapter((ListAdapter) iVar);
        gridView.setOnItemClickListener(new j());
        this.f6746c = (EditText) findViewById(R.id.et_input_num_1);
        this.d = (EditText) findViewById(R.id.et_input_num_2);
        this.e = (EditText) findViewById(R.id.et_input_num_3);
        this.f = (EditText) findViewById(R.id.et_input_num_4);
        this.g = (EditText) findViewById(R.id.et_input_num_5);
        this.h = (EditText) findViewById(R.id.et_input_num_6);
        this.i = (EditText) findViewById(R.id.et_input_num_7);
        this.f6746c.setTextIsSelectable(true);
        this.d.setTextIsSelectable(true);
        this.e.setTextIsSelectable(true);
        this.f.setTextIsSelectable(true);
        this.g.setTextIsSelectable(true);
        this.h.setTextIsSelectable(true);
        this.f6746c.setOnLongClickListener(null);
        this.d.setOnClickListener(null);
        this.f6746c.setFocusable(false);
        this.f6746c.setFocusableInTouchMode(false);
        this.d.setFocusable(false);
        this.d.setFocusableInTouchMode(false);
        this.e.setFocusable(false);
        this.e.setFocusableInTouchMode(false);
        this.f.setFocusable(false);
        this.f.setFocusableInTouchMode(false);
        this.g.setFocusable(false);
        this.g.setFocusableInTouchMode(false);
        this.h.setFocusable(false);
        this.h.setFocusableInTouchMode(false);
        this.i.setFocusable(false);
        this.i.setFocusableInTouchMode(false);
        this.i.setKeyListener(null);
        this.f6746c.addTextChangedListener(this.n);
        this.d.addTextChangedListener(this.n);
        this.e.addTextChangedListener(this.n);
        this.f.addTextChangedListener(this.n);
        this.g.addTextChangedListener(this.n);
        this.h.addTextChangedListener(this.n);
        this.g.setCustomSelectionActionModeCallback(new a());
        this.f6746c.setOnFocusChangeListener(new b());
        this.d.setOnFocusChangeListener(new c());
        this.e.setOnFocusChangeListener(new View$OnFocusChangeListenerC0179d());
        this.f.setOnFocusChangeListener(new e());
        this.g.setOnFocusChangeListener(new f());
        this.h.setOnFocusChangeListener(new g());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    public void a(int i2) {
        super.a(i2);
    }
}
