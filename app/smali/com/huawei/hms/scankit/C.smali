.class public Lcom/huawei/hms/scankit/C;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Lcom/huawei/hms/scankit/p/Aa$d;


# instance fields
.field private a:Lcom/huawei/hms/scankit/m;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/scankit/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/C;->a:Lcom/huawei/hms/scankit/m;

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request frame time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan-time"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/C;->a:Lcom/huawei/hms/scankit/m;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/m;->a()Landroid/os/Handler;

    move-result-object v0

    .line 3
    sget v1, Lcom/huawei/hms/scankit/R$id;->scankit_decode:I

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
