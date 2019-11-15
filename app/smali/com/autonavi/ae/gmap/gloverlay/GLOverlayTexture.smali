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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    iput p5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mWidth:I

    iput p6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mHeight:I

    iput p5, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResWidth:I

    iput p6, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResHeight:I

    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchor:I

    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchorXRatio:F

    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchorYRatio:F

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    iput p1, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResId:I

    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mWidth:I

    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mHeight:I

    iput p3, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResWidth:I

    iput p4, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mResHeight:I

    iput p2, p0, Lcom/autonavi/ae/gmap/gloverlay/GLOverlayTexture;->mAnchor:I

    return-void
.end method
