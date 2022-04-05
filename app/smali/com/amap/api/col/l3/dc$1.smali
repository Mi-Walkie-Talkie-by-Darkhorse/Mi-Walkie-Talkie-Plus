.class final Lcom/amap/api/col/l3/dc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/col/l3/dc;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/dc$1;->b:Lcom/amap/api/col/l3/dc;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/col/l3/dc$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/dc$1;->b:Lcom/amap/api/col/l3/dc;

    invoke-static {v0}, Lcom/amap/api/col/l3/dc;->a(Lcom/amap/api/col/l3/dc;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/dc$1;->b:Lcom/amap/api/col/l3/dc;

    invoke-static {v0}, Lcom/amap/api/col/l3/dc;->b(Lcom/amap/api/col/l3/dc;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/dc$1;->b:Lcom/amap/api/col/l3/dc;

    invoke-static {v0}, Lcom/amap/api/col/l3/dc;->a(Lcom/amap/api/col/l3/dc;)Lcom/autonavi/amap/mapcore/animation/GLAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/animation/GLAnimation;->startNow()V

    iget-object v0, p0, Lcom/amap/api/col/l3/dc$1;->b:Lcom/amap/api/col/l3/dc;

    iget-boolean v1, p0, Lcom/amap/api/col/l3/dc$1;->a:Z

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/dc;->a(Lcom/amap/api/col/l3/dc;Z)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart()V
    .locals 0

    return-void
.end method
