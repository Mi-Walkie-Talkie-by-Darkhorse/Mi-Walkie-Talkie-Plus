.class public Lcom/amap/api/maps/model/CrossOverlayOptions;
.super Ljava/lang/Object;
.source "CrossOverlayOptions.java"


# instance fields
.field a:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

.field private b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    iput-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getAttribute()Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    return-object v0
.end method

.method public getRes()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setAttribute(Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;)Lcom/amap/api/maps/model/CrossOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->a:Lcom/autonavi/ae/gmap/gloverlay/GLCrossVector$AVectorCrossAttr;

    return-object p0
.end method

.method public setRes(Landroid/graphics/Bitmap;)Lcom/amap/api/maps/model/CrossOverlayOptions;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps/model/CrossOverlayOptions;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method
