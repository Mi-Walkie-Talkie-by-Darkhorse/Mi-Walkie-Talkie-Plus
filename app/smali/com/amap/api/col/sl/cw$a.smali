.class final Lcom/amap/api/col/sl/cw$a;
.super Ljava/lang/Object;
.source "DexDownLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/sl/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/sl/cw;

.field private b:I

.field private c:Lcom/amap/api/col/sl/cq;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amap/api/col/sl/cw;I)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/amap/api/col/sl/cw$a;->b:I

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/sl/cw;Lcom/amap/api/col/sl/cq;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/sl/cw$a;->b:I

    iput-object p2, p0, Lcom/amap/api/col/sl/cw$a;->c:Lcom/amap/api/col/sl/cq;

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/sl/cw;Lcom/amap/api/col/sl/cq;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/sl/cw$a;->b:I

    iput-object p3, p0, Lcom/amap/api/col/sl/cw$a;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/amap/api/col/sl/cw$a;->c:Lcom/amap/api/col/sl/cq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/amap/api/col/sl/cw$a;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/cw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/amap/api/col/sl/eb;

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v1}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v2}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/col/sl/bz;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v3}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/col/sl/bz;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "O008"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/col/sl/eb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "{\"param_int_first\":0}"

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/eb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v1}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/ec;->a(Lcom/amap/api/col/sl/eb;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->c(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/dp;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/sl/dp;->a(Lcom/amap/api/col/sl/dp$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v1}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->c:Lcom/amap/api/col/sl/cq;

    iget-object v2, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v2}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v3}, Lcom/amap/api/col/sl/cw;->d(Lcom/amap/api/col/sl/cw;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v4}, Lcom/amap/api/col/sl/cw;->e(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/cx;

    move-result-object v4

    iget-object v4, v4, Lcom/amap/api/col/sl/cx;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/cq;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v1}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "onFinish2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->c:Lcom/amap/api/col/sl/cq;

    iget-object v2, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v2}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v3}, Lcom/amap/api/col/sl/cw;->d(Lcom/amap/api/col/sl/cw;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/sl/cw$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/cq;Lcom/amap/api/col/sl/bz;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v0}, Lcom/amap/api/col/sl/cw;->a(Lcom/amap/api/col/sl/cw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/sl/cw$a;->a:Lcom/amap/api/col/sl/cw;

    invoke-static {v1}, Lcom/amap/api/col/sl/cw;->b(Lcom/amap/api/col/sl/cw;)Lcom/amap/api/col/sl/bz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/sl/db;->a(Landroid/content/Context;Lcom/amap/api/col/sl/bz;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/sl/cj;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
