.class public final Lcom/amap/api/col/l3/ed;
.super Ljava/lang/Object;
.source "NinePatchTool.java"


# direct methods
.method private static a([BI)I
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 29
    aget-byte v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    .line 30
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 31
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    .line 32
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0xff

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/amap/api/col/l3/eh;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v12, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v13, v4, -0x2

    new-array v14, v13, [I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v1, v9

    move-object v2, v14

    move v7, v13

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    aget v1, v14, v12

    const/high16 v15, -0x1000000

    if-ne v1, v15, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v13, -0x1

    aget v2, v14, v2

    if-ne v2, v15, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-ge v3, v13, :cond_4

    aget v6, v14, v3

    if-eq v4, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11, v3}, Lcom/amap/api/col/l3/ed;->a(Ljava/io/OutputStream;I)V

    aget v4, v14, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11, v13}, Lcom/amap/api/col/l3/ed;->a(Ljava/io/OutputStream;I)V

    :cond_5
    move v13, v5

    add-int/lit8 v3, v13, 0x1

    if-eqz v1, :cond_6

    add-int/lit8 v3, v3, -0x1

    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v3, v3, -0x1

    :cond_7
    move v14, v3

    const/16 v16, 0x2

    add-int/lit8 v10, v10, -0x2

    new-array v7, v10, [I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v17, 0x1

    move-object v1, v9

    move-object v2, v7

    move-object/from16 v18, v7

    move/from16 v7, v17

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    aget v1, v18, v12

    if-ne v1, v15, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    add-int/lit8 v1, v10, -0x1

    aget v1, v18, v1

    if-ne v1, v15, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_6
    if-ge v2, v10, :cond_b

    aget v5, v18, v2

    if-eq v3, v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v2}, Lcom/amap/api/col/l3/ed;->a(Ljava/io/OutputStream;I)V

    aget v3, v18, v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    if-eqz v1, :cond_c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v11, v10}, Lcom/amap/api/col/l3/ed;->a(Ljava/io/OutputStream;I)V

    :cond_c
    add-int/lit8 v2, v4, 0x1

    if-eqz v8, :cond_d

    add-int/lit8 v2, v2, -0x1

    :cond_d
    if-eqz v1, :cond_e

    add-int/lit8 v2, v2, -0x1

    :cond_e
    const/4 v1, 0x0

    :goto_7
    mul-int v3, v14, v2

    const/4 v5, 0x1

    if-ge v1, v3, :cond_f

    invoke-static {v11, v5}, Lcom/amap/api/col/l3/ed;->a(Ljava/io/OutputStream;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    aput-byte v5, v1, v12

    int-to-byte v2, v13

    aput-byte v2, v1, v5

    int-to-byte v2, v4

    aput-byte v2, v1, v16

    const/4 v2, 0x3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    invoke-static {v9, v1}, Lcom/amap/api/col/l3/ed;->a(Landroid/graphics/Bitmap;[B)V

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v9, v5, v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, [B

    aput-object v6, v4, v12

    const-string v6, "setNinePatchChunk"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v1, v4, v12

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mNinePatchChunk"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    move-object v8, v2

    goto :goto_9

    :cond_11
    move-object v8, v9

    :goto_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-nez v0, :cond_12

    .line 3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0

    .line 4
    :cond_12
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ed;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->left:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ed;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->right:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ed;->a([BI)I

    move-result v1

    iput v1, v10, Landroid/graphics/Rect;->top:I

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/amap/api/col/l3/ed;->a([BI)I

    move-result v0

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    .line 6
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 7
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;[B)V
    .locals 12

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v9, v0, [I

    .line 9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v9

    move v4, v0

    move v7, v0

    .line 10
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x1000000

    if-ge v2, v0, :cond_1

    .line 11
    aget v4, v9, v2

    if-ne v3, v4, :cond_0

    const/16 v4, 0xc

    .line 12
    invoke-static {p1, v4, v2}, Lcom/amap/api/col/l3/ed;->a([BII)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v0, -0x1

    :goto_2
    if-ltz v2, :cond_3

    .line 13
    aget v4, v9, v2

    if-ne v3, v4, :cond_2

    const/16 v4, 0x10

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    .line 14
    invoke-static {p1, v4, v0}, Lcom/amap/api/col/l3/ed;->a([BII)V

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 15
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v2, v0, [I

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 16
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v2

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :goto_4
    if-ge v1, v0, :cond_5

    .line 17
    aget p0, v2, v1

    if-ne v3, p0, :cond_4

    const/16 p0, 0x14

    .line 18
    invoke-static {p1, p0, v1}, Lcom/amap/api/col/l3/ed;->a([BII)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 p0, v0, -0x1

    :goto_6
    if-ltz p0, :cond_7

    .line 19
    aget v1, v2, p0

    if-ne v3, v1, :cond_6

    const/16 v1, 0x18

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x2

    .line 20
    invoke-static {p1, v1, v0}, Lcom/amap/api/col/l3/ed;->a([BII)V

    return-void

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_7
    return-void
.end method

.method private static a(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    .line 21
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 23
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 24
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static a([BII)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    shr-int/lit8 v1, p2, 0x0

    int-to-byte v1, v1

    .line 25
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 26
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 27
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 28
    aput-byte p2, p0, p1

    return-void
.end method
