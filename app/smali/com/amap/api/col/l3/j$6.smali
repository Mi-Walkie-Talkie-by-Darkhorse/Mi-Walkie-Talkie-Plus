.class final Lcom/amap/api/col/l3/j$6;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/amap/api/col/l3/j$6;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$6;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/col/l3/j$6;->a:Lcom/amap/api/col/l3/j;

    invoke-static {v0}, Lcom/amap/api/col/l3/j;->e(Lcom/amap/api/col/l3/j;)Lcom/amap/api/col/l3/ey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/l3/ey;->h()Lcom/amap/api/col/l3/fa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/col/l3/fa;->c()V

    :cond_0
    return-void
.end method
