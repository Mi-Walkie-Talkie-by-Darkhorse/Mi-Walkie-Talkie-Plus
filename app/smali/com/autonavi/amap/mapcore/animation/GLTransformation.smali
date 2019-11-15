.class public Lcom/autonavi/amap/mapcore/animation/GLTransformation;
.super Ljava/lang/Object;
.source "GLTransformation.java"


# instance fields
.field public alpha:D

.field public rotate:D

.field public scale_x:D

.field public scale_y:D

.field public x:D

.field public y:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->x:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->y:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->alpha:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_x:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->scale_y:D

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/animation/GLTransformation;->rotate:D

    return-void
.end method
