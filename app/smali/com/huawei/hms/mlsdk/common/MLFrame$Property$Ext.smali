.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
    }
.end annotation


# instance fields
.field private lensId:I

.field private maxZoom:I

.field private rect:Landroid/graphics/Rect;

.field private zoom:I


# direct methods
.method private constructor <init>(IIILandroid/graphics/Rect;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->lensId:I

    .line 4
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->zoom:I

    .line 5
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->lensId:I

    .line 6
    iput p2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->zoom:I

    .line 7
    iput p3, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->maxZoom:I

    .line 8
    iput-object p4, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->rect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(IIILandroid/graphics/Rect;Lcom/huawei/hms/mlsdk/common/MLFrame$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;-><init>(IIILandroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public getLensId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->lensId:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->maxZoom:I

    return v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getZoom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;->zoom:I

    return v0
.end method
