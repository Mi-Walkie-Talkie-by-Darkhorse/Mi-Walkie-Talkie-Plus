.class final Lcom/amap/api/col/sl/ea$2;
.super Ljava/lang/Object;
.source "OfflineLocManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/ea;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/ea;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    sget-object v2, Lcom/amap/api/col/sl/ck;->i:Ljava/lang/String;

    sget v3, Lcom/amap/api/col/sl/ea;->a:I

    const/high16 v4, 0x200000

    const-string v5, "6"

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    const v0, 0xdbba00

    iput v0, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    if-nez v0, :cond_0

    new-instance v5, Lcom/amap/api/col/sl/cc;

    new-instance v0, Lcom/amap/api/col/sl/ce;

    new-instance v2, Lcom/amap/api/col/sl/cg;

    invoke-direct {v2}, Lcom/amap/api/col/sl/cg;-><init>()V

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/ce;-><init>(Lcom/amap/api/col/sl/cd;)V

    invoke-direct {v5, v0}, Lcom/amap/api/col/sl/cc;-><init>(Lcom/amap/api/col/sl/cd;)V

    new-instance v0, Lcom/amap/api/col/sl/eh;

    new-instance v2, Lcom/amap/api/col/sl/eg;

    iget-object v3, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/sl/el;

    invoke-direct {v4}, Lcom/amap/api/col/sl/el;-><init>()V

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0xa

    invoke-static {v7}, Lcom/amap/api/col/sl/ch;->a(I)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bp;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bu;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bu;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bu;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {}, Lcom/amap/api/col/sl/bu;->a()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    sget-object v9, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bu;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0xa

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bp;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget-object v9, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/amap/api/col/sl/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/col/sl/eg;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/ek;Lcom/amap/api/col/sl/cd;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/eh;-><init>(Lcom/amap/api/col/sl/ek;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    const-string v2, "f.log"

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ck;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/eo;

    iget v2, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v3, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    new-instance v4, Lcom/amap/api/col/sl/eq;

    iget-object v5, p0, Lcom/amap/api/col/sl/ea$2;->a:Landroid/content/Context;

    sget-boolean v6, Lcom/amap/api/col/sl/ea;->b:Z

    invoke-direct {v4, v5, v6}, Lcom/amap/api/col/sl/eq;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/api/col/sl/eo;-><init>(ILjava/lang/String;Lcom/amap/api/col/sl/ep;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    :cond_2
    invoke-static {v1}, Lcom/amap/api/col/sl/dx;->a(Lcom/amap/api/col/sl/dw;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ofm"

    const-string v2, "uold"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
