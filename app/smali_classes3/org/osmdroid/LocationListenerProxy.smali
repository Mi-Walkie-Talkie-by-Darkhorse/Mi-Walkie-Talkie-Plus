.class public Lorg/osmdroid/LocationListenerProxy;
.super Ljava/lang/Object;
.source "LocationListenerProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private mListener:Landroid/location/LocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1}, Landroid/location/LocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/location/LocationListener;->onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public startListening(Landroid/location/LocationListener;JF)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    iget-object v1, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v6}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "gps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    move-wide v2, p2

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    move v0, v6

    goto :goto_0

    :cond_2
    return v0
.end method

.method public stopListening()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mListener:Landroid/location/LocationListener;

    iget-object v0, p0, Lorg/osmdroid/LocationListenerProxy;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
