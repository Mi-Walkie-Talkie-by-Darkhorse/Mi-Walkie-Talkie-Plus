.class final Lcom/amap/api/col/sl/ec$3;
.super Ljava/lang/Object;
.source "StatisticsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/ec;->a(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/amap/api/col/sl/ec$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/sl/ec;->a()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/sl/ed;->a(Ljava/lang/ref/WeakReference;)Lcom/amap/api/col/sl/dw;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/api/col/sl/ec$3;->a:Landroid/content/Context;

    sget-object v2, Lcom/amap/api/col/sl/ck;->h:Ljava/lang/String;

    const/16 v3, 0x3e8

    const v4, 0x4b000

    const-string v5, "2"

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/sl/ed;->a(Landroid/content/Context;Lcom/amap/api/col/sl/dw;Ljava/lang/String;IILjava/lang/String;)V

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/ee;

    new-instance v2, Lcom/amap/api/col/sl/ei;

    iget-object v3, p0, Lcom/amap/api/col/sl/ec$3;->a:Landroid/content/Context;

    new-instance v4, Lcom/amap/api/col/sl/ef;

    new-instance v5, Lcom/amap/api/col/sl/ej;

    new-instance v6, Lcom/amap/api/col/sl/el;

    invoke-direct {v6}, Lcom/amap/api/col/sl/el;-><init>()V

    invoke-direct {v5, v6}, Lcom/amap/api/col/sl/ej;-><init>(Lcom/amap/api/col/sl/ek;)V

    invoke-direct {v4, v5}, Lcom/amap/api/col/sl/ef;-><init>(Lcom/amap/api/col/sl/ek;)V

    invoke-direct {v2, v3, v4}, Lcom/amap/api/col/sl/ei;-><init>(Landroid/content/Context;Lcom/amap/api/col/sl/ek;)V

    invoke-direct {v0, v2}, Lcom/amap/api/col/sl/ee;-><init>(Lcom/amap/api/col/sl/ek;)V

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->g:Lcom/amap/api/col/sl/ek;

    :cond_0
    const v0, 0x36ee80

    iput v0, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/sl/ec$3;->a:Landroid/content/Context;

    const-string v2, "c.log"

    invoke-static {v0, v2}, Lcom/amap/api/col/sl/ck;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/sl/dw;->f:Lcom/amap/api/col/sl/ep;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/sl/eo;

    iget v2, v1, Lcom/amap/api/col/sl/dw;->h:I

    iget-object v3, v1, Lcom/amap/api/col/sl/dw;->i:Ljava/lang/String;

    new-instance v4, Lcom/amap/api/col/sl/em;

    const/16 v5, 0x1e

    iget-object v6, v1, Lcom/amap/api/col/sl/dw;->a:Ljava/lang/String;

    new-instance v7, Lcom/amap/api/col/sl/eq;

    iget-object v8, p0, Lcom/amap/api/col/sl/ec$3;->a:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/amap/api/col/sl/eq;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v4, v5, v6, v7}, Lcom/amap/api/col/sl/em;-><init>(ILjava/lang/String;Lcom/amap/api/col/sl/ep;)V

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

    const-string v1, "stm"

    const-string v2, "usd"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
