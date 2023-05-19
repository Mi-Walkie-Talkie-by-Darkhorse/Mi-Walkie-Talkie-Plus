.class Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;
.super Lcom/ifengyu/library/b/e/a;
.source "GroupQrForDeviceScanResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->l3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    invoke-direct {p0}, Lcom/ifengyu/library/b/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/library/http/exception/NewApiException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    invoke-static {v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->j3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceApplyJoinGroup fail"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment$b;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    const v0, 0x7f110058

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->k3(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;I)V

    return-void
.end method
