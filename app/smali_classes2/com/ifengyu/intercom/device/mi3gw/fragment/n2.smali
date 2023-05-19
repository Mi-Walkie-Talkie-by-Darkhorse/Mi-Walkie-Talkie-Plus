.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/n2;
.super Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;
.source "AddDeviceQrScanFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;-><init>()V

    return-void
.end method

.method public static X3()Lcom/ifengyu/intercom/device/mi3gw/fragment/n2;
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/device/mi3gw/fragment/n2;

    invoke-direct {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/n2;-><init>()V

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

    const-string p2, "uuid"

    .line 2
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->n3(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->U3()V

    :goto_0
    return-void
.end method
