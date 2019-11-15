.class public Lcom/ifengyu/intercom/ui/map/d/a/c;
.super Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;
.source "MyLocationOverlay.java"


# instance fields
.field private a:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 3

    const v2, 0x7f020104

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/ifengyu/intercom/ui/map/d/a/c;->setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mCirclePaint:Landroid/graphics/Paint;

    const v1, -0xbb443d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    check-cast p2, Lcom/ifengyu/intercom/ui/map/d/a/d;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/ui/map/d/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->a:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    :cond_0
    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mPersonBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mDirectionArrowCenterX:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mDirectionArrowCenterY:F

    return-void
.end method

.method public stopLocationProvider()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/map/d/a/c;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->stopLocationProvider()V

    :cond_0
    return-void
.end method
