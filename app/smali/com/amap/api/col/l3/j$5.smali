.class final Lcom/amap/api/col/l3/j$5;
.super Lcom/amap/api/col/l3/j$a;
.source "AMapDelegateImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$5;->a:Lcom/amap/api/col/l3/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j$a;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/amap/api/col/l3/j$a;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3/j$5;->a:Lcom/amap/api/col/l3/j;

    iget-boolean v1, p0, Lcom/amap/api/col/l3/j$a;->c:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/j;->setIndoorEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
