.class Lcom/xiaomi/mistatistic/sdk/controller/d$2;
.super Ljava/lang/Object;
.source "AsyncJobDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;JLcom/xiaomi/mistatistic/sdk/controller/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/d;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$2;->a:J

    iput-object p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncJobDispatcher run a job with delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$2;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$2;->b:Lcom/xiaomi/mistatistic/sdk/controller/d$a;

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
