.class public Lcom/huawei/hms/mlsdk/common/MLFrame;
.super Ljava/lang/Object;
.source "MLFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;,
        Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
    }
.end annotation


# static fields
.field public static final SCREEN_FIRST_QUADRANT:I = 0x0

.field public static final SCREEN_FOURTH_QUADRANT:I = 0x3

.field public static final SCREEN_SECOND_QUADRANT:I = 0x1

.field public static final SCREEN_THIRD_QUADRANT:I = 0x2


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private bytes:[B

.field private volatile frameInit:Ljava/lang/Boolean;

.field private property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

.field private recMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    .line 3
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-direct {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    .line 13
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    .line 16
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance p2, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-direct {p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    .line 8
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-direct {p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    .line 20
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bytes:[B

    return-void
.end method

.method private constructor <init>([BLcom/huawei/hms/mlsdk/common/MLFrame$Property;)V
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>(Ljava/nio/ByteBuffer;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V

    return-void
.end method

.method static synthetic access$400(Lcom/huawei/hms/mlsdk/common/MLFrame;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/huawei/hms/mlsdk/common/MLFrame;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/huawei/hms/mlsdk/common/MLFrame;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$502(Lcom/huawei/hms/mlsdk/common/MLFrame;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {v0, p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public static fromByteArray([BLcom/huawei/hms/mlsdk/common/MLFrame$Property;)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>([BLcom/huawei/hms/mlsdk/common/MLFrame$Property;)V

    return-object v0
.end method

.method public static fromByteBuffer(Ljava/nio/ByteBuffer;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>(Ljava/nio/ByteBuffer;Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)V

    return-object v0
.end method

.method public static fromFilePath(Landroid/content/Context;Landroid/net/Uri;)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    invoke-static {p0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p1, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {p1, p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to load bitmap from uri"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter uri is mandatory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter context is mandatory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromMediaImage(Landroid/media/Image;I)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    const/16 v2, 0x23

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Only JPEG and YUV_420_888 are supported"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 4
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_4

    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 7
    new-array v2, v1, [B

    .line 8
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {v2, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 10
    invoke-static {p0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 11
    new-instance v2, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {v2, p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p0, Lcom/huawei/hms/mlsdk/common/MLFrame;

    invoke-direct {p0, v2}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>([B)V

    move-object v2, p0

    goto :goto_1

    .line 13
    :cond_3
    new-instance v0, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    invoke-direct {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;-><init>()V

    const/16 v1, 0x11

    .line 14
    invoke-virtual {v0, v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setFormatType(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setWidth(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setHeight(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setQuadrant(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->create()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object p1

    .line 16
    new-instance v2, Lcom/huawei/hms/mlsdk/common/MLFrame;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->getDataFromImage(Landroid/media/Image;I)[B

    move-result-object p0

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;-><init>([BLcom/huawei/hms/mlsdk/common/MLFrame$Property;)V

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    return-object v2

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to create frame from media image."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getPreviewSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getItemIdentity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    .line 5
    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 7
    :cond_4
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 8
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private isSupportedYuvFormat(I)Z
    .locals 1

    const v0, 0x32315659

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-ltz p1, :cond_1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p1, p1

    .line 2
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid quadrant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final wrapBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapJpeg(Z)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v1

    invoke-static {v0, v1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public acquireGrayByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-static {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$000(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-static {v2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->access$100(Lcom/huawei/hms/mlsdk/common/MLFrame$Property;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->nv21ToGray([BII)[B

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public acquireProperty()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    return-object v0
.end method

.method public final create(II)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "[B",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->getPreviewSize()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->getPreviewSize()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float p1, p1

    int-to-float v0, v4

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v0, v5

    div-float/2addr p2, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, p2

    if-ltz v0, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapJpeg(Z)[B

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 7
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 8
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v0, 0x64

    invoke-static {p2, v0}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->bitmap2Jpeg(Landroid/graphics/Bitmap;I)[B

    move-result-object p2

    move-object v8, p2

    move p2, p1

    move-object p1, v8

    .line 9
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final declared-synchronized getFrame(ZZ)Lcom/huawei/hms/mlsdk/common/MLFrame;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-object p0

    :cond_0
    if-nez p1, :cond_5

    .line 3
    :try_start_1
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getFormatType()I

    move-result p1

    if-eqz p2, :cond_4

    const/16 p2, 0x11

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x32315659

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->buffer2Byte(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->byteToNv21([B)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 6
    :cond_3
    new-instance p1, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    invoke-direct {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;-><init>()V

    .line 7
    invoke-virtual {p1, p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setFormatType(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setWidth(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setHeight(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    move-result-object p2

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->setQuadrant(I)Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;

    .line 8
    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property$Creator;->create()Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    .line 9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-object p0

    .line 11
    :cond_4
    :goto_0
    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    monitor-exit p0

    return-object p0

    .line 13
    :cond_5
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    new-instance p1, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;

    invoke-direct {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;-><init>()V

    invoke-virtual {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->readBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->setBitmap(Landroid/graphics/Bitmap;)Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Creator;->create()Lcom/huawei/hms/mlsdk/common/MLFrame;

    move-result-object p1

    iget-object p1, p1, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    .line 15
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->frameInit:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "At least one of bytes, byteBuffer or bitmap should be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getRecMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->recMode:I

    return v0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 4
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 7
    iput-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method public readBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setRecMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->recMode:I

    return-void
.end method

.method public final wrapJpeg(Z)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bytes:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getFormatType()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lcom/huawei/hms/mlsdk/common/MLFrame;->isSupportedYuvFormat(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result p1

    if-nez p1, :cond_4

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->buffer2Byte(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    const v0, 0x32315659

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {p1}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->byteToNv21([B)[B

    move-result-object p1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v0}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {v1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->nv21ToJpeg([BII)[B

    move-result-object v0

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->property:Lcom/huawei/hms/mlsdk/common/MLFrame$Property;

    invoke-virtual {p1}, Lcom/huawei/hms/mlsdk/common/MLFrame$Property;->getQuadrant()I

    move-result p1

    if-nez p1, :cond_4

    .line 10
    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bytes:[B

    goto :goto_0

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only support NV21 or YV12"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    .line 12
    invoke-direct {p0}, Lcom/huawei/hms/mlsdk/common/MLFrame;->wrapBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/huawei/hms/ml/common/utils/ImageConvertUtils;->bitmap2Jpeg(Landroid/graphics/Bitmap;I)[B

    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/huawei/hms/mlsdk/common/MLFrame;->bytes:[B

    :cond_5
    return-object v0
.end method
