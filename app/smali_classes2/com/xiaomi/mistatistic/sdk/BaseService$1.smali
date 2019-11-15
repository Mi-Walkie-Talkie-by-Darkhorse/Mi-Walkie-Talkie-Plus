.class Lcom/xiaomi/mistatistic/sdk/BaseService$1;
.super Lcom/xiaomi/mistatistic/sdk/a$a;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/BaseService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/BaseService;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/BaseService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->access$000(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->e()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->access$000(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/BaseService$1;->a:Lcom/xiaomi/mistatistic/sdk/BaseService;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/BaseService;->access$000(Lcom/xiaomi/mistatistic/sdk/BaseService;)Lcom/xiaomi/mistatistic/sdk/controller/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
