.class public Lcom/autonavi/ae/gmap/scenic/Label3rd;
.super Ljava/lang/Object;
.source "Label3rd.java"


# instance fields
.field public mAnchor:I

.field public mLabelName:Ljava/lang/String;

.field public mMainkey:I

.field public mMaxzoom:I

.field public mMinzoom:I

.field public mP20X:I

.field public mP20Y:I

.field public mPoiId:Ljava/lang/String;

.field public mRank:F

.field public mSubkey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x52

    iput v0, p0, Lcom/autonavi/ae/gmap/scenic/Label3rd;->mSubkey:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/autonavi/ae/gmap/scenic/Label3rd;->mMaxzoom:I

    return-void
.end method
