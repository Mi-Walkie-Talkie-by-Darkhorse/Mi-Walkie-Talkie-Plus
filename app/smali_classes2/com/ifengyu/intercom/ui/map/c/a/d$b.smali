.class Lcom/ifengyu/intercom/ui/map/c/a/d$b;
.super Ljava/lang/Object;
.source "ClusterOverlay.java"

# interfaces
.implements Lcom/amap/api/maps/model/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/map/c/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/a/d;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/a/d;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$b;->a:Lcom/ifengyu/intercom/ui/map/c/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/a/d$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method
