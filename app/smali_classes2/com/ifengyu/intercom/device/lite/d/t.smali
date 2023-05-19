.class public Lcom/ifengyu/intercom/device/lite/d/t;
.super Landroidx/lifecycle/a;
.source "LiteUpgradeViewModel.java"


# static fields
.field private static final h:Ljava/lang/String; = "t"


# instance fields
.field public b:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/i/v0;

.field private f:Lcom/ifengyu/intercom/device/lite/c/c/a;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    .line 3
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->c:Landroidx/lifecycle/o;

    .line 4
    new-instance p1, Landroidx/lifecycle/o;

    invoke-direct {p1}, Landroidx/lifecycle/o;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->d:Landroidx/lifecycle/o;

    .line 5
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/t0;->j(Ljava/lang/String;)Lcom/ifengyu/intercom/i/v0;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    return-void
.end method

.method private synthetic B(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare commend write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write prepare commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->H(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic D(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "start commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->P(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic F(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start commend write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write start commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->H(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void
.end method

.method private H(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x64

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "DEVICE DISCONNECTED"

    return-object p1

    :pswitch_1
    const-string p1, "NOT SUPPORTED"

    return-object p1

    :pswitch_2
    const-string p1, "NULL ATTRIBUTE"

    return-object p1

    :pswitch_3
    const-string p1, "REQUEST FAILED"

    return-object p1

    :pswitch_4
    const-string p1, "TIMEOUT"

    return-object p1

    :pswitch_5
    const-string p1, "VALIDATION"

    return-object p1

    :pswitch_6
    const-string p1, "CANCELLED"

    return-object p1

    :cond_0
    const-string p1, "BLUETOOTH DISABLED"

    return-object p1

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private I(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "upgradeProgress"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "mobileManufacturer"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "mobileBrand"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "mobileModel"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "mobileRelease"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toVersionCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toVersionName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "fromVersionCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fromVersionName"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "failureReason"

    .line 14
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object p1

    const-string p2, "Lite_Firmware_Upgrade_Failure"

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->P()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgradeProgress"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "mobileManufacturer"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "mobileBrand"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "mobileModel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "mobileRelease"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVersionCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVersionName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fromVersionCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fromVersionName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v0

    const-string v2, "Lite_Firmware_Upgrade_Success"

    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/t$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/t$a;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/v0;->n1(Lcom/ifengyu/blelib/b/c;)V

    return-void
.end method

.method private N()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/device/lite/d/r;->d(Landroid/content/Context;)Lcom/ifengyu/intercom/device/lite/d/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/device/lite/d/r;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/models/DeviceModel;->setVersionSoft(I)V

    .line 5
    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/database/a/e;->h(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method

.method private O(I)V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    const/4 v4, -0x1

    aput-byte v4, v1, v2

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    not-int p1, p1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    shr-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x5

    aput-byte p1, v1, v0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->b([B)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->c([BI)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/i/v0;->D0([B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/n;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/n;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 4
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/f;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/f;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 5
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    .line 6
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void
.end method

.method private P(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/ifengyu/library/utils/j;->i(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/c/c/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    .line 4
    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->l([B)V

    .line 5
    new-instance v0, Lcom/ifengyu/intercom/device/lite/c/c/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/device/lite/c/c/b;-><init>(Lcom/ifengyu/intercom/device/lite/c/c/a;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/i/v0;->D0([B)Lno/nordicsemi/android/ble/u2;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/m;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/m;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 7
    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/ble/u2;->W(Lno/nordicsemi/android/ble/data/c;Lno/nordicsemi/android/ble/v2/l;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/i;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/i;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 8
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v0, Lcom/ifengyu/intercom/device/lite/d/l;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/device/lite/d/l;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 9
    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    .line 10
    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void

    .line 11
    :cond_1
    :goto_0
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "firmware data is null, please check file"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private Q()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/v0;->D0([B)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/j;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 3
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/d;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/d;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 4
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    .line 5
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
    .end array-data
.end method

.method private R()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    .line 2
    iget-object v1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/i/v0;->D0([B)Lno/nordicsemi/android/ble/u2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/e;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/e;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 3
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->J(Lno/nordicsemi/android/ble/v2/k;)Lno/nordicsemi/android/ble/u2;

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/g;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/g;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 4
    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/u2;->K(Lno/nordicsemi/android/ble/v2/e;)Lno/nordicsemi/android/ble/u2;

    .line 5
    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->f()V

    return-void

    :array_0
    .array-data 1
        0x1t
        -0x1t
    .end array-data
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/device/lite/d/t;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/ifengyu/intercom/device/lite/d/t;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->H(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/ifengyu/intercom/device/lite/d/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->Q()V

    return-void
.end method

.method private synthetic k(Lcom/ifengyu/intercom/device/lite/d/r;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ifengyu/intercom/p/d0;->o()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->G(Landroid/content/Context;)Lcom/ifengyu/intercom/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/database/AppDatabase;->E()Lcom/ifengyu/intercom/database/a/e;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/database/a/e;->f(Ljava/lang/String;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method private synthetic m(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;-><init>()V

    .line 2
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 3
    check-cast v1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v1

    .line 4
    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v3

    .line 5
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->j(I)V

    .line 6
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/models/DeviceModel;->getVersionSoft()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/l/a/d/d;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->k(Ljava/lang/String;)V

    .line 7
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->o(I)V

    .line 8
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->p(Ljava/lang/String;)V

    .line 9
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->i(Ljava/lang/String;)V

    .line 10
    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->l(Ljava/lang/String;)V

    if-le v3, v1, :cond_0

    const/4 v2, 0x1

    .line 11
    :cond_0
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->n(Z)V

    .line 12
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/http/entity/VersionInfo;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/http/entity/VersionInfo;->getMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->m(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->n(Z)V

    .line 14
    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic o(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v1, "getFirmwareInfo"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/library/utils/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic p(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "end commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Congratulations, the upgrade was successful!!!"

    .line 2
    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->c:Landroidx/lifecycle/o;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->N()V

    .line 6
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->J()V

    return-void
.end method

.method private synthetic r(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "end commend write failed"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write end commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->H(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x63

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic t(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->c:Landroidx/lifecycle/o;

    iget-object p2, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/device/lite/c/c/a;->i()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic v(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "firmware data write finished"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->e()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->O(I)V

    return-void
.end method

.method private synthetic x(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firmware data write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/t;->f:Lcom/ifengyu/intercom/device/lite/c/c/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/lite/c/c/a;->i()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write firmware data failed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->H(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic z(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ifengyu/intercom/device/lite/d/t;->h:Ljava/lang/String;

    const-string v0, "prepare commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/library/utils/k;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->R()V

    return-void
.end method


# virtual methods
.method public synthetic A(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->z(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic C(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->B(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public synthetic E(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->D(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic G(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->F(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public L()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->e:Lcom/ifengyu/intercom/i/v0;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/w1;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->j()Landroidx/lifecycle/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;

    if-nez v0, :cond_0

    const-string v0, "UpgradeInfoDTO is null"

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/library/utils/j;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    const-string v0, "Firmware file not exists"

    .line 9
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->g:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/ifengyu/intercom/device/lite/d/t;->K()V

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/o;->postValue(Ljava/lang/Object;)V

    const-string v0, "Device Disconnected"

    .line 13
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/device/lite/d/t;->I(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public M(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "STATE LOW POWER"

    return-object p1

    :cond_1
    const-string p1, "STATE FAIL"

    return-object p1

    :cond_2
    const-string p1, "STATE SUCCESS"

    return-object p1

    :cond_3
    const-string p1, "STATE UPGRADING"

    return-object p1

    :cond_4
    const-string p1, "STATE START"

    return-object p1
.end method

.method public g()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/device/lite/d/r;->d(Landroid/content/Context;)Lcom/ifengyu/intercom/device/lite/d/r;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/device/lite/d/k;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/lite/d/k;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    .line 3
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/device/lite/d/q;->a:Lcom/ifengyu/intercom/device/lite/d/q;

    .line 5
    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 6
    sget-object v2, Lcom/ifengyu/intercom/device/lite/d/o;->a:Lcom/ifengyu/intercom/device/lite/d/o;

    invoke-static {v1, v0, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 7
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/device/lite/d/c;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/device/lite/d/c;-><init>(Lcom/ifengyu/intercom/device/lite/d/t;)V

    sget-object v2, Lcom/ifengyu/intercom/device/lite/d/h;->a:Lcom/ifengyu/intercom/device/lite/d/h;

    .line 8
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public h()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->c:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public i()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->b:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public j()Landroidx/lifecycle/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/o<",
            "Lcom/ifengyu/intercom/device/lite/dto/UpgradeInfoDTO;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/t;->d:Landroidx/lifecycle/o;

    return-object v0
.end method

.method public synthetic l(Lcom/ifengyu/intercom/device/lite/d/r;)Lcom/ifengyu/intercom/models/DeviceModel;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->k(Lcom/ifengyu/intercom/device/lite/d/r;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic n(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->m(Landroid/util/Pair;)V

    return-void
.end method

.method protected onCleared()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    return-void
.end method

.method public synthetic q(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->p(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic s(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->r(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method public synthetic u(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/device/lite/d/t;->t(Landroid/bluetooth/BluetoothDevice;[BI)V

    return-void
.end method

.method public synthetic w(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->v(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public synthetic y(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/device/lite/d/t;->x(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
