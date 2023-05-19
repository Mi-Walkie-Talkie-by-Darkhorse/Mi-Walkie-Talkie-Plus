.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;
.super Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;
.source "AddGroupForDeviceQrScanFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;-><init>()V

    return-void
.end method

.method public static X3()Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/o2;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected T3(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    goto :goto_0

    :cond_0
    const-string p2, "typ"

    .line 3
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "content"

    .line 5
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->o3(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    :goto_0
    return-void
.end method

.method protected q3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/qmuiteam/qmui/arch/b;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->A3(Lcom/ifengyu/intercom/bean/QRContentEntity;)Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    move-result-object p1

    return-object p1
.end method
