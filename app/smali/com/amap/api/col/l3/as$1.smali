.class final Lcom/amap/api/col/l3/as$1;
.super Ljava/lang/Object;
.source "MultiPointOverlayDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/aq;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/amap/api/col/l3/as;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/as;Lcom/amap/api/col/l3/aq;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/as$1;->c:Lcom/amap/api/col/l3/as;

    iput-object p2, p0, Lcom/amap/api/col/l3/as$1;->a:Lcom/amap/api/col/l3/aq;

    iput-object p3, p0, Lcom/amap/api/col/l3/as$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/as$1;->a:Lcom/amap/api/col/l3/aq;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/aq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/as$1;->a:Lcom/amap/api/col/l3/aq;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/aq;->a()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/col/l3/as$1;->c:Lcom/amap/api/col/l3/as;

    invoke-static {v0}, Lcom/amap/api/col/l3/as;->a(Lcom/amap/api/col/l3/as;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/l3/as$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
