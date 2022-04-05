.class public Lcom/ifengyu/intercom/lite/g/t;
.super Landroidx/lifecycle/a;


# static fields
.field private static final h:Ljava/lang/String; = "t"


# instance fields
.field public b:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ifengyu/intercom/lite/e/f;

.field private f:Lcom/ifengyu/intercom/lite/e/j/a;

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

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->c:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->d:Landroidx/lifecycle/p;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/g/t;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/g/t;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "upgradeProgress"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "mobileManufacturer"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "mobileBrand"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "mobileModel"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "mobileRelease"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toVersionCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toVersionName"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "fromVersionCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fromVersionName"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "failureReason"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "Lite_Firmware_Upgrade_Failure"

    invoke-static {p1, p2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/g/t;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/g/t;->k()V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/g/t;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/ifengyu/intercom/i/r;->b(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/e/j/a;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/e/j/a;->b([B)V

    new-instance v0, Lcom/ifengyu/intercom/lite/e/j/b;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/lite/e/j/b;-><init>(Lcom/ifengyu/intercom/lite/e/j/a;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v1, p1}, Lcom/ifengyu/intercom/lite/e/f;->e([B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    new-instance v1, Lcom/ifengyu/intercom/lite/g/j;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/j;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/data/c;Lno/nordicsemi/android/ble/u2/k;)Lno/nordicsemi/android/ble/t2;

    new-instance v0, Lcom/ifengyu/intercom/lite/g/l;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/l;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    new-instance v0, Lcom/ifengyu/intercom/lite/g/g;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/g;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void

    :cond_1
    :goto_0
    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "firmware data is null, please check file"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v1, "getFirmwareInfo"

    invoke-static {v0, v1, p0}, Lcom/ifengyu/blelib/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private c(I)Ljava/lang/String;
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

.method private d(I)V
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput-byte v4, v1, v3

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

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

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/e/j/a;->a([B)I

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {v0, v1, p1}, Lcom/ifengyu/intercom/lite/e/j/a;->a([BI)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/lite/e/f;->e([B)Lno/nordicsemi/android/ble/t2;

    move-result-object p1

    new-instance v0, Lcom/ifengyu/intercom/lite/g/e;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/e;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    new-instance v0, Lcom/ifengyu/intercom/lite/g/k;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/lite/g/k;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {p1, v0}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {p1}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "userId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->L()Ljava/lang/String;

    move-result-object v2

    const-string v3, "email"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgradeProgress"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "mobileManufacturer"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "mobileBrand"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "mobileModel"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "mobileRelease"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->f()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVersionCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toVersionName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fromVersionCode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fromVersionName"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "Lite_Firmware_Upgrade_Success"

    invoke-static {v0, v2, v1}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    new-instance v1, Lcom/ifengyu/intercom/lite/g/t$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/t$a;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/lite/e/f;->e(Lcom/ifengyu/blelib/c/e;)V

    return-void
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/ifengyu/intercom/lite/g/r;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/g/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/lite/g/r;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->setVersionSoft(I)V

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/lite/f/e;->b(Lcom/ifengyu/intercom/lite/models/DeviceModel;)V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/lite/e/f;->e([B)Lno/nordicsemi/android/ble/t2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/g/f;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/f;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    new-instance v1, Lcom/ifengyu/intercom/lite/g/p;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/p;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x1t
    .end array-data
.end method

.method private l()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/lite/e/f;->e([B)Lno/nordicsemi/android/ble/t2;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/g/n;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/n;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/j;)Lno/nordicsemi/android/ble/t2;

    new-instance v1, Lcom/ifengyu/intercom/lite/g/o;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/o;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/ble/t2;->a(Lno/nordicsemi/android/ble/u2/d;)Lno/nordicsemi/android/ble/t2;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/Request;->a()V

    return-void

    :array_0
    .array-data 1
        0x1t
        -0x1t
    .end array-data
.end method


# virtual methods
.method public synthetic a(Lcom/ifengyu/intercom/lite/g/r;)Lcom/ifengyu/intercom/lite/models/DeviceModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/database/LiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/database/LiteDatabase;->n()Lcom/ifengyu/intercom/lite/f/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/lite/f/e;->b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/bluetooth/BluetoothDevice;[BI)V
    .locals 0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->c:Landroidx/lifecycle/p;

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/e/j/a;->e()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Landroid/util/Pair;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    invoke-direct {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;-><init>()V

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionSoft()I

    move-result v1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getVersionCode()I

    move-result v3

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionSoft()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a(I)V

    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/models/DeviceModel;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/models/DeviceModel;->getVersionSoft()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/lite/utils/l;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->b(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getVersionCode()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c(I)V

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->d(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {v4}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->c(Ljava/lang/String;)V

    if-le v3, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a(Z)V

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/http/entity/FirmwareInfo;->getMode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->b(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->a(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)Ljava/lang/String;
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

.method public b()V
    .locals 3

    invoke-virtual {p0}, Landroidx/lifecycle/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/lite/g/r;->a(Landroid/content/Context;)Lcom/ifengyu/intercom/lite/g/r;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/ifengyu/intercom/lite/g/m;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/lite/g/m;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/lite/g/q;->a:Lcom/ifengyu/intercom/lite/g/q;

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v2, Lcom/ifengyu/intercom/lite/g/a;->a:Lcom/ifengyu/intercom/lite/g/a;

    invoke-static {v1, v0, v2}, Lio/reactivex/Observable;->zip(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/lite/g/i;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/lite/g/i;-><init>(Lcom/ifengyu/intercom/lite/g/t;)V

    sget-object v2, Lcom/ifengyu/intercom/lite/g/h;->a:Lcom/ifengyu/intercom/lite/g/h;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->c:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic c(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "end commend write failed"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write end commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/g/t;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x63

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method public d()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic d(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "end commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "Congratulations, the upgrade was successful!!!"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->c:Landroidx/lifecycle/p;

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/g/t;->j()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/g/t;->h()V

    return-void
.end method

.method public synthetic d(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firmware data write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/j/a;->e()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Write firmware data failed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/g/t;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method public e()Landroidx/lifecycle/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/p<",
            "Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->d:Landroidx/lifecycle/p;

    return-object v0
.end method

.method public synthetic e(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "firmware data write finished"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->f:Lcom/ifengyu/intercom/lite/e/j/a;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/lite/e/j/a;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/g/t;->d(I)V

    return-void
.end method

.method public synthetic e(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare commend write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write prepare commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/g/t;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->e:Lcom/ifengyu/intercom/lite/e/f;

    invoke-virtual {v0}, Lno/nordicsemi/android/ble/u1;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/g/t;->e()Landroidx/lifecycle/p;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;

    if-nez v0, :cond_0

    const-string v0, "UpgradeInfoDTO is null"

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ifengyu/intercom/i/r;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    const-string v0, "Firmware file not exists"

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/ifengyu/intercom/lite/dto/UpgradeInfoDTO;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/g/t;->i()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    const-string v0, "Device Disconnected"

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic f(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start commend write failed, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->b:Landroidx/lifecycle/p;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/p;->postValue(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write start commend failed, reason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/lite/g/t;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(ILjava/lang/String;)V

    return-void
.end method

.method public synthetic g(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "prepare commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/ifengyu/intercom/lite/g/t;->l()V

    return-void
.end method

.method public synthetic h(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    sget-object p1, Lcom/ifengyu/intercom/lite/g/t;->h:Ljava/lang/String;

    const-string v0, "start commend write success"

    invoke-static {p1, v0}, Lcom/ifengyu/blelib/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/g/t;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/v;->onCleared()V

    return-void
.end method
