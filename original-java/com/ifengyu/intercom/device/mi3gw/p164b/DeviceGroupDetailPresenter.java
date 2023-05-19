package com.ifengyu.intercom.device.mi3gw.p164b;

import android.text.TextUtils;
import com.ifengyu.intercom.device.mi3gw.entity.DeviceGroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.device.mi3gw.p166d.DeviceGroupDetailView;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.http.entity.TempMember;
import com.ifengyu.talk.p235e.TempMemberComparator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* renamed from: com.ifengyu.intercom.device.mi3gw.b.a */
/* loaded from: classes2.dex */
public class DeviceGroupDetailPresenter extends BasePresenter<DeviceGroupDetailView> implements OnDeviceDataShareListener {

    /* renamed from: c */
    private final ArrayList<DeviceGroupDetailAdapterMultipleEntity> f12428c = new ArrayList<>();

    /* renamed from: d */
    private long f12429d;

    public DeviceGroupDetailPresenter(long j) {
        this.f12429d = j;
    }

    /* renamed from: y */
    private void m13813y(TempGroup tempGroup) {
        this.f12428c.clear();
        ArrayList<TempMember> userList = tempGroup.getUserList();
        Collections.sort(userList, new TempMemberComparator(tempGroup.getOwner()));
        boolean m8517n = SlTalkClient.m8517n(tempGroup, DeviceDataShare.m13732s().m13740o());
        int min = Math.min(userList.size(), m8517n ? 8 : 9);
        for (int i = 0; i < min; i++) {
            this.f12428c.add(new DeviceGroupDetailAdapterMultipleEntity(1001, userList.get(i)));
        }
        this.f12428c.add(new DeviceGroupDetailAdapterMultipleEntity(1002));
        if (m8517n) {
            this.f12428c.add(new DeviceGroupDetailAdapterMultipleEntity(1003));
        }
        m10302s().mo13654e0(tempGroup);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: D0 */
    public void mo13429D0(long j) {
        if (this.f12429d == j) {
            m10302s().mo13652h();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: E */
    public void mo13428E(long j, String str) {
        if (this.f12429d == j) {
            m10302s().mo13650i();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: F */
    public void mo13427F(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: G0 */
    public void mo13426G0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: H */
    public void mo13425H(TempGroup tempGroup) {
        String nickname;
        if (tempGroup.getGid() == this.f12429d) {
            m13813y(tempGroup);
            Iterator<TempMember> it2 = tempGroup.getUserList().iterator();
            while (it2.hasNext()) {
                TempMember next = it2.next();
                if (next.getUserId() == DeviceDataShare.m13732s().m13740o()) {
                    if (!TextUtils.isEmpty(next.getNicknameIn())) {
                        nickname = next.getNicknameIn();
                    } else {
                        nickname = next.getNickname();
                    }
                    m10302s().mo13641o1(nickname);
                    return;
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L */
    public void mo13424L(NetDeviceModel netDeviceModel) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L0 */
    public void mo13423L0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: M0 */
    public void mo13422M0(ArrayList<TempGroup> arrayList) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: O0 */
    public void mo13420O0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: P */
    public void mo13418P(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: R0 */
    public void mo13417R0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: S */
    public void mo13416S() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: X0 */
    public void mo13415X0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: Y */
    public void mo13414Y(long j) {
        if (this.f12429d == j) {
            m10302s().mo13638q1();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: a1 */
    public void mo13413a1(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: d0 */
    public void mo13412d0(TempGroup tempGroup, ArrayList<TempGroup> arrayList) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: h1 */
    public void mo13411h1(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: i0 */
    public void mo13410i0(long j) {
        if (this.f12429d == j) {
            m10302s().mo13653g();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k0 */
    public void mo13409k0(long... jArr) {
        for (long j : jArr) {
            if (this.f12429d == j) {
                m10302s().mo13643n();
                return;
            }
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k1 */
    public void mo13408k1() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: l0 */
    public void mo13407l0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: o0 */
    public void mo13406o0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: p */
    public void mo13405p(long j, String str) {
        if (this.f12429d == j) {
            m10302s().mo13656S0();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        DeviceDataShare.m13732s().removeListener(this);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: r */
    public void mo13404r(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t0 */
    public void mo13403t0(long... jArr) {
        for (long j : jArr) {
            if (this.f12429d == j) {
                m10302s().mo13655e();
                return;
            }
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t1 */
    public void mo13402t1(long j) {
        if (this.f12429d == j) {
            m10302s().mo13648j();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(DeviceGroupDetailView deviceGroupDetailView) {
        super.mo9229n(deviceGroupDetailView);
        DeviceDataShare.m13732s().addListener(this);
    }

    /* renamed from: w */
    public ArrayList<DeviceGroupDetailAdapterMultipleEntity> m13814w() {
        return this.f12428c;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: w0 */
    public void mo13401w0() {
    }
}
