package com.ifengyu.intercom.p189l.p198b.p201c.p202x1;

import android.annotation.SuppressLint;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p188k.FragmentMi3ChannelEditBinding;
import com.ifengyu.intercom.p189l.p190a.p196c.ChToneConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.PickerDialogBuilder;
import com.ifengyu.intercom.p214p.Mi3InputFilter;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.widget.frequency.FrequencyDialogBuilder;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import java.nio.charset.Charset;

/* renamed from: com.ifengyu.intercom.l.b.c.x1.k */
/* loaded from: classes2.dex */
public abstract class Mi3ChanelEditBaseFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: A */
    protected Mi3ViewModel f14256A;

    /* renamed from: B */
    protected QMUIAlphaImageButton f14257B;

    /* renamed from: z */
    protected FragmentMi3ChannelEditBinding f14258z;

    /* renamed from: A3 */
    private void m11594A3() {
        final ChannelModel value = this.f14256A.m11460x().getValue();
        if (value == null) {
            return;
        }
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String displayNameSuffix = value.getDisplayNameSuffix();
        editTextDialogBuilder.m7282x(R.string.channel_name);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_channel_name);
        editTextDialogBuilder2.m7261H(displayNameSuffix);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4064h.f14251a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.x1.g
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3ChanelEditBaseFragment.this.m11581s3(editTextDialogBuilder, displayNameSuffix, value, qMUIDialog, i);
            }
        });
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new Mi3InputFilter(14)});
        m7262G.setSelection(displayNameSuffix.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: h3 */
    private void m11592h3() {
        this.f14258z.f13973H.m7337q(mo11593g3());
        UIUtils.m8595w(AppConstants.f13909c, this.f14258z.f13970E);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m11589k3(ChannelModel channelModel) {
        if (channelModel != null) {
            mo11577w3(channelModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m11587m3(boolean z, ChannelModel channelModel, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        if (z) {
            channelModel.setReceiveFreq(i);
            if (channelModel.isEmpty()) {
                channelModel.setSendFreq(i);
            }
        } else {
            channelModel.setSendFreq(i);
            if (channelModel.isEmpty()) {
                channelModel.setReceiveFreq(i);
            }
        }
        mo11578v3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m11584p3(PickerDialogBuilder pickerDialogBuilder, boolean z, ChannelModel channelModel, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        int m11419I = pickerDialogBuilder.m11419I();
        int m11417K = pickerDialogBuilder.m11417K();
        if (z) {
            channelModel.setReceiveToneType(m11419I);
            channelModel.setReceiveToneValue(m11417K);
            if (channelModel.getSendToneValue() == 0) {
                channelModel.setSendToneType(m11419I);
                channelModel.setSendToneValue(m11417K);
            }
        } else {
            channelModel.setSendToneType(m11419I);
            channelModel.setSendToneValue(m11417K);
            if (channelModel.getReceiveToneValue() == 0) {
                channelModel.setReceiveToneType(m11419I);
                channelModel.setReceiveToneValue(m11417K);
            }
        }
        mo11578v3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m11581s3(EditTextDialogBuilder editTextDialogBuilder, String str, ChannelModel channelModel, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            UIUtils.m8593y(R.string.please_input_channel_name);
        } else if (trim.getBytes(Charset.forName("GB2312")).length > 14) {
            UIUtils.m8593y(R.string.name_set_too_lang);
        } else if (trim.equals(str)) {
            qMUIDialog.dismiss();
        } else {
            qMUIDialog.dismiss();
            channelModel.setChannelName(trim);
            mo11578v3();
        }
    }

    /* renamed from: x3 */
    private void m11576x3(final boolean z) {
        String m8603o;
        final ChannelModel value = this.f14256A.m11460x().getValue();
        if (value == null) {
            return;
        }
        if (z) {
            m8603o = UIUtils.m8603o(R.string.receive_frequency);
        } else {
            m8603o = UIUtils.m8603o(R.string.emission_frequency);
        }
        FrequencyDialogBuilder frequencyDialogBuilder = new FrequencyDialogBuilder(getContext());
        frequencyDialogBuilder.m8881H(m8603o);
        frequencyDialogBuilder.m8882G(requireContext().getString(R.string.mi3_freq_range_description));
        frequencyDialogBuilder.m8880I(new FrequencyDialogBuilder.InterfaceC4943a() { // from class: com.ifengyu.intercom.l.b.c.x1.d
            @Override // com.ifengyu.intercom.p216ui.widget.frequency.FrequencyDialogBuilder.InterfaceC4943a
            /* renamed from: a */
            public final void mo8879a(QMUIDialog qMUIDialog, int i) {
                Mi3ChanelEditBaseFragment.this.m11587m3(z, value, qMUIDialog, i);
            }
        });
        frequencyDialogBuilder.m7296f(R.style.DialogTheme2).show();
    }

    /* renamed from: y3 */
    private void m11575y3(final boolean z) {
        String m8603o;
        int sendToneType;
        int sendToneValue;
        final ChannelModel value = this.f14256A.m11460x().getValue();
        if (value == null) {
            return;
        }
        if (z) {
            m8603o = UIUtils.m8603o(R.string.receive_sub_tone);
            sendToneType = value.getReceiveToneType();
            sendToneValue = value.getReceiveToneValue();
        } else {
            m8603o = UIUtils.m8603o(R.string.emissive_sub_tone);
            sendToneType = value.getSendToneType();
            sendToneValue = value.getSendToneValue();
        }
        final PickerDialogBuilder pickerDialogBuilder = new PickerDialogBuilder(getContext());
        pickerDialogBuilder.m7281y(m8603o);
        PickerDialogBuilder pickerDialogBuilder2 = pickerDialogBuilder;
        pickerDialogBuilder2.m11415M(ChToneConstants.f14118a);
        pickerDialogBuilder2.m11413O(ChToneConstants.f14119b);
        pickerDialogBuilder2.m11416L(sendToneType);
        pickerDialogBuilder2.m11414N(sendToneValue);
        pickerDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4059c.f14238a);
        PickerDialogBuilder pickerDialogBuilder3 = pickerDialogBuilder2;
        pickerDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.x1.e
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3ChanelEditBaseFragment.this.m11584p3(pickerDialogBuilder, z, value, qMUIDialog, i);
            }
        });
        pickerDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        FragmentMi3ChannelEditBinding fragmentMi3ChannelEditBinding = (FragmentMi3ChannelEditBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_mi3_channel_edit, null, false);
        this.f14258z = fragmentMi3ChannelEditBinding;
        fragmentMi3ChannelEditBinding.m23011A(getActivity());
        mo11591i3();
        this.f14258z.mo11969F(this.f14256A);
        this.f14258z.setClickListener(this);
        m11592h3();
        return this.f14258z.mo23006a();
    }

    /* renamed from: g3 */
    protected abstract String mo11593g3();

    /* JADX INFO: Access modifiers changed from: protected */
    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: i3 */
    public void mo11591i3() {
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14256A = mi3ViewModel;
        mi3ViewModel.m11460x().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.x1.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ChanelEditBaseFragment.this.m11589k3((ChannelModel) obj);
            }
        });
        this.f14256A.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.x1.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3ChanelEditBaseFragment.this.mo11574z3((OperationResult) obj);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.itemCustomChName) {
            m11594A3();
        } else if (id == R.id.itemCustomChRxFreq) {
            m11576x3(true);
        } else if (id == R.id.itemCustomChTxFreq) {
            m11576x3(false);
        } else if (id == R.id.itemChRxTone) {
            m11575y3(true);
        } else if (id == R.id.itemChTxTone) {
            m11575y3(false);
        } else if (id == R.id.btn1) {
            mo11580t3();
        } else if (id == R.id.btn2) {
            mo11579u3();
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
        this.f14256A.m11497b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
    }

    /* renamed from: t3 */
    protected void mo11580t3() {
    }

    /* renamed from: u3 */
    protected void mo11579u3() {
    }

    /* renamed from: v3 */
    protected void mo11578v3() {
    }

    /* renamed from: w3 */
    protected void mo11577w3(ChannelModel channelModel) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: z3 */
    public abstract void mo11574z3(OperationResult operationResult);
}
