.class Lcom/xiaomi/mistatistic/sdk/controller/d$1;
.super Ljava/lang/Object;
.source "AsyncJobDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Lcom/xiaomi/mistatistic/sdk/controller/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/d;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    invoke-interface {v0}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "error while executing job."

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
