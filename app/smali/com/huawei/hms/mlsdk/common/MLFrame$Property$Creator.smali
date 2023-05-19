.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

.field private formatType:I

.field private height:I

.field private itemIdentity:I

.field private quadrant:I

.field private timestamp:J

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
    .locals 11

    .line 1
    new-instance v10, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    iget v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->width:I

    iget v2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->height:I

    iget v3, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->quadrant:I

    iget v4, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->formatType:I

    iget v5, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->itemIdentity:I

    iget-wide v6, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->timestamp:J

    iget-object v8, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>(IIIIIJLcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;Lcom/huawei/hms/mlsdk/common/MLFrame$1;)V

    return-object v10
.end method

.method public setExt(Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->ext:Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-object p0
.end method

.method public setFormatType(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->formatType:I

    return-object p0
.end method

.method public setHeight(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->height:I

    return-object p0
.end method

.method public setItemIdentity(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->itemIdentity:I

    return-object p0
.end method

.method public setQuadrant(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->quadrant:I

    return-object p0
.end method

.method public setTimestamp(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 2

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->timestamp:J

    return-object p0
.end method

.method public setWidth(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->width:I

    return-object p0
.end method
