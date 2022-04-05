.class final Lcom/amap/api/col/l3/gb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/gb;->b(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/Class;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-class v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    const-string v2, "getGetParams"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    const-string v4, "getPostParam"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v8, 0x2

    aput-object v0, v6, v8

    const/4 v9, 0x3

    aput-object v0, v6, v9

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/amap/api/col/l3/gb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/amap/api/col/l3/gb;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/amap/api/col/l3/hx;->a()Lcom/amap/api/col/l3/hx;

    new-instance v4, Lcom/amap/api/col/l3/hw;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v4, v2, v1}, Lcom/amap/api/col/l3/hw;-><init>([BLjava/util/Map;)V

    invoke-static {v4}, Lcom/amap/api/col/l3/hx;->a(Lcom/amap/api/col/l3/ic;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    const-string v4, "parseResult"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    aput-object v0, v5, v7

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3/gb$1;->a:Ljava/lang/Class;

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amap/api/col/l3/gb$1;->b:Landroid/content/Context;

    aput-object v5, v4, v3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v3, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
