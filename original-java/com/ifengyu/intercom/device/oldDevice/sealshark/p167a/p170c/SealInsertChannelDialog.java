package com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p170c;

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
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog;
import com.ifengyu.library.utils.UIUtils;
import com.tencent.connect.common.Constants;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a */
/* loaded from: classes2.dex */
public class SealInsertChannelDialog extends BaseDialog {

    /* renamed from: o */
    private static final String[] f13137o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};

    /* renamed from: p */
    private static final String[] f13138p = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a */
    private Activity f13139a;

    /* renamed from: b */
    private InterfaceC3649k f13140b;

    /* renamed from: c */
    private EditText f13141c;

    /* renamed from: d */
    private EditText f13142d;

    /* renamed from: e */
    private EditText f13143e;

    /* renamed from: f */
    private EditText f13144f;

    /* renamed from: g */
    private EditText f13145g;

    /* renamed from: h */
    private EditText f13146h;

    /* renamed from: i */
    private EditText f13147i;

    /* renamed from: j */
    private C3647i f13148j;

    /* renamed from: k */
    private String f13149k;

    /* renamed from: l */
    private int f13150l;

    /* renamed from: m */
    private LayoutInflater f13151m;

    /* renamed from: n */
    private TextWatcher f13152n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$a */
    /* loaded from: classes2.dex */
    public class ActionMode$CallbackC3639a implements ActionMode.Callback {
        ActionMode$CallbackC3639a(SealInsertChannelDialog sealInsertChannelDialog) {
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
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$b */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3640b implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3640b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText1 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$c */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3641c implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3641c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText2 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$d */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3642d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3642d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText3 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$e */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3643e implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3643e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText4 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$f */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3644f implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3644f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText5 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$g */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC3645g implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC3645g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText6 has Focus");
                SealInsertChannelDialog.this.f13148j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$h */
    /* loaded from: classes2.dex */
    class C3646h implements TextWatcher {
        C3646h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C4161y.m11054a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (SealInsertChannelDialog.this.f13141c.isFocused()) {
                    SealInsertChannelDialog.this.f13141c.setFocusable(false);
                    SealInsertChannelDialog.this.f13141c.setFocusableInTouchMode(false);
                    SealInsertChannelDialog.this.f13141c.clearFocus();
                    SealInsertChannelDialog.this.f13142d.setFocusable(true);
                    SealInsertChannelDialog.this.f13142d.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13142d.requestFocus();
                } else if (SealInsertChannelDialog.this.f13142d.isFocused()) {
                    SealInsertChannelDialog.this.f13142d.setFocusable(false);
                    SealInsertChannelDialog.this.f13142d.setFocusableInTouchMode(false);
                    SealInsertChannelDialog.this.f13142d.clearFocus();
                    SealInsertChannelDialog.this.f13143e.setFocusable(true);
                    SealInsertChannelDialog.this.f13143e.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13143e.requestFocus();
                } else if (SealInsertChannelDialog.this.f13143e.isFocused()) {
                    SealInsertChannelDialog.this.f13143e.setFocusable(false);
                    SealInsertChannelDialog.this.f13143e.setFocusableInTouchMode(false);
                    SealInsertChannelDialog.this.f13143e.clearFocus();
                    SealInsertChannelDialog.this.f13144f.setFocusable(true);
                    SealInsertChannelDialog.this.f13144f.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13144f.requestFocus();
                } else if (SealInsertChannelDialog.this.f13144f.isFocused()) {
                    SealInsertChannelDialog.this.f13144f.setFocusable(false);
                    SealInsertChannelDialog.this.f13144f.setFocusableInTouchMode(false);
                    SealInsertChannelDialog.this.f13144f.clearFocus();
                    SealInsertChannelDialog.this.f13145g.setFocusable(true);
                    SealInsertChannelDialog.this.f13145g.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13145g.requestFocus();
                } else if (SealInsertChannelDialog.this.f13145g.isFocused()) {
                    SealInsertChannelDialog.this.f13145g.setFocusable(false);
                    SealInsertChannelDialog.this.f13145g.setFocusableInTouchMode(false);
                    SealInsertChannelDialog.this.f13145g.clearFocus();
                    SealInsertChannelDialog.this.f13146h.setFocusable(true);
                    SealInsertChannelDialog.this.f13146h.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13146h.requestFocus();
                } else if (SealInsertChannelDialog.this.f13146h.isFocused()) {
                    SealInsertChannelDialog.this.f13146h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString()) || TextUtils.isEmpty(SealInsertChannelDialog.this.f13142d.getText().toString()) || TextUtils.isEmpty(SealInsertChannelDialog.this.f13143e.getText().toString()) || TextUtils.isEmpty(SealInsertChannelDialog.this.f13144f.getText().toString()) || TextUtils.isEmpty(SealInsertChannelDialog.this.f13145g.getText().toString()) || TextUtils.isEmpty(SealInsertChannelDialog.this.f13146h.getText().toString())) {
                SealInsertChannelDialog.this.f13147i.setText("");
                return;
            }
            SealInsertChannelDialog.this.f13147i.setText(SealInsertChannelDialog.f13138p[Integer.parseInt(SealInsertChannelDialog.this.f13146h.getText().toString())]);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "beforeTextChanged:s:" + ((Object) charSequence) + " start:" + i + " count:" + i2 + " after:" + i3);
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C4161y.m11054a("InsertChannelDialog", "onTextChanged:s:" + ((Object) charSequence) + " start:" + i + " before:" + i2 + " count:" + i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$i */
    /* loaded from: classes2.dex */
    public class C3647i extends BaseAdapter {
        C3647i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (SealInsertChannelDialog.f13137o == null || SealInsertChannelDialog.f13137o.length <= 0) {
                return 0;
            }
            return SealInsertChannelDialog.f13137o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (SealInsertChannelDialog.f13137o == null || SealInsertChannelDialog.f13137o.length <= 0) {
                return null;
            }
            return SealInsertChannelDialog.f13137o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) SealInsertChannelDialog.this.f13151m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) SealInsertChannelDialog.this.f13151m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(SealInsertChannelDialog.f13137o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) SealInsertChannelDialog.this.f13151m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_choose_number));
                textView2.setText(SealInsertChannelDialog.f13137o[i]);
                if (SealInsertChannelDialog.this.f13141c.isFocused()) {
                    if (i != 3) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SealInsertChannelDialog.this.f13142d.isFocused()) {
                    if (!TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString())) {
                        if (SealInsertChannelDialog.this.f13141c.getText().toString().equals("1")) {
                            if (i != 3) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 8 && i != 3) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SealInsertChannelDialog.this.f13143e.isFocused()) {
                    if (!TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13142d.getText().toString())) {
                        if (SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13141c.getText().toString().equals("1")) {
                            if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (!SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") || !SealInsertChannelDialog.this.f13141c.getText().toString().equals("4")) {
                            SealInsertChannelDialog.this.f13142d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SealInsertChannelDialog.this.f13144f.isFocused()) {
                    if (!TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13142d.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13143e.getText().toString())) {
                        if (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0") && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SealInsertChannelDialog.this.f13145g.isFocused()) {
                    if (!TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13142d.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13143e.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13144f.getText().toString())) {
                        if (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0") && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (SealInsertChannelDialog.this.f13146h.isFocusable()) {
                    if (!TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13142d.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13143e.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13144f.getText().toString()) && !TextUtils.isEmpty(SealInsertChannelDialog.this.f13145g.getText().toString())) {
                        if (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0")) {
                            if (i != 10) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                }
                return textView2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$j */
    /* loaded from: classes2.dex */
    public class C3648j implements AdapterView.OnItemClickListener {
        C3648j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (SealInsertChannelDialog.this.f13146h.isFocused()) {
                    if (SealInsertChannelDialog.this.f13146h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(SealInsertChannelDialog.this.f13144f.getText());
                        int selectionStart = Selection.getSelectionStart(SealInsertChannelDialog.this.f13144f.getText());
                        int selectionStart2 = SealInsertChannelDialog.this.f13146h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            SealInsertChannelDialog.this.f13146h.getText().delete(selectionStart2 - 1, selectionStart2);
                            return;
                        } else if (selectionEnd - selectionStart > 0) {
                            SealInsertChannelDialog.this.f13146h.getText().delete(selectionStart, selectionEnd);
                            return;
                        } else {
                            return;
                        }
                    }
                    SealInsertChannelDialog.this.f13145g.setText("");
                    SealInsertChannelDialog.this.f13146h.clearFocus();
                    SealInsertChannelDialog.this.f13145g.setFocusable(true);
                    SealInsertChannelDialog.this.f13145g.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13145g.requestFocus();
                } else if (SealInsertChannelDialog.this.f13145g.isFocused()) {
                    SealInsertChannelDialog.this.f13144f.setText("");
                    SealInsertChannelDialog.this.f13145g.clearFocus();
                    SealInsertChannelDialog.this.f13144f.setFocusable(true);
                    SealInsertChannelDialog.this.f13144f.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13144f.requestFocus();
                } else if (SealInsertChannelDialog.this.f13144f.isFocused()) {
                    SealInsertChannelDialog.this.f13143e.setText("");
                    SealInsertChannelDialog.this.f13144f.clearFocus();
                    SealInsertChannelDialog.this.f13143e.setFocusable(true);
                    SealInsertChannelDialog.this.f13143e.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13143e.requestFocus();
                } else if (SealInsertChannelDialog.this.f13143e.isFocused()) {
                    SealInsertChannelDialog.this.f13142d.setText("");
                    SealInsertChannelDialog.this.f13143e.clearFocus();
                    SealInsertChannelDialog.this.f13142d.setFocusable(true);
                    SealInsertChannelDialog.this.f13142d.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13142d.requestFocus();
                } else if (SealInsertChannelDialog.this.f13142d.isFocused()) {
                    SealInsertChannelDialog.this.f13141c.setText("");
                    SealInsertChannelDialog.this.f13142d.clearFocus();
                    SealInsertChannelDialog.this.f13141c.setFocusable(true);
                    SealInsertChannelDialog.this.f13141c.setFocusableInTouchMode(true);
                    SealInsertChannelDialog.this.f13141c.requestFocus();
                }
            } else if (i != 11) {
                if (SealInsertChannelDialog.this.f13141c.isFocused()) {
                    if (i != 3) {
                        return;
                    }
                } else if (SealInsertChannelDialog.this.f13142d.isFocused()) {
                    if (TextUtils.isEmpty(SealInsertChannelDialog.this.f13141c.getText().toString())) {
                        return;
                    }
                    if (SealInsertChannelDialog.this.f13141c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i != 8 && i != 3) {
                        return;
                    }
                } else if (SealInsertChannelDialog.this.f13143e.isFocused()) {
                    if (MethodsUtils.m11278v(SealInsertChannelDialog.this.f13141c, SealInsertChannelDialog.this.f13142d)) {
                        return;
                    }
                    if (SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13141c.getText().toString().equals("1")) {
                        if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                            return;
                        }
                    } else if (!SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") || !SealInsertChannelDialog.this.f13141c.getText().toString().equals("4")) {
                        SealInsertChannelDialog.this.f13142d.getText().toString().equals("3");
                    } else if (i != 10) {
                        return;
                    }
                } else if (SealInsertChannelDialog.this.f13144f.isFocused()) {
                    if (MethodsUtils.m11278v(SealInsertChannelDialog.this.f13141c, SealInsertChannelDialog.this.f13142d, SealInsertChannelDialog.this.f13143e)) {
                        return;
                    }
                    if (((SealInsertChannelDialog.this.f13141c.getText().toString().equals("1") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (SealInsertChannelDialog.this.f13145g.isFocused()) {
                    if (MethodsUtils.m11278v(SealInsertChannelDialog.this.f13141c, SealInsertChannelDialog.this.f13142d, SealInsertChannelDialog.this.f13143e, SealInsertChannelDialog.this.f13144f)) {
                        return;
                    }
                    if (((SealInsertChannelDialog.this.f13141c.getText().toString().equals("1") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (SealInsertChannelDialog.this.f13146h.isFocused()) {
                    if (MethodsUtils.m11278v(SealInsertChannelDialog.this.f13141c, SealInsertChannelDialog.this.f13142d, SealInsertChannelDialog.this.f13143e, SealInsertChannelDialog.this.f13144f, SealInsertChannelDialog.this.f13145g)) {
                        return;
                    }
                    if ((SealInsertChannelDialog.this.f13141c.getText().toString().equals("1") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (SealInsertChannelDialog.this.f13141c.getText().toString().equals("4") && SealInsertChannelDialog.this.f13142d.getText().toString().equals("4") && SealInsertChannelDialog.this.f13143e.getText().toString().equals("0"))) {
                        if (i != 10) {
                            return;
                        }
                    } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                        return;
                    }
                }
                if (SealInsertChannelDialog.this.f13141c.isFocused()) {
                    SealInsertChannelDialog.this.f13141c.setText(SealInsertChannelDialog.f13137o[i]);
                } else if (SealInsertChannelDialog.this.f13142d.isFocused()) {
                    SealInsertChannelDialog.this.f13142d.setText(SealInsertChannelDialog.f13137o[i]);
                } else if (SealInsertChannelDialog.this.f13143e.isFocused()) {
                    SealInsertChannelDialog.this.f13143e.setText(SealInsertChannelDialog.f13137o[i]);
                } else if (SealInsertChannelDialog.this.f13144f.isFocused()) {
                    SealInsertChannelDialog.this.f13144f.setText(SealInsertChannelDialog.f13137o[i]);
                } else if (SealInsertChannelDialog.this.f13145g.isFocused()) {
                    SealInsertChannelDialog.this.f13145g.setText(SealInsertChannelDialog.f13137o[i]);
                } else if (SealInsertChannelDialog.this.f13146h.isFocused() && SealInsertChannelDialog.this.f13146h.getText().length() == 0) {
                    SealInsertChannelDialog.this.f13146h.setText(SealInsertChannelDialog.f13137o[i]);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                String obj = SealInsertChannelDialog.this.f13141c.getText().toString();
                String obj2 = SealInsertChannelDialog.this.f13142d.getText().toString();
                String obj3 = SealInsertChannelDialog.this.f13143e.getText().toString();
                String obj4 = SealInsertChannelDialog.this.f13144f.getText().toString();
                String obj5 = SealInsertChannelDialog.this.f13145g.getText().toString();
                String obj6 = SealInsertChannelDialog.this.f13146h.getText().toString();
                String obj7 = SealInsertChannelDialog.this.f13147i.getText().toString();
                if (MethodsUtils.m11278v(SealInsertChannelDialog.this.f13141c, SealInsertChannelDialog.this.f13142d, SealInsertChannelDialog.this.f13143e, SealInsertChannelDialog.this.f13144f, SealInsertChannelDialog.this.f13145g, SealInsertChannelDialog.this.f13146h)) {
                    return;
                }
                sb.append(obj);
                sb.append(obj2);
                sb.append(obj3);
                sb.append(".");
                sb.append(obj4);
                sb.append(obj5);
                sb.append(obj6);
                sb.append(obj7);
                String sb2 = sb.toString();
                int m11291i = MethodsUtils.m11291i(sb2);
                C4161y.m11054a("InsertChannelDialog", "freq:" + m11291i);
                if (m11291i < 430000000 || m11291i > 440000000) {
                    return;
                }
                if (TextUtils.isEmpty(SealInsertChannelDialog.this.f13149k)) {
                    if (SealInsertChannelDialog.this.f13140b != null) {
                        SealInsertChannelDialog.this.f13140b.mo12866b(sb2);
                    }
                } else if (SealInsertChannelDialog.this.f13140b != null) {
                    SealInsertChannelDialog.this.f13140b.mo12867a(sb2);
                }
                SealInsertChannelDialog.this.dismiss();
            }
        }
    }

    /* compiled from: SealInsertChannelDialog.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.a.c.a$k */
    /* loaded from: classes2.dex */
    public interface InterfaceC3649k {
        /* renamed from: a */
        void mo12867a(String str);

        /* renamed from: b */
        void mo12866b(String str);
    }

    public SealInsertChannelDialog(Activity activity, String str, int i) {
        super(activity);
        this.f13152n = new C3646h();
        this.f13139a = activity;
        this.f13151m = LayoutInflater.from(activity);
        this.f13149k = str;
        this.f13150l = i;
        String[] strArr = f13137o;
        strArr[strArr.length - 1] = this.f13139a.getString(R.string.common_select);
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: d */
    public void mo8735d(int i) {
        super.mo8735d(i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_seal_input_custom_channel);
        m9037g(this.f13139a);
        m12974u();
    }

    @Override // android.app.Dialog
    public void show() {
        int m11291i;
        super.show();
        if (!TextUtils.isEmpty(this.f13149k)) {
            String replace = this.f13149k.replace(".", "");
            String str = this.f13149k;
            if (str != null && (((m11291i = MethodsUtils.m11291i(str)) < 430000000 && m11291i >= 400000000) || (m11291i > 440000000 && m11291i <= 470000000))) {
                replace = null;
            }
            if (replace != null && replace.length() == 7) {
                char[] charArray = replace.toCharArray();
                this.f13141c.setText(String.valueOf(charArray[0]));
                this.f13142d.setText(String.valueOf(charArray[1]));
                this.f13143e.setText(String.valueOf(charArray[2]));
                this.f13144f.setText(String.valueOf(charArray[3]));
                this.f13145g.setText(String.valueOf(charArray[4]));
                this.f13146h.setText(String.valueOf(charArray[5]));
                this.f13147i.setText(String.valueOf(charArray[6]));
                this.f13146h.setFocusable(true);
                this.f13146h.setFocusableInTouchMode(true);
                this.f13146h.requestFocus();
                this.f13146h.setSelection(1);
            } else {
                this.f13141c.setFocusable(true);
                this.f13141c.setFocusableInTouchMode(true);
                this.f13141c.requestFocus();
            }
        } else {
            this.f13141c.setFocusable(true);
            this.f13141c.setFocusableInTouchMode(true);
            this.f13141c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    /* renamed from: u */
    public void m12974u() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i = this.f13150l;
        if (i == 1) {
            textView.setText(R.string.emission_frequency);
        } else if (i == 2) {
            textView.setText(R.string.receive_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        C3647i c3647i = new C3647i();
        this.f13148j = c3647i;
        gridView.setAdapter((ListAdapter) c3647i);
        gridView.setOnItemClickListener(new C3648j());
        this.f13141c = (EditText) findViewById(R.id.et_input_num_1);
        this.f13142d = (EditText) findViewById(R.id.et_input_num_2);
        this.f13143e = (EditText) findViewById(R.id.et_input_num_3);
        this.f13144f = (EditText) findViewById(R.id.et_input_num_4);
        this.f13145g = (EditText) findViewById(R.id.et_input_num_5);
        this.f13146h = (EditText) findViewById(R.id.et_input_num_6);
        this.f13147i = (EditText) findViewById(R.id.et_input_num_7);
        this.f13141c.setTextIsSelectable(true);
        this.f13142d.setTextIsSelectable(true);
        this.f13143e.setTextIsSelectable(true);
        this.f13144f.setTextIsSelectable(true);
        this.f13145g.setTextIsSelectable(true);
        this.f13146h.setTextIsSelectable(true);
        this.f13141c.setOnLongClickListener(null);
        this.f13142d.setOnClickListener(null);
        this.f13141c.setFocusable(false);
        this.f13141c.setFocusableInTouchMode(false);
        this.f13142d.setFocusable(false);
        this.f13142d.setFocusableInTouchMode(false);
        this.f13143e.setFocusable(false);
        this.f13143e.setFocusableInTouchMode(false);
        this.f13144f.setFocusable(false);
        this.f13144f.setFocusableInTouchMode(false);
        this.f13145g.setFocusable(false);
        this.f13145g.setFocusableInTouchMode(false);
        this.f13146h.setFocusable(false);
        this.f13146h.setFocusableInTouchMode(false);
        this.f13147i.setFocusable(false);
        this.f13147i.setFocusableInTouchMode(false);
        this.f13147i.setKeyListener(null);
        this.f13141c.addTextChangedListener(this.f13152n);
        this.f13142d.addTextChangedListener(this.f13152n);
        this.f13143e.addTextChangedListener(this.f13152n);
        this.f13144f.addTextChangedListener(this.f13152n);
        this.f13145g.addTextChangedListener(this.f13152n);
        this.f13146h.addTextChangedListener(this.f13152n);
        this.f13145g.setCustomSelectionActionModeCallback(new ActionMode$CallbackC3639a(this));
        this.f13141c.setOnFocusChangeListener(new View$OnFocusChangeListenerC3640b());
        this.f13142d.setOnFocusChangeListener(new View$OnFocusChangeListenerC3641c());
        this.f13143e.setOnFocusChangeListener(new View$OnFocusChangeListenerC3642d());
        this.f13144f.setOnFocusChangeListener(new View$OnFocusChangeListenerC3643e());
        this.f13145g.setOnFocusChangeListener(new View$OnFocusChangeListenerC3644f());
        this.f13146h.setOnFocusChangeListener(new View$OnFocusChangeListenerC3645g());
    }

    /* renamed from: v */
    public void m12973v(InterfaceC3649k interfaceC3649k) {
        this.f13140b = interfaceC3649k;
    }
}
