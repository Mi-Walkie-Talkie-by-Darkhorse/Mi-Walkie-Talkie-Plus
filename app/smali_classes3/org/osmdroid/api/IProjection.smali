.class public interface abstract Lorg/osmdroid/api/IProjection;
.super Ljava/lang/Object;
.source "IProjection.java"


# virtual methods
.method public abstract fromPixels(II)Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract getNorthEast()Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract getSouthWest()Lorg/osmdroid/api/IGeoPoint;
.end method

.method public abstract metersToEquatorPixels(F)F
.end method

.method public abstract toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
.end method
