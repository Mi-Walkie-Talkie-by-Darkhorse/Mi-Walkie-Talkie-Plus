.class public Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;
.super Ljava/lang/Object;
.source "GLLineProperty.java"


# instance fields
.field public isCanCovered:Z

.field public isLineExtract:Z

.field public isRefreshMap:Z

.field public isUseCap:Z

.field public isUseColor:Z

.field public mBgColor:I

.field public mBgResId:I

.field public mCapX1:F

.field public mCapX2:F

.field public mCapY1:F

.field public mCapY2:F

.field public mFilledColor:I

.field public mFilledResId:I

.field public mGLStart:F

.field public mGeoPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

.field public mLineWidth:I

.field public mPassPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

.field public mTextureLen:F

.field public mX1:F

.field public mX2:F

.field public mY1:F

.field public mY2:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mGeoPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    .line 3
    iput-object v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLLineProperty;->mPassPoints:[Lcom/autonavi/ae/gmap/glinterface/GLGeoPoint;

    return-void
.end method
