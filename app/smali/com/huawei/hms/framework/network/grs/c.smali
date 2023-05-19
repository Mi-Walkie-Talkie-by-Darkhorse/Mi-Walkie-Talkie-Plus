.class Lcom/huawei/hms/framework/network/grs/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/framework/network/grs/d;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/huawei/hms/framework/network/grs/d;


# direct methods
.method constructor <init>(Lcom/huawei/hms/framework/network/grs/d;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iput-object p4, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/c/m;

    invoke-direct {v1}, Lcom/huawei/hms/framework/network/grs/c/m;-><init>()V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Lcom/huawei/hms/framework/network/grs/c/m;)Lcom/huawei/hms/framework/network/grs/c/m;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    const-string v3, "share_pre_grs_conf_"

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    const-string v3, "share_pre_grs_services_"

    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->b(Lcom/huawei/hms/framework/network/grs/d;Lcom/huawei/hms/framework/network/grs/a/c;)Lcom/huawei/hms/framework/network/grs/a/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/a/a;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->b(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/d;->c(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/huawei/hms/framework/network/grs/a/a;-><init>(Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/c/m;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Lcom/huawei/hms/framework/network/grs/a/a;)Lcom/huawei/hms/framework/network/grs/a/a;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    new-instance v1, Lcom/huawei/hms/framework/network/grs/a;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->e(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v3}, Lcom/huawei/hms/framework/network/grs/d;->d(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/a;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v5}, Lcom/huawei/hms/framework/network/grs/d;->c(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/huawei/hms/framework/network/grs/a;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/a;Lcom/huawei/hms/framework/network/grs/c/m;Lcom/huawei/hms/framework/network/grs/a/c;)V

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/a;

    new-instance v0, Lcom/huawei/hms/framework/network/grs/b/b;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/huawei/hms/framework/network/grs/b/b;-><init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/framework/network/grs/b/b;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    new-instance v0, Lcom/huawei/hms/framework/network/grs/c/b/c;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/c/b/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan serviceSet is:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/d;->c(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v1

    const-string v2, "services"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/huawei/hms/framework/network/grs/c/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v4}, Lcom/huawei/hms/framework/network/grs/d;->c(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/d;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postList is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentServices:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->e(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/c/m;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/framework/network/grs/c/b/c;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v2}, Lcom/huawei/hms/framework/network/grs/d;->c(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V

    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->b(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/a/c;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d;->d(Lcom/huawei/hms/framework/network/grs/d;)Lcom/huawei/hms/framework/network/grs/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/framework/network/grs/a/a;->b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Lcom/huawei/hms/framework/network/grs/d;

    invoke-static {v0, v3}, Lcom/huawei/hms/framework/network/grs/d;->a(Lcom/huawei/hms/framework/network/grs/d;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/huawei/hms/framework/network/grs/c;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
