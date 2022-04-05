.class final Lcom/amap/api/col/l3/hh$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/hh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/hh$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/hh$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/amap/api/col/l3/hh$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/amap/api/col/l3/gz;

    iget-object v1, p0, Lcom/amap/api/col/l3/hh$1;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/l3/hj;->a()Lcom/amap/api/col/l3/hj;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3/gz;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/gy;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/hh$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/amap/api/col/l3/hk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amap/api/col/l3/hk;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/l3/gz;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3/hk;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/hk;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/hh$1;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/amap/api/col/l3/hk;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/l3/hh$1;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/amap/api/col/l3/hh;->b(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "FileManager"

    const-string v2, "clearUnSuitableV"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
