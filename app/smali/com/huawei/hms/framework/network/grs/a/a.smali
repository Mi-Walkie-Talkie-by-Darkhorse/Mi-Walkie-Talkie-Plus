.class public Lcom/huawei/hms/framework/network/grs/a/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String; = "a"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/huawei/hms/framework/network/grs/a/c;

.field private e:Lcom/huawei/hms/framework/network/grs/a/c;

.field private f:Lcom/huawei/hms/framework/network/grs/c/m;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/a/c;Lcom/huawei/hms/framework/network/grs/c/m;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    iput-object p2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->e:Lcom/huawei/hms/framework/network/grs/a/c;

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    iput-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->f:Lcom/huawei/hms/framework/network/grs/c/m;

    invoke-virtual {p3, p0}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/a/a;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/d/e;->a(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Lcom/huawei/hms/framework/network/grs/a/b;->a(I)V

    return-void

    :cond_0
    const-wide/32 v2, 0x493e0

    invoke-static {v0, v2, v3}, Lcom/huawei/hms/framework/network/grs/d/e;->a(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/huawei/hms/framework/network/grs/c/b/c;

    invoke-direct {v0, p1, p3}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->f:Lcom/huawei/hms/framework/network/grs/c/m;

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->e:Lcom/huawei/hms/framework/network/grs/a/c;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p4, p3}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V

    :cond_1
    invoke-virtual {p2, v1}, Lcom/huawei/hms/framework/network/grs/a/b;->a(I)V

    return-void
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    const-wide/32 v0, 0x493e0

    invoke-static {p2, v0, v1}, Lcom/huawei/hms/framework/network/grs/d/e;->a(Ljava/lang/Long;J)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/huawei/hms/framework/network/grs/c/b/c;

    invoke-direct {p2, p1, p3}, Lcom/huawei/hms/framework/network/grs/c/b/c;-><init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->f:Lcom/huawei/hms/framework/network/grs/c/m;

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->e:Lcom/huawei/hms/framework/network/grs/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0, p3}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Lcom/huawei/hms/framework/network/grs/c/b/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/c;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/huawei/hms/framework/network/grs/a/c;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    return-object v0
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/a/b;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p4}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/a/b;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {p2, v0, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->f:Lcom/huawei/hms/framework/network/grs/c/m;

    invoke-virtual {p2, p1}, Lcom/huawei/hms/framework/network/grs/c/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Lcom/huawei/hms/framework/network/grs/c/f;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/c/b/c;)V
    .locals 2

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object p1, Lcom/huawei/hms/framework/network/grs/a/a;->a:Ljava/lang/String;

    const-string p2, "update cache from server failed"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p4}, Lcom/huawei/hms/framework/network/grs/c/b/c;->d()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p4

    if-nez p4, :cond_1

    const/4 p4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p4, v0, p3}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->i()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "time"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->i()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->i()Ljava/lang/String;

    move-result-object p3

    const-string p4, "geoipCountryCode"

    invoke-virtual {p1, p4, p3}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/c/f;->a()Ljava/lang/String;

    move-result-object p2

    const-string p3, "geoipCountryCodetime"

    invoke-virtual {p1, p3, p2}, Lcom/huawei/hms/framework/network/grs/a/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()Lcom/huawei/hms/framework/network/grs/c/m;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->f:Lcom/huawei/hms/framework/network/grs/c/m;

    return-object v0
.end method

.method public b(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->d:Lcom/huawei/hms/framework/network/grs/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Lcom/huawei/hms/framework/network/grs/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    const-string v3, "\\d+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/huawei/hms/framework/network/grs/a/a;->a:Ljava/lang/String;

    const-string v6, "convert urlParamKey from String to Long catch NumberFormatException."

    invoke-static {v3, v6, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/a/a;->b:Ljava/util/Map;

    invoke-static {v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/a/a;->c:Ljava/util/Map;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2}, Lcom/huawei/hms/framework/network/grs/a/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public c()Lcom/huawei/hms/framework/network/grs/a/c;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/a/a;->e:Lcom/huawei/hms/framework/network/grs/a/c;

    return-object v0
.end method
