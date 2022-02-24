.class public interface abstract Lorg/osmdroid/api/IMapView;
.super Ljava/lang/Object;
.source "IMapView.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "OsmDroid"


# virtual methods
.method public abstract getController()Lorg/osmdroid/api/IMapController;
.end method

.method public abstract getLatitudeSpan()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLatitudeSpanDouble()D
.end method

.method public abstract getLongitudeSpan()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLongitudeSpanDouble()D
.end method

.method public abstract getMapCenter()Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract getMaxZoomLevel()I
.end method

.method public abstract getProjection()Lorg/osmdroid/api/IProjection;
.end method

.method public abstract getZoomLevel()I
.end method

.method public abstract setBackgroundColor(I)V
.end method
