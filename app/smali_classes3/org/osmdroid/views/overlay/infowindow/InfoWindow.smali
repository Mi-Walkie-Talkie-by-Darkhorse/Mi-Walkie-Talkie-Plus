.class public abstract Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.super Ljava/lang/Object;
.source "InfoWindow.java"


# instance fields
.field protected mIsVisible:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    iput-boolean v3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static closeAllInfoWindowsOn(Lorg/osmdroid/views/MapView;)V
    .locals 2

    invoke-static {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/osmdroid/views/MapView;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/MapView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v4, v0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onClose()V

    :cond_0
    return-void
.end method

.method public getMapView()Lorg/osmdroid/views/MapView;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    return v0
.end method

.method public abstract onClose()V
.end method

.method public onDetach()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    iput-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OsmDroid"

    const-string v1, "Marked detached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public abstract onOpen(Ljava/lang/Object;)V
.end method

.method public open(Ljava/lang/Object;Lorg/osmdroid/util/GeoPoint;II)V
    .locals 7

    const/4 v1, -0x2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onOpen(Ljava/lang/Object;)V

    new-instance v0, Lorg/osmdroid/views/MapView$LayoutParams;

    const/16 v4, 0x8

    move v2, v1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lorg/osmdroid/views/MapView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "OsmDroid"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error trapped, InfoWindow.open mMapView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string v0, "null"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "ok"

    goto :goto_1

    :cond_2
    const-string v0, "ok"

    goto :goto_2
.end method
