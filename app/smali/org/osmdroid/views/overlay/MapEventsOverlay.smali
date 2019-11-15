.class public Lorg/osmdroid/views/overlay/MapEventsOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MapEventsOverlay.java"


# instance fields
.field private mReceiver:Lorg/osmdroid/events/MapEventsReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/MapEventsOverlay;-><init>(Lorg/osmdroid/events/MapEventsReceiver;)V

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/events/MapEventsReceiver;)V
    .locals 0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    iput-object p1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 0

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v1, v0}, Lorg/osmdroid/events/MapEventsReceiver;->longPressHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->fromPixels(II)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/MapEventsOverlay;->mReceiver:Lorg/osmdroid/events/MapEventsReceiver;

    invoke-interface {v1, v0}, Lorg/osmdroid/events/MapEventsReceiver;->singleTapConfirmedHelper(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0
.end method
