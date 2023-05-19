package com.ifengyu.intercom.p216ui.widget.dialog;

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
import com.ifengyu.library.utils.UIUtils;
import com.tencent.connect.common.Constants;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.n */
/* loaded from: classes2.dex */
public class InsertChannelDialog400To470 extends BaseDialog {

    /* renamed from: o */
    private static final String[] f15967o = {"7", Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, "9", "4", "5", Constants.VIA_SHARE_TYPE_INFO, "1", "2", "3", "0", "0", "OK"};

    /* renamed from: p */
    private static final String[] f15968p = {"0", "", "5", "", "", "0", "", "5"};

    /* renamed from: a */
    private Activity f15969a;

    /* renamed from: b */
    private InterfaceC4924k f15970b;

    /* renamed from: c */
    private EditText f15971c;

    /* renamed from: d */
    private EditText f15972d;

    /* renamed from: e */
    private EditText f15973e;

    /* renamed from: f */
    private EditText f15974f;

    /* renamed from: g */
    private EditText f15975g;

    /* renamed from: h */
    private EditText f15976h;

    /* renamed from: i */
    private EditText f15977i;

    /* renamed from: j */
    private C4922i f15978j;

    /* renamed from: k */
    private String f15979k;

    /* renamed from: l */
    private int f15980l;

    /* renamed from: m */
    private LayoutInflater f15981m;

    /* renamed from: n */
    private TextWatcher f15982n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$a */
    /* loaded from: classes2.dex */
    public class ActionMode$CallbackC4914a implements ActionMode.Callback {
        ActionMode$CallbackC4914a(InsertChannelDialog400To470 insertChannelDialog400To470) {
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
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$b */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4915b implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4915b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText1 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$c */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4916c implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4916c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText2 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$d */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4917d implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4917d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText3 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$e */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4918e implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4918e() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText4 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$f */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4919f implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4919f() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText5 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$g */
    /* loaded from: classes2.dex */
    public class View$OnFocusChangeListenerC4920g implements View.OnFocusChangeListener {
        View$OnFocusChangeListenerC4920g() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                C4161y.m11054a("InsertChannelDialog", "EditText6 has Focus");
                InsertChannelDialog400To470.this.f15978j.notifyDataSetChanged();
            }
        }
    }

    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$h */
    /* loaded from: classes2.dex */
    class C4921h implements TextWatcher {
        C4921h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C4161y.m11054a("InsertChannelDialog", "afterTextChanged:" + ((Object) editable));
            if (editable.toString().length() == 1) {
                if (InsertChannelDialog400To470.this.f15971c.isFocused()) {
                    InsertChannelDialog400To470.this.f15971c.setFocusable(false);
                    InsertChannelDialog400To470.this.f15971c.setFocusableInTouchMode(false);
                    InsertChannelDialog400To470.this.f15971c.clearFocus();
                    InsertChannelDialog400To470.this.f15972d.setFocusable(true);
                    InsertChannelDialog400To470.this.f15972d.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15972d.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15972d.isFocused()) {
                    InsertChannelDialog400To470.this.f15972d.setFocusable(false);
                    InsertChannelDialog400To470.this.f15972d.setFocusableInTouchMode(false);
                    InsertChannelDialog400To470.this.f15972d.clearFocus();
                    InsertChannelDialog400To470.this.f15973e.setFocusable(true);
                    InsertChannelDialog400To470.this.f15973e.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15973e.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15973e.isFocused()) {
                    InsertChannelDialog400To470.this.f15973e.setFocusable(false);
                    InsertChannelDialog400To470.this.f15973e.setFocusableInTouchMode(false);
                    InsertChannelDialog400To470.this.f15973e.clearFocus();
                    InsertChannelDialog400To470.this.f15974f.setFocusable(true);
                    InsertChannelDialog400To470.this.f15974f.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15974f.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15974f.isFocused()) {
                    InsertChannelDialog400To470.this.f15974f.setFocusable(false);
                    InsertChannelDialog400To470.this.f15974f.setFocusableInTouchMode(false);
                    InsertChannelDialog400To470.this.f15974f.clearFocus();
                    InsertChannelDialog400To470.this.f15975g.setFocusable(true);
                    InsertChannelDialog400To470.this.f15975g.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15975g.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15975g.isFocused()) {
                    InsertChannelDialog400To470.this.f15975g.setFocusable(false);
                    InsertChannelDialog400To470.this.f15975g.setFocusableInTouchMode(false);
                    InsertChannelDialog400To470.this.f15975g.clearFocus();
                    InsertChannelDialog400To470.this.f15976h.setFocusable(true);
                    InsertChannelDialog400To470.this.f15976h.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15976h.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15976h.isFocused()) {
                    InsertChannelDialog400To470.this.f15976h.setSelection(1);
                }
            }
            if (TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog400To470.this.f15972d.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog400To470.this.f15973e.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog400To470.this.f15974f.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog400To470.this.f15975g.getText().toString()) || TextUtils.isEmpty(InsertChannelDialog400To470.this.f15976h.getText().toString())) {
                InsertChannelDialog400To470.this.f15977i.setText("");
                return;
            }
            InsertChannelDialog400To470.this.f15977i.setText(InsertChannelDialog400To470.f15968p[Integer.parseInt(InsertChannelDialog400To470.this.f15976h.getText().toString())]);
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
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$i */
    /* loaded from: classes2.dex */
    public class C4922i extends BaseAdapter {
        C4922i() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (InsertChannelDialog400To470.f15967o == null || InsertChannelDialog400To470.f15967o.length <= 0) {
                return 0;
            }
            return InsertChannelDialog400To470.f15967o.length;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (InsertChannelDialog400To470.f15967o == null || InsertChannelDialog400To470.f15967o.length <= 0) {
                return null;
            }
            return InsertChannelDialog400To470.f15967o[i];
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (i == 9) {
                ImageView imageView = (ImageView) InsertChannelDialog400To470.this.f15981m.inflate(R.layout.item_custom_channel_add_keyboard_del, viewGroup, false);
                imageView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomleft_selector);
                return imageView;
            } else if (i == 11) {
                TextView textView = (TextView) InsertChannelDialog400To470.this.f15981m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_bottomright_selector);
                textView.setText(InsertChannelDialog400To470.f15967o[i]);
                return textView;
            } else {
                TextView textView2 = (TextView) InsertChannelDialog400To470.this.f15981m.inflate(R.layout.item_custom_channel_add_keyboard, viewGroup, false);
                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_item_selector);
                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_choose_number));
                textView2.setText(InsertChannelDialog400To470.f15967o[i]);
                if (InsertChannelDialog400To470.this.f15971c.isFocused()) {
                    if (i != 3 && i != 6) {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog400To470.this.f15972d.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString())) {
                        if (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1")) {
                            if (i != 3) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (i == 1 || i == 2) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog400To470.this.f15973e.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15972d.getText().toString())) {
                        if (InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1")) {
                            if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                                textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                                textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                            }
                        } else if (!InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") || !InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4")) {
                            InsertChannelDialog400To470.this.f15972d.getText().toString().equals("3");
                        } else if (i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog400To470.this.f15974f.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15972d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15973e.getText().toString())) {
                        if (((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog400To470.this.f15975g.isFocused()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15972d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15973e.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15974f.getText().toString())) {
                        if (((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) && i != 10) {
                            textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                            textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                        }
                    } else {
                        textView2.setBackgroundResource(R.drawable.channel_custom_add_keyboard_bg_normal);
                        textView2.setTextColor(UIUtils.m8614d(R.color.channel_settting_custom_number_disabled));
                    }
                } else if (InsertChannelDialog400To470.this.f15976h.isFocusable()) {
                    if (!TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15972d.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15973e.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15974f.getText().toString()) && !TextUtils.isEmpty(InsertChannelDialog400To470.this.f15975g.getText().toString())) {
                        if ((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$j */
    /* loaded from: classes2.dex */
    public class C4923j implements AdapterView.OnItemClickListener {
        private C4923j() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 9) {
                if (InsertChannelDialog400To470.this.f15976h.isFocused()) {
                    if (InsertChannelDialog400To470.this.f15976h.getText().length() > 0) {
                        int selectionEnd = Selection.getSelectionEnd(InsertChannelDialog400To470.this.f15974f.getText());
                        int selectionStart = Selection.getSelectionStart(InsertChannelDialog400To470.this.f15974f.getText());
                        int selectionStart2 = InsertChannelDialog400To470.this.f15976h.getSelectionStart();
                        if (selectionStart2 > 0) {
                            InsertChannelDialog400To470.this.f15976h.getText().delete(selectionStart2 - 1, selectionStart2);
                            return;
                        } else if (selectionEnd - selectionStart > 0) {
                            InsertChannelDialog400To470.this.f15976h.getText().delete(selectionStart, selectionEnd);
                            return;
                        } else {
                            return;
                        }
                    }
                    InsertChannelDialog400To470.this.f15975g.setText("");
                    InsertChannelDialog400To470.this.f15976h.clearFocus();
                    InsertChannelDialog400To470.this.f15975g.setFocusable(true);
                    InsertChannelDialog400To470.this.f15975g.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15975g.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15975g.isFocused()) {
                    InsertChannelDialog400To470.this.f15974f.setText("");
                    InsertChannelDialog400To470.this.f15975g.clearFocus();
                    InsertChannelDialog400To470.this.f15974f.setFocusable(true);
                    InsertChannelDialog400To470.this.f15974f.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15974f.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15974f.isFocused()) {
                    InsertChannelDialog400To470.this.f15973e.setText("");
                    InsertChannelDialog400To470.this.f15974f.clearFocus();
                    InsertChannelDialog400To470.this.f15973e.setFocusable(true);
                    InsertChannelDialog400To470.this.f15973e.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15973e.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15973e.isFocused()) {
                    InsertChannelDialog400To470.this.f15972d.setText("");
                    InsertChannelDialog400To470.this.f15973e.clearFocus();
                    InsertChannelDialog400To470.this.f15972d.setFocusable(true);
                    InsertChannelDialog400To470.this.f15972d.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15972d.requestFocus();
                } else if (InsertChannelDialog400To470.this.f15972d.isFocused()) {
                    InsertChannelDialog400To470.this.f15971c.setText("");
                    InsertChannelDialog400To470.this.f15972d.clearFocus();
                    InsertChannelDialog400To470.this.f15971c.setFocusable(true);
                    InsertChannelDialog400To470.this.f15971c.setFocusableInTouchMode(true);
                    InsertChannelDialog400To470.this.f15971c.requestFocus();
                }
            } else if (i != 11) {
                if (InsertChannelDialog400To470.this.f15971c.isFocused()) {
                    if (i != 3 && i != 6) {
                        return;
                    }
                } else if (InsertChannelDialog400To470.this.f15972d.isFocused()) {
                    if (TextUtils.isEmpty(InsertChannelDialog400To470.this.f15971c.getText().toString())) {
                        return;
                    }
                    if (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1")) {
                        if (i != 3) {
                            return;
                        }
                    } else if (i == 1 || i == 2) {
                        return;
                    }
                } else if (InsertChannelDialog400To470.this.f15973e.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog400To470.this.f15971c, InsertChannelDialog400To470.this.f15972d)) {
                        return;
                    }
                    if (InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1")) {
                        if (i != 0 && i != 1 && i != 3 && i != 4 && i != 5) {
                            return;
                        }
                    } else if (!InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") || !InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4")) {
                        InsertChannelDialog400To470.this.f15972d.getText().toString().equals("3");
                    } else if (i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog400To470.this.f15974f.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog400To470.this.f15971c, InsertChannelDialog400To470.this.f15972d, InsertChannelDialog400To470.this.f15973e)) {
                        return;
                    }
                    if (((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog400To470.this.f15975g.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog400To470.this.f15971c, InsertChannelDialog400To470.this.f15972d, InsertChannelDialog400To470.this.f15973e, InsertChannelDialog400To470.this.f15974f)) {
                        return;
                    }
                    if (((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) && i != 10) {
                        return;
                    }
                } else if (InsertChannelDialog400To470.this.f15976h.isFocused()) {
                    if (MethodsUtils.m11278v(InsertChannelDialog400To470.this.f15971c, InsertChannelDialog400To470.this.f15972d, InsertChannelDialog400To470.this.f15973e, InsertChannelDialog400To470.this.f15974f, InsertChannelDialog400To470.this.f15975g)) {
                        return;
                    }
                    if ((InsertChannelDialog400To470.this.f15971c.getText().toString().equals("1") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals(Constants.VIA_SHARE_TYPE_PUBLISHVIDEO)) || (InsertChannelDialog400To470.this.f15971c.getText().toString().equals("4") && InsertChannelDialog400To470.this.f15972d.getText().toString().equals("7") && InsertChannelDialog400To470.this.f15973e.getText().toString().equals("0"))) {
                        if (i != 10) {
                            return;
                        }
                    } else if (i != 10 && i != 7 && i != 4 && i != 0) {
                        return;
                    }
                }
                if (InsertChannelDialog400To470.this.f15971c.isFocused()) {
                    InsertChannelDialog400To470.this.f15971c.setText(InsertChannelDialog400To470.f15967o[i]);
                } else if (InsertChannelDialog400To470.this.f15972d.isFocused()) {
                    InsertChannelDialog400To470.this.f15972d.setText(InsertChannelDialog400To470.f15967o[i]);
                } else if (InsertChannelDialog400To470.this.f15973e.isFocused()) {
                    InsertChannelDialog400To470.this.f15973e.setText(InsertChannelDialog400To470.f15967o[i]);
                } else if (InsertChannelDialog400To470.this.f15974f.isFocused()) {
                    InsertChannelDialog400To470.this.f15974f.setText(InsertChannelDialog400To470.f15967o[i]);
                } else if (InsertChannelDialog400To470.this.f15975g.isFocused()) {
                    InsertChannelDialog400To470.this.f15975g.setText(InsertChannelDialog400To470.f15967o[i]);
                } else if (InsertChannelDialog400To470.this.f15976h.isFocused() && InsertChannelDialog400To470.this.f15976h.getText().length() == 0) {
                    InsertChannelDialog400To470.this.f15976h.setText(InsertChannelDialog400To470.f15967o[i]);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                String obj = InsertChannelDialog400To470.this.f15971c.getText().toString();
                String obj2 = InsertChannelDialog400To470.this.f15972d.getText().toString();
                String obj3 = InsertChannelDialog400To470.this.f15973e.getText().toString();
                String obj4 = InsertChannelDialog400To470.this.f15974f.getText().toString();
                String obj5 = InsertChannelDialog400To470.this.f15975g.getText().toString();
                String obj6 = InsertChannelDialog400To470.this.f15976h.getText().toString();
                String obj7 = InsertChannelDialog400To470.this.f15977i.getText().toString();
                if (MethodsUtils.m11278v(InsertChannelDialog400To470.this.f15971c, InsertChannelDialog400To470.this.f15972d, InsertChannelDialog400To470.this.f15973e, InsertChannelDialog400To470.this.f15974f, InsertChannelDialog400To470.this.f15975g, InsertChannelDialog400To470.this.f15976h)) {
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
                if ((m11291i < 144000000 || m11291i > 148000000) && (m11291i < 400000000 || m11291i > 470000000)) {
                    return;
                }
                if (TextUtils.isEmpty(InsertChannelDialog400To470.this.f15979k)) {
                    if (InsertChannelDialog400To470.this.f15970b != null) {
                        InsertChannelDialog400To470.this.f15970b.mo8941b(sb2);
                    }
                } else if (InsertChannelDialog400To470.this.f15970b != null) {
                    InsertChannelDialog400To470.this.f15970b.mo8942a(sb2);
                }
                InsertChannelDialog400To470.this.dismiss();
            }
        }

        /* synthetic */ C4923j(InsertChannelDialog400To470 insertChannelDialog400To470, ActionMode$CallbackC4914a actionMode$CallbackC4914a) {
            this();
        }
    }

    /* compiled from: InsertChannelDialog400To470.java */
    /* renamed from: com.ifengyu.intercom.ui.widget.dialog.n$k */
    /* loaded from: classes2.dex */
    public interface InterfaceC4924k {
        /* renamed from: a */
        void mo8942a(String str);

        /* renamed from: b */
        void mo8941b(String str);
    }

    public InsertChannelDialog400To470(Activity activity, String str, int i) {
        super(activity);
        this.f15982n = new C4921h();
        this.f15969a = activity;
        this.f15981m = LayoutInflater.from(activity);
        this.f15979k = str;
        this.f15980l = i;
        String[] strArr = f15967o;
        strArr[strArr.length - 1] = this.f15969a.getString(R.string.common_select);
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
        setContentView(R.layout.dialog_custom_channel_400_470);
        m9037g(this.f15969a);
        m8944u();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        if (!TextUtils.isEmpty(this.f15979k)) {
            String replace = this.f15979k.replace(".", "");
            if (replace.length() == 7) {
                char[] charArray = replace.toCharArray();
                this.f15971c.setText(String.valueOf(charArray[0]));
                this.f15972d.setText(String.valueOf(charArray[1]));
                this.f15973e.setText(String.valueOf(charArray[2]));
                this.f15974f.setText(String.valueOf(charArray[3]));
                this.f15975g.setText(String.valueOf(charArray[4]));
                this.f15976h.setText(String.valueOf(charArray[5]));
                this.f15977i.setText(String.valueOf(charArray[6]));
                this.f15976h.setFocusable(true);
                this.f15976h.setFocusableInTouchMode(true);
                this.f15976h.requestFocus();
                this.f15976h.setSelection(1);
            }
        } else {
            this.f15971c.setFocusable(true);
            this.f15971c.setFocusableInTouchMode(true);
            this.f15971c.requestFocus();
        }
        Window window = getWindow();
        if (window != null) {
            window.setSoftInputMode(18);
        }
    }

    /* renamed from: u */
    public void m8944u() {
        TextView textView = (TextView) findViewById(R.id.tv_dialog_title);
        int i = this.f15980l;
        if (i == 0) {
            textView.setText(R.string.channel_custom);
        } else if (i == 1) {
            textView.setText(R.string.receive_frequency);
        } else if (i == 2) {
            textView.setText(R.string.emission_frequency);
        }
        GridView gridView = (GridView) findViewById(R.id.gv_add_custom_channel_keyboard);
        C4922i c4922i = new C4922i();
        this.f15978j = c4922i;
        gridView.setAdapter((ListAdapter) c4922i);
        gridView.setOnItemClickListener(new C4923j(this, null));
        this.f15971c = (EditText) findViewById(R.id.et_input_num_1);
        this.f15972d = (EditText) findViewById(R.id.et_input_num_2);
        this.f15973e = (EditText) findViewById(R.id.et_input_num_3);
        this.f15974f = (EditText) findViewById(R.id.et_input_num_4);
        this.f15975g = (EditText) findViewById(R.id.et_input_num_5);
        this.f15976h = (EditText) findViewById(R.id.et_input_num_6);
        this.f15977i = (EditText) findViewById(R.id.et_input_num_7);
        this.f15971c.setTextIsSelectable(true);
        this.f15972d.setTextIsSelectable(true);
        this.f15973e.setTextIsSelectable(true);
        this.f15974f.setTextIsSelectable(true);
        this.f15975g.setTextIsSelectable(true);
        this.f15976h.setTextIsSelectable(true);
        this.f15971c.setOnLongClickListener(null);
        this.f15972d.setOnClickListener(null);
        this.f15971c.setFocusable(false);
        this.f15971c.setFocusableInTouchMode(false);
        this.f15972d.setFocusable(false);
        this.f15972d.setFocusableInTouchMode(false);
        this.f15973e.setFocusable(false);
        this.f15973e.setFocusableInTouchMode(false);
        this.f15974f.setFocusable(false);
        this.f15974f.setFocusableInTouchMode(false);
        this.f15975g.setFocusable(false);
        this.f15975g.setFocusableInTouchMode(false);
        this.f15976h.setFocusable(false);
        this.f15976h.setFocusableInTouchMode(false);
        this.f15977i.setFocusable(false);
        this.f15977i.setFocusableInTouchMode(false);
        this.f15977i.setKeyListener(null);
        this.f15971c.addTextChangedListener(this.f15982n);
        this.f15972d.addTextChangedListener(this.f15982n);
        this.f15973e.addTextChangedListener(this.f15982n);
        this.f15974f.addTextChangedListener(this.f15982n);
        this.f15975g.addTextChangedListener(this.f15982n);
        this.f15976h.addTextChangedListener(this.f15982n);
        this.f15975g.setCustomSelectionActionModeCallback(new ActionMode$CallbackC4914a(this));
        this.f15971c.setOnFocusChangeListener(new View$OnFocusChangeListenerC4915b());
        this.f15972d.setOnFocusChangeListener(new View$OnFocusChangeListenerC4916c());
        this.f15973e.setOnFocusChangeListener(new View$OnFocusChangeListenerC4917d());
        this.f15974f.setOnFocusChangeListener(new View$OnFocusChangeListenerC4918e());
        this.f15975g.setOnFocusChangeListener(new View$OnFocusChangeListenerC4919f());
        this.f15976h.setOnFocusChangeListener(new View$OnFocusChangeListenerC4920g());
    }

    /* renamed from: v */
    public void m8943v(InterfaceC4924k interfaceC4924k) {
        this.f15970b = interfaceC4924k;
    }
}
