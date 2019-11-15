.class Lcom/ifengyu/intercom/ui/map/b$2;
.super Ljava/lang/Object;
.source "OsmMapOperate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/map/b;->a(Lcom/ifengyu/intercom/ui/map/MapDataProvider$MAP_TYPE;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/map/b;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/map/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->enableScaleBar()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->c(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/b;->b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/map/b;->c(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/b$2;->a:Lcom/ifengyu/intercom/ui/map/b;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/map/b;->b(Lcom/ifengyu/intercom/ui/map/b;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
