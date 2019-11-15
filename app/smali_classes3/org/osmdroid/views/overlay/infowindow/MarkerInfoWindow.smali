.class public Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.source "MarkerInfoWindow.java"


# instance fields
.field protected mMarkerRef:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    return-void
.end method


# virtual methods
.method public getMarkerReference()Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    invoke-super {p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onClose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onOpen(Ljava/lang/Object;)V

    check-cast p1, Lorg/osmdroid/views/overlay/Marker;

    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "OsmDroid"

    const-string v1, "Error trapped, MarkerInfoWindow.open, mView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    sget v1, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mImageId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Marker;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
