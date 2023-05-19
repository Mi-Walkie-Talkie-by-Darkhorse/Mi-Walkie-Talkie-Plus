.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/fragment/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/fragment/q1;->a:Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/fragment/GroupQrForDeviceScanResultFragment;->t3(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
