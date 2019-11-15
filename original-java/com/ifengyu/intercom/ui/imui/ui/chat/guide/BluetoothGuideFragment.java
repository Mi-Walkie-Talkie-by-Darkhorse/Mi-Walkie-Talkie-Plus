package com.ifengyu.intercom.ui.imui.ui.chat.guide;

import android.bluetooth.BluetoothGattCharacteristic;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.imservice.event.BT_PUBLIC_MSG;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.b;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.btle.GattException;
import com.ifengyu.intercom.ui.imui.base.BaseFragment;
import com.ifengyu.intercom.ui.widget.view.WaterRippleView;
import com.ifengyu.library.util.BluetoothHeadsetUtils;
import com.ifengyu.library.util.BluetoothHeadsetUtils.Status;
import com.ifengyu.library.util.a;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIAlphaButton;
import com.ifengyu.library.widget.view.QMUIAlphaImageButton;
import com.ifengyu.library.widget.view.QMUIAlphaTextView;
import de.greenrobot.event.c;

public class BluetoothGuideFragment extends BaseFragment implements OnClickListener {
    public static final int CONNECTED = 1;
    public static final int CONNECTING = 2;
    public static final int DISCONNECTED = 0;
    public static final int NONE = -1;
    /* access modifiers changed from: private */
    public BtleCentralService mBleService;
    /* access modifiers changed from: private */
    public b mBleServiceConnector = new b() {
        public void onBleServiceConnected() {
            BluetoothGuideFragment.this.mBleService = BluetoothGuideFragment.this.mBleServiceConnector.getBleService();
            if (BluetoothGuideFragment.this.mBleService == null) {
                BluetoothGuideFragment.this.showStartPage();
                return;
            }
            ConnectionConfiguration s = BluetoothGuideFragment.this.mBleService.s();
            if (s == null || !s.a()) {
                BluetoothGuideFragment.this.showStartPage();
            } else {
                BluetoothGuideFragment.this.queryBluetoothState();
            }
        }

        public void onBleServiceDisconnected() {
        }
    };
    @BindView(2131755565)
    QMUIAlphaButton mBtnAction;
    @BindView(2131755432)
    LinearLayout mConnectFailedPage;
    @BindView(2131755433)
    LinearLayout mConnectSuccessPage;
    @BindView(2131755434)
    FrameLayout mConnectingPage;
    private BluetoothHeadsetUtils mHeadsetUtils;
    @BindView(2131755449)
    QMUIAlphaImageButton mIbLeft;
    @BindView(2131755436)
    LinearLayout mStartPage;
    @BindView(2131755159)
    FrameLayout mTitleBar;
    @BindView(2131755564)
    QMUIAlphaTextView mTvLookHelp;
    @BindView(2131755563)
    TextView mTvTips;
    @BindView(2131755443)
    TextView mTvTitle;
    @BindView(2131755435)
    WaterRippleView mWv;
    private int pageStatus = -1;

    public static BluetoothGuideFragment newInstance() {
        BluetoothGuideFragment bluetoothGuideFragment = new BluetoothGuideFragment();
        bluetoothGuideFragment.setArguments(new Bundle());
        return bluetoothGuideFragment;
    }

    /* access modifiers changed from: protected */
    public int getLayoutId() {
        return R.layout.fragment_bluetooth_guide;
    }

    /* access modifiers changed from: protected */
    public void initWidget(View view) {
        super.initWidget(view);
        l.a((ViewGroup) this.mTitleBar);
        this.mTvTitle.setText("开启网络对讲");
        this.mIbLeft.setOnClickListener(new BluetoothGuideFragment$$Lambda$0(this));
        this.mBtnAction.setOnClickListener(this);
        this.mTvLookHelp.setOnClickListener(this);
        this.mHeadsetUtils = new BluetoothHeadsetUtils(getContext());
        c.a().a((Object) this);
        this.mBleServiceConnector.connect(getContext());
    }

    /* access modifiers changed from: 0000 */
    public final /* synthetic */ void lambda$initWidget$0$BluetoothGuideFragment(View view) {
        popBackStack();
    }

    /* access modifiers changed from: protected */
    public void initData() {
    }

    public void onDestroy() {
        super.onDestroy();
        this.mHeadsetUtils.a();
        this.mBleServiceConnector.disconnect(getContext());
        c.a().d(this);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_look_help /*2131755564*/:
                String str = "https://m.ifengyu.com/resources/c_h.html";
                return;
            case R.id.btn_action /*2131755565*/:
                switch (this.pageStatus) {
                    case -1:
                        openDeviceBluetooth();
                        return;
                    case 0:
                        openDeviceBluetooth();
                        return;
                    case 1:
                        popBackStack();
                        return;
                    default:
                        return;
                }
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void queryBluetoothState() {
        if (checkServiceAndBle()) {
            sendPttKeyCharacteristic(com.ifengyu.intercom.node.transport.b.a((short) BT_PUBLIC_MSG.BT_HF_CONN_STATE_QUERY.value()));
        }
    }

    private void openDeviceBluetooth() {
        if (checkServiceAndBle()) {
            byte[] a = com.ifengyu.intercom.node.transport.b.a((short) BT_PUBLIC_MSG.BT_OPEN_HF.value());
            this.mBleService.s().c();
            sendPttKeyCharacteristic(a);
        }
    }

    private void closeDeviceBluetooth() {
        if (checkServiceAndBle()) {
            byte[] a = com.ifengyu.intercom.node.transport.b.a((short) BT_PUBLIC_MSG.BT_CLOSE_HF.value());
            this.mBleService.s().c();
            sendPttKeyCharacteristic(a);
        }
    }

    private void sendPttKeyCharacteristic(byte[] bArr) {
        this.mBleService.s().c();
        BluetoothGattCharacteristic a = this.mBleService.a();
        if (a != null) {
            try {
                this.mBleService.a(a, bArr);
            } catch (GattException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    private void connect() {
        if (checkServiceAndBle()) {
            this.mHeadsetUtils.a(a.a(this.mBleService.s().c()));
            this.pageStatus = 2;
            refreshUI();
        }
    }

    private boolean checkServiceAndBle() {
        if (this.mBleService == null) {
            l.a((CharSequence) "请先连接BLE");
            return false;
        }
        ConnectionConfiguration s = this.mBleService.s();
        if (s != null && s.a()) {
            return true;
        }
        l.a((CharSequence) "请先连接BLE");
        return false;
    }

    public void onEventMainThread(BT_PUBLIC_MSG bt_public_msg) {
        s.b(this.TAG, "onEventMainThread" + bt_public_msg);
        switch (bt_public_msg) {
            case BT_HF_ACK:
                s.b(this.TAG, "receive BT_HFG_ACK,start connect bluetooth");
                connect();
                return;
            case BT_HF_CONNECTED:
                this.pageStatus = 1;
                showConnectSuccessPage();
                return;
            case BT_HF_DISCONNECTED:
                showStartPage();
                return;
            default:
                return;
        }
    }

    public void onEventMainThread(Status status) {
        switch (status) {
            case CONNECTED:
                this.pageStatus = 1;
                refreshUI();
                return;
            case DISCONNECTED:
                this.pageStatus = 0;
                refreshUI();
                return;
            default:
                return;
        }
    }

    private void refreshUI() {
        switch (this.pageStatus) {
            case -1:
                showStartPage();
                break;
            case 0:
                break;
            case 1:
                showConnectSuccessPage();
                return;
            case 2:
                showConnectingPage();
                return;
            default:
                return;
        }
        showConnectFailedPage();
    }

    /* access modifiers changed from: private */
    public void showStartPage() {
        this.mStartPage.setVisibility(0);
        this.mConnectingPage.setVisibility(8);
        this.mConnectSuccessPage.setVisibility(8);
        this.mConnectFailedPage.setVisibility(8);
        this.mBtnAction.setVisibility(0);
        this.mTvLookHelp.setVisibility(8);
        this.mBtnAction.setText("开启对讲机网络对讲");
        this.mTvTips.setText("开启后，可在对讲机上与选定群组\n进行语音对讲");
        this.mWv.b((int) R.drawable.bluetooth_icon_gif);
    }

    private void showConnectingPage() {
        this.mStartPage.setVisibility(8);
        this.mConnectingPage.setVisibility(0);
        this.mConnectSuccessPage.setVisibility(8);
        this.mConnectFailedPage.setVisibility(8);
        this.mBtnAction.setVisibility(8);
        this.mTvLookHelp.setVisibility(8);
        this.mWv.a((int) R.drawable.bluetooth_icon_gif);
        this.mTvTips.setText("对讲机网络对讲功能开启中");
    }

    private void showConnectSuccessPage() {
        this.mStartPage.setVisibility(8);
        this.mConnectingPage.setVisibility(8);
        this.mConnectSuccessPage.setVisibility(0);
        this.mConnectFailedPage.setVisibility(8);
        this.mBtnAction.setVisibility(0);
        this.mTvLookHelp.setVisibility(8);
        this.mBtnAction.setText("确定");
        this.mWv.b((int) R.drawable.bluetooth_icon_gif);
        this.mTvTips.setText("对讲机网络对讲功能");
    }

    private void showConnectFailedPage() {
        this.mStartPage.setVisibility(8);
        this.mConnectingPage.setVisibility(8);
        this.mConnectSuccessPage.setVisibility(8);
        this.mConnectFailedPage.setVisibility(0);
        this.mBtnAction.setVisibility(0);
        this.mTvLookHelp.setVisibility(0);
        this.mBtnAction.setText("重新开启");
        this.mTvTips.setText("对讲机网络对讲功能");
        this.mWv.b((int) R.drawable.bluetooth_icon_gif);
    }
}
