.class Lcom/xiaomi/mistatistic/sdk/controller/p$2;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v3, 0x4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    const-string v2, "upload_policy"

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;I)I

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    const-string v2, "upload_interval"

    const-wide/32 v4, 0x2bf20

    invoke-static {v0, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;J)J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;J)J

    goto :goto_0
.end method
