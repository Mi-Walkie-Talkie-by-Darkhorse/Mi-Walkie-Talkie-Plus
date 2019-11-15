.class Lcom/amap/api/mapcore/util/ep$1$2;
.super Ljava/lang/Object;
.source "IndoorFloorSwitchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/ep$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/ep$1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/ep$1;II)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iput p2, p0, Lcom/amap/api/mapcore/util/ep$1$2;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/ep$1$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ep$1;->a:Lcom/amap/api/mapcore/util/ep;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/ep$1;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ep;->a(Lcom/amap/api/mapcore/util/ep;)I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/ep$1$2;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/ep;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ep$1;->a:Lcom/amap/api/mapcore/util/ep;

    iget v1, p0, Lcom/amap/api/mapcore/util/ep$1$2;->b:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/ep$1;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/ep;->c(Lcom/amap/api/mapcore/util/ep;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amap/api/mapcore/util/ep;->b:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep$1$2;->c:Lcom/amap/api/mapcore/util/ep$1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/ep$1;->a:Lcom/amap/api/mapcore/util/ep;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ep;->d(Lcom/amap/api/mapcore/util/ep;)V

    return-void
.end method
