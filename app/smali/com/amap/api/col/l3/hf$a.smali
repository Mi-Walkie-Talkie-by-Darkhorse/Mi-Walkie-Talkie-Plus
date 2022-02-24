.class final Lcom/amap/api/col/l3/hf$a;
.super Ljava/lang/Object;
.source "DexDownLoad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/hf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/hf;

.field private b:I

.field private c:Lcom/amap/api/col/l3/gz;

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/hf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/amap/api/col/l3/hf$a;->b:I

    return-void
.end method

.method constructor <init>(Lcom/amap/api/col/l3/hf;Lcom/amap/api/col/l3/gz;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/amap/api/col/l3/hf$a;->b:I

    .line 5
    iput-object p2, p0, Lcom/amap/api/col/l3/hf$a;->c:Lcom/amap/api/col/l3/gz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/amap/api/col/l3/hf$a;->b:I

    const-string v1, "dDownLoad"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->c:Lcom/amap/api/col/l3/gz;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v3, v3, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    iget-object v4, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v4, v4, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/col/l3/hf$a;->d:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v2, "processDownloadedFile()"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->c:Lcom/amap/api/col/l3/gz;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v3, v3, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    iget-object v4, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v4, v4, Lcom/amap/api/col/l3/hf;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v5, v5, Lcom/amap/api/col/l3/hf;->a:Lcom/amap/api/col/l3/hg;

    iget-object v5, v5, Lcom/amap/api/col/l3/hg;->e:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v0, v0, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v2, "onFinish2"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/hf;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Lcom/amap/api/col/l3/il;

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v3, v3, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    invoke-virtual {v3}, Lcom/amap/api/col/l3/gh;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v4, v4, Lcom/amap/api/col/l3/hf;->b:Lcom/amap/api/col/l3/gh;

    .line 10
    invoke-virtual {v4}, Lcom/amap/api/col/l3/gh;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "O008"

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/col/l3/il;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "{\"param_int_first\":0}"

    .line 11
    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3/il;->a(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    iget-object v2, v2, Lcom/amap/api/col/l3/hf;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/im;->a(Lcom/amap/api/col/l3/il;Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    invoke-static {v0}, Lcom/amap/api/col/l3/hf;->a(Lcom/amap/api/col/l3/hf;)Lcom/amap/api/col/l3/hz;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/api/col/l3/hf$a;->a:Lcom/amap/api/col/l3/hf;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/l3/hz;->a(Lcom/amap/api/col/l3/hz$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_3
    return-void

    :catchall_2
    move-exception v0

    const-string v2, "run()"

    .line 14
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
