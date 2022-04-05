.class Lcom/ifengyu/intercom/ui/map/e/b/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/e/b/b;-><init>(Lorg/osmdroid/views/MapView;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
        "Lcom/ifengyu/intercom/ui/map/f/a/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/e/b/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/e/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/ifengyu/intercom/ui/map/f/a/f;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(ILcom/ifengyu/intercom/ui/map/f/a/f;)Z
    .locals 2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/f/a/f;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    check-cast p1, Lcom/ifengyu/intercom/bean/BeanUserLocation;

    new-instance p2, Lcom/ifengyu/intercom/ui/widget/dialog/s;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/e/b/b;->b(Lcom/ifengyu/intercom/ui/map/e/b/b;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p2, v0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/s;-><init>(Landroid/app/Activity;Lcom/ifengyu/intercom/bean/BeanUserLocation;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/ifengyu/intercom/ui/map/e/b/a;

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    check-cast p1, Lcom/ifengyu/intercom/ui/map/e/b/a;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;Lcom/ifengyu/intercom/ui/map/e/b/a;)Lcom/ifengyu/intercom/ui/map/e/b/a;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->d(Lcom/ifengyu/intercom/ui/map/e/b/b;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->c(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lcom/ifengyu/intercom/ui/map/e/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/e/b/a;->d()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/map/e/b/b;->a(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lorg/osmdroid/views/MapView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a:Lcom/ifengyu/intercom/ui/map/e/b/b;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/map/e/b/b;->c(Lcom/ifengyu/intercom/ui/map/e/b/b;)Lcom/ifengyu/intercom/ui/map/e/b/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/e/b/a;->a()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/map/e/b/b$a$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/map/e/b/b$a$a;-><init>(Lcom/ifengyu/intercom/ui/map/e/b/b$a;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onItemLongPress(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->a(ILcom/ifengyu/intercom/ui/map/f/a/f;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onItemSingleTapUp(ILjava/lang/Object;)Z
    .locals 0

    check-cast p2, Lcom/ifengyu/intercom/ui/map/f/a/f;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/map/e/b/b$a;->b(ILcom/ifengyu/intercom/ui/map/f/a/f;)Z

    move-result p1

    return p1
.end method
