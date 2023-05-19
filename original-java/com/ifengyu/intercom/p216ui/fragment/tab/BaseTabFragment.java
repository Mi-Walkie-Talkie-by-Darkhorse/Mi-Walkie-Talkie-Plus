package com.ifengyu.intercom.p216ui.fragment.tab;

import android.view.View;
import android.widget.AdapterView;
import android.widget.SimpleAdapter;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.BaseMvpFragment;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.base.BaseView;
import com.ifengyu.intercom.p216ui.fragment.AddDeviceFragment;
import com.ifengyu.intercom.p216ui.fragment.FriendSearchFragment;
import com.ifengyu.intercom.p216ui.fragment.QrScanFragment;
import com.ifengyu.intercom.p216ui.talk.GroupCreateFragment;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.p242c.QMUISkinManager;
import com.qmuiteam.qmui.widget.popup.QMUIPopup;
import com.qmuiteam.qmui.widget.popup.QMUIPopups;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.ifengyu.intercom.ui.fragment.tab.i0 */
/* loaded from: classes2.dex */
public abstract class BaseTabFragment<V extends BaseView, P extends BasePresenter<V>> extends BaseMvpFragment<V, P> {

    /* renamed from: A */
    private QMUIPopup f15308A;

    /* renamed from: i3 */
    private void m9912i3() {
        if (this.f15308A == null) {
            int[] iArr = {R.drawable.pop_icon_add_device, R.drawable.pop_icon_add_friend, R.drawable.pop_icon_group, R.drawable.pop_icon_scan};
            String[] m8601q = UIUtils.m8601q(R.array.right_top_popup);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < m8601q.length; i++) {
                HashMap hashMap = new HashMap();
                hashMap.put("image", Integer.valueOf(iArr[i]));
                hashMap.put("str", m8601q[i]);
                arrayList.add(hashMap);
            }
            this.f15308A = QMUIPopups.m7176a(getContext(), UIUtils.m8616b(MethodsUtils.m11297c() ? 200.0f : 140.0f), -2, new SimpleAdapter(getContext(), arrayList, R.layout.item_simple_list, new String[]{"image", "str"}, new int[]{R.id.item_image, R.id.item_text}), new AdapterView.OnItemClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.a
                @Override // android.widget.AdapterView.OnItemClickListener
                public final void onItemClick(AdapterView adapterView, View view, int i2, long j) {
                    BaseTabFragment.this.m9910k3(adapterView, view, i2, j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public /* synthetic */ void m9910k3(AdapterView adapterView, View view, int i, long j) {
        this.f15308A.m7187c();
        if (i == 0) {
            m8041v2(AddDeviceFragment.m10181j3());
        } else if (i == 1) {
            m8041v2(FriendSearchFragment.m10098n3());
        } else if (i == 2) {
            m8041v2(GroupCreateFragment.m9092U3());
        } else if (i != 3) {
        } else {
            m10316T2("android.permission.CAMERA");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        m8041v2(QrScanFragment.m10068R3());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h3 */
    public void m9913h3(View view) {
        m9912i3();
        this.f15308A.m7226M(1);
        this.f15308A.m7234E(2);
        this.f15308A.m7229J(UIUtils.m8616b(10.0f));
        this.f15308A.m7188b(0.6f);
        this.f15308A.m7233F(false);
        this.f15308A.m7221R(false);
        this.f15308A.m7223P(UIUtils.m8616b(20.0f));
        this.f15308A.m7227L(UIUtils.m8616b(8.0f));
        this.f15308A.m7179k(QMUISkinManager.m7933g(getActivity()));
        this.f15308A.m7177V(view);
    }
}
