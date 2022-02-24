.class final Lcom/amap/api/col/l3/hn$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3/hn;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/hk;Lcom/amap/api/col/l3/hg;Lcom/amap/api/col/l3/gh;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/col/l3/gz;

.field final synthetic c:Lcom/amap/api/col/l3/gh;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/hn$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/l3/hn$1;->b:Lcom/amap/api/col/l3/gz;

    iput-object p3, p0, Lcom/amap/api/col/l3/hn$1;->c:Lcom/amap/api/col/l3/gh;

    iput-object p4, p0, Lcom/amap/api/col/l3/hn$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/amap/api/col/l3/hn$1;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/hn$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/hn$1;->b:Lcom/amap/api/col/l3/gz;

    iget-object v2, p0, Lcom/amap/api/col/l3/hn$1;->c:Lcom/amap/api/col/l3/gh;

    iget-object v3, p0, Lcom/amap/api/col/l3/hn$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/amap/api/col/l3/hn$1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gz;Lcom/amap/api/col/l3/gh;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/hn$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/l3/hn$1;->c:Lcom/amap/api/col/l3/gh;

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/hh;->a(Landroid/content/Context;Lcom/amap/api/col/l3/gh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "dDownLoad"

    const-string v2, "processDownloadedFile()"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/amap/api/col/l3/gs;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
