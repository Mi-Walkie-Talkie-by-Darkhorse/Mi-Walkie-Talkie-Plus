.class public Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.source "MarkerInfoWindow.java"


# instance fields
.field protected mMarkerRef:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public getMarkerReference()Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onClose()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 2
    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    .line 3
    iget-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez p1, :cond_0

    const-string p1, "OsmDroid"

    const-string v0, "Error trapped, MarkerInfoWindow.open, mView is null!"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    sget v0, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->mImageId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/Marker;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
