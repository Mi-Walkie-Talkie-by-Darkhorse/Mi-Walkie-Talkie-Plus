.class Lcom/xiaomi/mistatistic/sdk/controller/p$1$1;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p$1;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$1$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p$1;

    iget-object v0, v0, Lcom/xiaomi/mistatistic/sdk/controller/p$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/p;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    :cond_0
    return-void
.end method
