.class public Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;
.super Ljava/lang/Object;
.source "GLOverlayTexture.java"


# instance fields
.field public mAnchor:I

.field public mAnchorXRatio:F

.field public mAnchorYRatio:F

.field public mHeight:I

.field public mResHeight:I

.field public mResId:I

.field public mResWidth:I

.field public mWidth:I


# direct methods
.method public constructor <init>(IIFFII)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    .line 11
    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    .line 12
    iput p5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mWidth:I

    .line 13
    iput p6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mHeight:I

    .line 14
    iput p5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResWidth:I

    .line 15
    iput p6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResHeight:I

    .line 16
    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchor:I

    .line 17
    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchorXRatio:F

    .line 18
    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchorYRatio:F

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    .line 3
    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    .line 4
    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mWidth:I

    .line 5
    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mHeight:I

    .line 6
    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResWidth:I

    .line 7
    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResHeight:I

    .line 8
    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchor:I

    return-void
.end method
