.class final Lcom/xiaomi/mistatistic/sdk/b$1;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://10.99.168.145:8097/micrash"

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/b$1$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/b$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/b$1;)V

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "https://data.mistat.xiaomi.com/micrash"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error to upload the exception "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
