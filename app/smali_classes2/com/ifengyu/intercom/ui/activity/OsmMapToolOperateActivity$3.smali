.class Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;
.super Ljava/lang/Object;
.source "OsmMapToolOperateActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->disableScaleBar()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->enableScaleBar()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/osmdroid/views/overlay/ScaleBarOverlay;->setAlignBottom(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    iget-object v0, v0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->mapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity$3;->a:Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;->t(Lcom/ifengyu/intercom/ui/activity/OsmMapToolOperateActivity;)Lorg/osmdroid/views/overlay/ScaleBarOverlay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
