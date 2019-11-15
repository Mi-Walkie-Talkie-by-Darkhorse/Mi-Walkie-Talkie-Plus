.class Lcom/xiaomi/mistatistic/sdk/controller/p$4;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;->d()V
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

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$4;->a:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->isExceptionCatcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->shouldExceptionUploadImmediately()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/b$a;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/b;->c()V

    :cond_1
    return-void
.end method
