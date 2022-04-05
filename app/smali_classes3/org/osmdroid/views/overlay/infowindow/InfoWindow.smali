.class public abstract Lorg/osmdroid/views/overlay/infowindow/InfoWindow;
.super Ljava/lang/Object;


# instance fields
.field protected mIsVisible:Z

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static closeAllInfoWindowsOn(Lorg/osmdroid/views/MapView;)V
    .locals 1

    invoke-static {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->getOpenedInfoWindowsOn(Lorg/osmdroid/views/MapView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/views/overlay/infowindow/InfoWindow;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
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

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

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

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->close()V

    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->onOpen(Ljava/lang/Object;)V

    new-instance p1, Lorg/osmdroid/views/MapView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v4, 0x8

    move-object v0, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/views/MapView$LayoutParams;-><init>(IILorg/osmdroid/api/IGeoPoint;III)V

    iget-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mIsVisible:Z

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error trapped, InfoWindow.open mMapView: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mMapView:Lorg/osmdroid/views/MapView;

    const-string p3, "null"

    const-string p4, "ok"

    if-nez p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mView: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/osmdroid/views/overlay/infowindow/InfoWindow;->mView:Landroid/view/View;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move-object p3, p4

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OsmDroid"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
