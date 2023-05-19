.class public final synthetic Lcom/ifengyu/intercom/ui/fragment/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ifengyu/intercom/ui/base/BaseFragmentActivity$b;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

.field public final synthetic b:Lcom/ifengyu/intercom/models/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;Lcom/ifengyu/intercom/models/DeviceModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/fragment/q0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/fragment/q0;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/q0;->a:Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/q0;->b:Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/fragment/QrScanFragment;->v3(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
