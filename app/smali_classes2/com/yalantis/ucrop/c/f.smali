.class public Lcom/yalantis/ucrop/c/f;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/c/f$c;,
        Lcom/yalantis/ucrop/c/f$b;,
        Lcom/yalantis/ucrop/c/f$a;
    }
.end annotation


# static fields
.field private static final a:[B

.field private static final b:[I


# instance fields
.field private final c:Lcom/yalantis/ucrop/c/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/yalantis/ucrop/c/f;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yalantis/ucrop/c/f;->b:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yalantis/ucrop/c/f$c;

    invoke-direct {v0, p1}, Lcom/yalantis/ucrop/c/f$c;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    return-void
.end method

.method private static a(II)I
    .locals 2

    add-int/lit8 v0, p0, 0x2

    mul-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lcom/yalantis/ucrop/c/f$a;)I
    .locals 11

    const/4 v10, 0x3

    const-string v0, "Exif\u0000\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/c/f$a;->b(I)S

    move-result v0

    const/16 v2, 0x4d4d

    if-ne v0, v2, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/c/f$a;->a(Ljava/nio/ByteOrder;)V

    add-int/lit8 v0, v1, 0x4

    invoke-virtual {p0, v0}, Lcom/yalantis/ucrop/c/f$a;->a(I)I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/yalantis/ucrop/c/f$a;->b(I)S

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_e

    invoke-static {v1, v0}, Lcom/yalantis/ucrop/c/f;->a(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/c/f$a;->b(I)S

    move-result v4

    const/16 v5, 0x112

    if-eq v4, v5, :cond_4

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v2, 0x4949

    if-ne v0, v2, :cond_2

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_2
    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown endianness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5}, Lcom/yalantis/ucrop/c/f$a;->b(I)S

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    const/16 v6, 0xc

    if-le v5, v6, :cond_6

    :cond_5
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got invalid format code = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v6}, Lcom/yalantis/ucrop/c/f$a;->a(I)I

    move-result v6

    if-gez v6, :cond_7

    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    const-string v4, "Negative tiff component count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v7, "ImageHeaderParser"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "ImageHeaderParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got tagIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tagType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " formatCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " componentCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v7, Lcom/yalantis/ucrop/c/f;->b:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    const/4 v7, 0x4

    if-le v6, v7, :cond_9

    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v3, v3, 0x8

    if-ltz v3, :cond_a

    invoke-virtual {p0}, Lcom/yalantis/ucrop/c/f$a;->a()I

    move-result v5

    if-le v3, v5, :cond_b

    :cond_a
    const-string v5, "ImageHeaderParser"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal tagValueOffset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " tagType="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    if-ltz v6, :cond_c

    add-int v5, v3, v6

    invoke-virtual {p0}, Lcom/yalantis/ucrop/c/f$a;->a()I

    move-result v6

    if-le v5, v6, :cond_d

    :cond_c
    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal number of bytes for TI tag data tagType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    invoke-virtual {p0, v3}, Lcom/yalantis/ucrop/c/f$a;->b(I)S

    move-result v0

    :goto_3
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_3
.end method

.method private a([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    invoke-interface {v1, p1, p2}, Lcom/yalantis/ucrop/c/f$b;->a([BI)I

    move-result v1

    if-eq v1, p2, :cond_1

    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read exif segment data, length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actually read: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/yalantis/ucrop/c/f;->b([BI)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/yalantis/ucrop/c/f$a;

    invoke-direct {v0, p1, p2}, Lcom/yalantis/ucrop/c/f$a;-><init>([BI)V

    invoke-static {v0}, Lcom/yalantis/ucrop/c/f;->a(Lcom/yalantis/ucrop/c/f$a;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImageHeaderParser"

    const-string v2, "Missing jpeg exif preamble"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/media/ExifInterface;IILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FNumber"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "DateTime"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DateTimeDigitized"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ExposureTime"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Flash"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "FocalLength"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "GPSAltitude"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "GPSAltitudeRef"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "GPSDateStamp"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "GPSLatitude"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "GPSLatitudeRef"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "GPSLongitude"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "GPSLongitudeRef"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "GPSProcessingMethod"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "GPSTimeStamp"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ISOSpeedRatings"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Make"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Model"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "SubSecTime"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "SubSecTimeDigitized"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SubSecTimeOriginal"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "WhiteBalance"

    aput-object v3, v1, v2

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ImageWidth"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ImageLength"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Orientation"

    const-string v1, "0"

    invoke-virtual {v2, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ImageHeaderParser"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static a(I)Z
    .locals 2

    const v1, 0xffd8

    and-int v0, p0, v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v0, -0x1

    :cond_0
    iget-object v1, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    invoke-interface {v1}, Lcom/yalantis/ucrop/c/f$b;->b()S

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown segmentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    invoke-interface {v1}, Lcom/yalantis/ucrop/c/f$b;->b()S

    move-result v2

    const/16 v1, 0xda

    if-eq v2, v1, :cond_1

    const/16 v1, 0xd9

    if-ne v2, v1, :cond_3

    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ImageHeaderParser"

    const-string v2, "Found MARKER_EOI in exif segment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    invoke-interface {v1}, Lcom/yalantis/ucrop/c/f$b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v3, 0xe1

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    int-to-long v4, v1

    invoke-interface {v3, v4, v5}, Lcom/yalantis/ucrop/c/f$b;->a(J)J

    move-result-wide v4

    int-to-long v6, v1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    const-string v3, "ImageHeaderParser"

    invoke-static {v3, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to skip enough data, type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", wanted to skip: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but actually skipped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private b([BI)Z
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/yalantis/ucrop/c/f;->a:[B

    array-length v0, v0

    if-le p2, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_2

    move v0, v1

    :goto_1
    sget-object v3, Lcom/yalantis/ucrop/c/f;->a:[B

    array-length v3, v3

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    sget-object v4, Lcom/yalantis/ucrop/c/f;->a:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_1

    :goto_2
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/yalantis/ucrop/c/f;->c:Lcom/yalantis/ucrop/c/f$b;

    invoke-interface {v1}, Lcom/yalantis/ucrop/c/f$b;->a()I

    move-result v1

    invoke-static {v1}, Lcom/yalantis/ucrop/c/f;->a(I)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ImageHeaderParser"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageHeaderParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parser doesn\'t handle magic number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/yalantis/ucrop/c/f;->b()I

    move-result v1

    if-ne v1, v0, :cond_2

    const-string v1, "ImageHeaderParser"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ImageHeaderParser"

    const-string v2, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-array v0, v1, [B

    invoke-direct {p0, v0, v1}, Lcom/yalantis/ucrop/c/f;->a([BI)I

    move-result v0

    goto :goto_0
.end method
