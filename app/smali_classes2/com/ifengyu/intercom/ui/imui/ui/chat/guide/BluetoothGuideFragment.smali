.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;
.super Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;
.source "BluetoothGuideFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CONNECTED:I = 0x1

.field public static final CONNECTING:I = 0x2

.field public static final DISCONNECTED:I = 0x0

.field public static final NONE:I = -0x1


# instance fields
.field private mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

.field private mBleServiceConnector:Lcom/ifengyu/intercom/node/b;

.field mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10022d
    .end annotation
.end field

.field mConnectFailedPage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001a8
    .end annotation
.end field

.field mConnectSuccessPage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001a9
    .end annotation
.end field

.field mConnectingPage:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001aa
    .end annotation
.end field

.field private mHeadsetUtils:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

.field mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b9
    .end annotation
.end field

.field mStartPage:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001ac
    .end annotation
.end field

.field mTitleBar:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100097
    .end annotation
.end field

.field mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10022c
    .end annotation
.end field

.field mTvTips:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f10022b
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b3
    .end annotation
.end field

.field mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001ab
    .end annotation
.end field

.field private pageStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleServiceConnector:Lcom/ifengyu/intercom/node/b;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;Lcom/ifengyu/intercom/node/btle/BtleCentralService;)Lcom/ifengyu/intercom/node/btle/BtleCentralService;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)Lcom/ifengyu/intercom/node/b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleServiceConnector:Lcom/ifengyu/intercom/node/b;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showStartPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->queryBluetoothState()V

    return-void
.end method

.method private checkServiceAndBle()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    if-nez v1, :cond_0

    const-string v1, "\u8bf7\u5148\u8fde\u63a5BLE"

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "\u8bf7\u5148\u8fde\u63a5BLE"

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeDeviceBluetooth()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->checkServiceAndBle()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_CLOSE_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/b;->a(S)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->sendPttKeyCharacteristic([B)V

    goto :goto_0
.end method

.method private connect()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->checkServiceAndBle()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/util/a;->a(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mHeadsetUtils:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a(Landroid/bluetooth/BluetoothDevice;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->refreshUI()V

    goto :goto_0
.end method

.method public static newInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;
    .locals 2

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private openDeviceBluetooth()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->checkServiceAndBle()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_OPEN_HF:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/b;->a(S)[B

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->sendPttKeyCharacteristic([B)V

    goto :goto_0
.end method

.method private queryBluetoothState()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->checkServiceAndBle()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->BT_HF_CONN_STATE_QUERY:Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->value()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lcom/ifengyu/intercom/node/transport/b;->a(S)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->sendPttKeyCharacteristic([B)V

    goto :goto_0
.end method

.method private refreshUI()V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showStartPage()V

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showConnectFailedPage()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showConnectingPage()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showConnectSuccessPage()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private sendPttKeyCharacteristic([B)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->s()Lcom/ifengyu/intercom/node/ConnectionConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/ConnectionConfiguration;->c()Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleService:Lcom/ifengyu/intercom/node/btle/BtleCentralService;

    invoke-virtual {v1, v0, p1}, Lcom/ifengyu/intercom/node/btle/BtleCentralService;->a(Landroid/bluetooth/BluetoothGattCharacteristic;[B)Z
    :try_end_0
    .catch Lcom/ifengyu/intercom/node/btle/GattException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showConnectFailedPage()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    const-string v1, "\u91cd\u65b0\u5f00\u542f"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    const-string v1, "\u5bf9\u8bb2\u673a\u7f51\u7edc\u5bf9\u8bb2\u529f\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(I)V

    return-void
.end method

.method private showConnectSuccessPage()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    const-string v1, "\u5bf9\u8bb2\u673a\u7f51\u7edc\u5bf9\u8bb2\u529f\u80fd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showConnectingPage()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->a(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    const-string v1, "\u5bf9\u8bb2\u673a\u7f51\u7edc\u5bf9\u8bb2\u529f\u80fd\u5f00\u542f\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showStartPage()V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mStartPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectingPage:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectSuccessPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mConnectFailedPage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, v2}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    const-string v1, "\u5f00\u542f\u5bf9\u8bb2\u673a\u7f51\u7edc\u5bf9\u8bb2"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTips:Landroid/widget/TextView;

    const-string v1, "\u5f00\u542f\u540e\uff0c\u53ef\u5728\u5bf9\u8bb2\u673a\u4e0a\u4e0e\u9009\u5b9a\u7fa4\u7ec4\n\u8fdb\u884c\u8bed\u97f3\u5bf9\u8bb2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mWv:Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/WaterRippleView;->b(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040090

    return v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initWidget(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->initWidget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTitleBar:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvTitle:Landroid/widget/TextView;

    const-string v1, "\u5f00\u542f\u7f51\u7edc\u5bf9\u8bb2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mIbLeft:Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$$Lambda$0;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBtnAction:Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mTvLookHelp:Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;

    invoke-virtual {v0, p0}, Lcom/ifengyu/library/widget/view/QMUIAlphaTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mHeadsetUtils:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleServiceConnector:Lcom/ifengyu/intercom/node/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/b;->connect(Landroid/content/Context;)Z

    return-void
.end method

.method final synthetic lambda$initWidget$0$BluetoothGuideFragment(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->popBackStack()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->openDeviceBluetooth()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->openDeviceBluetooth()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->popBackStack()V

    goto :goto_0

    :pswitch_5
    const-string v0, "https://m.ifengyu.com/resources/c_h.html"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10022c
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/base/BaseFragment;->onDestroy()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mHeadsetUtils:Lcom/ifengyu/library/util/BluetoothHeadsetUtils;

    invoke-virtual {v0}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->mBleServiceConnector:Lcom/ifengyu/intercom/node/b;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/node/b;->disconnect(Landroid/content/Context;)V

    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventMainThread(Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventMainThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$2;->$SwitchMap$com$ifengyu$im$imservice$event$BT_PUBLIC_MSG:[I

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/event/BT_PUBLIC_MSG;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->TAG:Ljava/lang/String;

    const-string v1, "receive BT_HFG_ACK,start connect bluetooth"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->connect()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showConnectSuccessPage()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->showStartPage()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;)V
    .locals 2

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment$2;->$SwitchMap$com$ifengyu$library$util$BluetoothHeadsetUtils$Status:[I

    invoke-virtual {p1}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->refreshUI()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->pageStatus:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/guide/BluetoothGuideFragment;->refreshUI()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
