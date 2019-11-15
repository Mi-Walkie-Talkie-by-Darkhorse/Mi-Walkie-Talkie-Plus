.class Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;
.super Ljava/lang/Object;
.source "ConnectDeviceActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->c:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;Ljava/util/List;Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;-><init>(Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/intercom/b/ad;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x1000000

    mul-int/2addr v1, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x10000

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const v1, 0x209001e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->c:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/ifengyu/intercom/b/v;->a(I)I

    move-result v3

    invoke-static {p3}, Lcom/ifengyu/intercom/b/x;->a([B)Lcom/ifengyu/intercom/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/b/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ifengyu/intercom/b/x;->c()I

    move-result v5

    invoke-virtual {v0}, Lcom/ifengyu/intercom/b/x;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1, v0}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    if-ne v5, v0, :cond_2

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    new-instance v7, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v7, v2, v4, v5, p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1, v9, v3, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$a;->a:Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;

    new-instance v7, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;

    invoke-direct {v7, v2, v4, v5, p1}, Lcom/ifengyu/intercom/bean/BluetoothDeviceBean;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1, v9, v3, v8, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/ConnectDeviceActivity$d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    return-void
.end method
