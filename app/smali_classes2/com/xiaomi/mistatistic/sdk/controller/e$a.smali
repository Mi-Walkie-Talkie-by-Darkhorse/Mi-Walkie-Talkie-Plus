.class Lcom/xiaomi/mistatistic/sdk/controller/e$a;
.super Ljava/lang/Object;
.source "DeviceIdHolder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string v1, "device_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string v1, "device_id"

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DeviceIdHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "persisted deviceId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
