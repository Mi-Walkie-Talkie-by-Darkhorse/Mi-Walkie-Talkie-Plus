.class public abstract Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;
.super Ljava/lang/Object;
.source "BluetoothHeadsetUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothHeadsetUtils"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mCountDown:Landroid/os/CountDownTimer;

.field private mCountDown11:Landroid/os/CountDownTimer;

.field private mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mIsCountDownOn:Z

.field private mIsOnHeadsetSco:Z

.field private mIsStarted:Z

.field private mIsStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x3e8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$1;-><init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$2;-><init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;JJ)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$3;-><init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;

    invoke-direct {v0, p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$4;-><init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils$5;-><init>(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;JJ)V

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown11:Landroid/os/CountDownTimer;

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    return v0
.end method

.method static synthetic access$202(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsOnHeadsetSco:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarting:Z

    return v0
.end method

.method static synthetic access$502(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarting:Z

    return p1
.end method

.method static synthetic access$600(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown11:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private startBluetooth()Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "BluetoothHeadsetUtils"

    const-string v2, "startBluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarting:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startBluetooth11()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x1

    const-string v1, "BluetoothHeadsetUtils"

    const-string v2, "startBluetooth11"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mHeadsetProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, v2, v3, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopBluetooth()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "stopBluetooth"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method


# virtual methods
.method public isOnHeadsetSco()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsOnHeadsetSco:Z

    return v0
.end method

.method public abstract onHeadsetConnected()V
.end method

.method public abstract onHeadsetDisconnected()V
.end method

.method public abstract onScoAudioConnected()V
.end method

.method public abstract onScoAudioDisconnected()V
.end method

.method public start()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->startBluetooth()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->startBluetooth11()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsStarted:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->stopBluetooth()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->stopBluetooth11()V

    goto :goto_0
.end method

.method protected stopBluetooth11()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const-string v0, "BluetoothHeadsetUtils"

    const-string v1, "stopBluetooth11"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mIsCountDownOn:Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mCountDown11:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mConnectedHeadset:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mHeadsetBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/imservice/services/BluetoothHeadsetUtils;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    :cond_1
    return-void
.end method
