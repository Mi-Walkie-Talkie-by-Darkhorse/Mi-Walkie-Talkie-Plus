.class Lcom/ifengyu/intercom/ui/map/c/b/b$1;
.super Ljava/lang/Object;
.source "OsmClusterOverlayManager.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/c/b/b;-><init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener",
        "<",
        "Lcom/ifengyu/intercom/ui/map/d/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/c/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/c/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/ifengyu/intercom/ui/map/d/a/f;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/d/a/f;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/d/a/f;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    check-cast v0, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    new-instance v2, Lcom/ifengyu/intercom/ui/widget/dialog/t;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->b(Lcom/ifengyu/intercom/ui/map/c/b/b;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v2, v1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/t;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/widget/dialog/t;->show()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    instance-of v1, v0, Lcom/ifengyu/intercom/ui/map/c/b/a;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    check-cast v0, Lcom/ifengyu/intercom/ui/map/c/b/a;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;Lcom/ifengyu/intercom/ui/map/c/b/a;)Lcom/ifengyu/intercom/ui/map/c/b/a;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->d(Lcom/ifengyu/intercom/ui/map/c/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->c(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lcom/ifengyu/intercom/ui/map/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/c/b/b;->a(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a:Lcom/ifengyu/intercom/ui/map/c/b/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/c/b/b;->c(Lcom/ifengyu/intercom/ui/map/c/b/b;)Lcom/ifengyu/intercom/ui/map/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/map/c/b/a;->c()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/map/c/b/b$1$1;-><init>(Lcom/ifengyu/intercom/ui/map/c/b/b$1;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public b(ILcom/ifengyu/intercom/ui/map/d/a/f;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onItemLongPress(ILjava/lang/Object;)Z
    .locals 1

    check-cast p2, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->b(ILcom/ifengyu/intercom/ui/map/d/a/f;)Z

    move-result v0

    return v0
.end method

.method public synthetic onItemSingleTapUp(ILjava/lang/Object;)Z
    .locals 1

    check-cast p2, Lcom/ifengyu/intercom/ui/map/d/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/c/b/b$1;->a(ILcom/ifengyu/intercom/ui/map/d/a/f;)Z

    move-result v0

    return v0
.end method
