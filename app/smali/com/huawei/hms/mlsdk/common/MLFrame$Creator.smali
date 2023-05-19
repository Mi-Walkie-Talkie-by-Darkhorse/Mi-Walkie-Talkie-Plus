.class public Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/MLFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Creator"
.end annotation


# instance fields
.field private frame:Lcom/huawei/hms/mlsdk/common/MLFrame;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    return-void
.end method


# virtual methods
.method public create()Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-static {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->access$500(Lcom/huawei/hms/mlsdk/common/MLFrame;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-static {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->access$400(Lcom/huawei/hms/mlsdk/common/MLFrame;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create image instance, both bitmap and byteBuffer data are not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-static {v2, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->access$402(Lcom/huawei/hms/mlsdk/common/MLFrame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object p1

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$002(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    .line 6
    invoke-static {p1, v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$102(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    return-object p0
.end method

.method public setFramePropertyExt(Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$1002(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Ext;

    return-object p0
.end method

.method public setItemIdentity(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$702(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    return-object p0
.end method

.method public setQuadrant(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$902(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    return-object p0
.end method

.method public setTimestamp(J)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$802(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;J)J

    return-object p0
.end method

.method public writeByteBufferData(Ljava/nio/ByteBuffer;III)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;
    .locals 2

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int v1, p2, p3

    if-lt v0, v1, :cond_3

    const/16 v0, 0x11

    if-eq p4, v0, :cond_1

    const/16 v0, 0x10

    if-eq p4, v0, :cond_1

    const v0, 0x32315659

    if-ne p4, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Parameter formatType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not supported"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-static {v0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->access$502(Lcom/huawei/hms/mlsdk/common/MLFrame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 4
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->frame:Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1, p4}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$602(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    .line 6
    invoke-static {p1, p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$002(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    .line 7
    invoke-static {p1, p3}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$102(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;I)I

    :cond_2
    return-object p0

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not enough capacity for image data size."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameter\uff1a data is not specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
