.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private lensId:I

.field private maxZoom:I

.field private rect:Landroid/graphics/Rect;

.field private zoom:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->lensId:I

    .line 3
    iput v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->zoom:I

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;
    .locals 7

    .line 1
    new-instance v6, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    iget v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->lensId:I

    iget v2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->zoom:I

    iget v3, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->maxZoom:I

    iget-object v4, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->rect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;-><init>(IIILandroid/graphics/Rect;Lcom/huawei/hms/mlsdk/common/MLFrame$1;)V

    return-object v6
.end method

.method public setLensId(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->lensId:I

    return-object p0
.end method

.method public setMaxZoom(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->maxZoom:I

    return-object p0
.end method

.method public setRect(Landroid/graphics/Rect;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->rect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setZoom(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext$Creator;->zoom:I

    return-object p0
.end method
