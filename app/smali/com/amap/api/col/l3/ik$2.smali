.class final Lcom/amap/api/col/l3/ik$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/ik;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/ik;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/in;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/l3/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    sget-object v3, Lcom/amap/api/col/l3/gt;->h:Ljava/lang/String;

    sget v4, Lcom/amap/api/col/l3/ik;->a:I

    const/high16 v5, 0x200000

    const-string v6, "6"

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lcom/amap/api/col/l3/in;->a(Landroid/content/Context;Lcom/amap/api/col/l3/ig;Ljava/lang/String;IILjava/lang/String;)V

    const v1, 0xdbba00

    iput v1, v0, Lcom/amap/api/col/l3/ig;->h:I

    iget-object v1, v0, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    if-nez v1, :cond_0

    new-instance v5, Lcom/amap/api/col/l3/gl;

    new-instance v1, Lcom/amap/api/col/l3/gn;

    new-instance v2, Lcom/amap/api/col/l3/gp;

    invoke-direct {v2}, Lcom/amap/api/col/l3/gp;-><init>()V

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3/gn;-><init>(Lcom/amap/api/col/l3/gm;)V

    invoke-direct {v5, v1}, Lcom/amap/api/col/l3/gl;-><init>(Lcom/amap/api/col/l3/gm;)V

    new-instance v1, Lcom/amap/api/col/l3/ir;

    new-instance v8, Lcom/amap/api/col/l3/iq;

    iget-object v3, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/l3/iv;

    invoke-direct {v4}, Lcom/amap/api/col/l3/iv;-><init>()V

    new-instance v6, Ljava/lang/String;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/amap/api/col/l3/gq;->a(I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/gb;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x4

    invoke-static {}, Lcom/amap/api/col/l3/gb;->a()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x6

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x7

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/gb;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/16 v9, 0x8

    iget-object v10, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/amap/api/col/l3/fw;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/16 v9, 0x9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v10, v7, v9

    iget-object v9, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/l3/fw;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    const/16 v2, 0xb

    iget-object v9, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/l3/fw;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v2

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/l3/iq;-><init>(Landroid/content/Context;Lcom/amap/api/col/l3/iu;Lcom/amap/api/col/l3/gm;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v1, v8}, Lcom/amap/api/col/l3/ir;-><init>(Lcom/amap/api/col/l3/iu;)V

    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->g:Lcom/amap/api/col/l3/iu;

    :cond_0
    iget-object v1, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fKey"

    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    :cond_1
    new-instance v1, Lcom/amap/api/col/l3/iz;

    iget-object v2, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    iget v3, v0, Lcom/amap/api/col/l3/ig;->h:I

    iget-object v4, v0, Lcom/amap/api/col/l3/ig;->i:Ljava/lang/String;

    new-instance v5, Lcom/amap/api/col/l3/ix;

    iget-object v6, p0, Lcom/amap/api/col/l3/ik$2;->a:Landroid/content/Context;

    sget-boolean v7, Lcom/amap/api/col/l3/ik;->b:Z

    invoke-static {}, Lcom/amap/api/col/l3/ik;->b()I

    move-result v8

    mul-int/lit16 v8, v8, 0x400

    sget v9, Lcom/amap/api/col/l3/ik;->c:I

    mul-int/lit16 v9, v9, 0x400

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/col/l3/ix;-><init>(Landroid/content/Context;ZII)V

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amap/api/col/l3/iz;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/amap/api/col/l3/ja;)V

    iput-object v1, v0, Lcom/amap/api/col/l3/ig;->f:Lcom/amap/api/col/l3/ja;

    invoke-static {v0}, Lcom/amap/api/col/l3/ih;->a(Lcom/amap/api/col/l3/ig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "uold"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gv;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
