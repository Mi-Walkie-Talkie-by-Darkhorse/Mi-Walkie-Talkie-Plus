.class final Lcom/amap/api/col/sl/ck$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/sl/ck;->b(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/dy;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/cn;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/cn;->d(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/cn;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/ec;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/ck$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/sl/ea;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Lg"

    const-string v2, "proL"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cm;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
