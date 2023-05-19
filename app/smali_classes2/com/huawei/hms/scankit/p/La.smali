.class public final Lcom/huawei/hms/scankit/p/La;
.super Ljava/lang/Object;
.source "PreviewCallbackProxy.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private a:Lcom/huawei/hms/scankit/p/Aa$d;

.field private b:Lcom/huawei/hms/scankit/p/Ka;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/p/Ka;Lcom/huawei/hms/scankit/p/Aa$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/La;->b:Lcom/huawei/hms/scankit/p/Ka;

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/La;->b:Lcom/huawei/hms/scankit/p/Ka;

    .line 2
    iget-object p2, p2, Lcom/huawei/hms/scankit/p/Ka;->b:Landroid/os/Handler;

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    invoke-interface {p2, p1}, Lcom/huawei/hms/scankit/p/Aa$d;->a([B)V

    return-void

    :cond_0
    const v0, 0x7f0b0005

    const-string v1, "MLKitCamera"

    .line 4
    invoke-static {p2, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/La;->a:Lcom/huawei/hms/scankit/p/Aa$d;

    invoke-interface {v0, p1}, Lcom/huawei/hms/scankit/p/Aa$d;->a([B)V

    const p1, 0x7f0b0006

    .line 7
    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
