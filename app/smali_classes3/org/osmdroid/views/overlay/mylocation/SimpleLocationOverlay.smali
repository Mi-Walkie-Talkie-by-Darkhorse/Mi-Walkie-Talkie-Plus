.class public Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleLocationOverlay.java"


# instance fields
.field protected PERSON_HOTSPOT:Landroid/graphics/Point;

.field protected PERSON_ICON:Landroid/graphics/Bitmap;

.field protected mLocation:Lorg/osmdroid/util/GeoPoint;

.field protected final mPaint:Landroid/graphics/Paint;

.field private final screenCoords:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    const/16 v1, 0x18

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    .line 5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    .line 6
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 3

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    invoke-virtual {p2, p3, v0}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 4
    iget-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->screenCoords:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0

    return-void
.end method

.method public setLocation(Lorg/osmdroid/util/GeoPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->mLocation:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;Landroid/graphics/Point;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_ICON:Landroid/graphics/Bitmap;

    .line 2
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/SimpleLocationOverlay;->PERSON_HOTSPOT:Landroid/graphics/Point;

    return-void
.end method
