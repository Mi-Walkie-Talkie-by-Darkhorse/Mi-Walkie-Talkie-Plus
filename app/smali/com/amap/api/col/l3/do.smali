.class public final Lcom/amap/api/col/l3/do;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3/do;->b:I

    const/16 v0, 0x23

    iput-char v0, p0, Lcom/amap/api/col/l3/do;->c:C

    iput-object p1, p0, Lcom/amap/api/col/l3/do;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private static a([B)Lcom/amap/api/col/l3/dl;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/amap/api/col/l3/dl;

    invoke-direct {v1}, Lcom/amap/api/col/l3/dl;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "l"

    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, p0

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    rem-int v6, v5, v3

    aget-byte v7, p0, v5

    aget-byte v6, v0, v6

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-static {p0, v4, v0}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/col/l3/dl;->a(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-static {p0, v0, v3}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/dl;->b(Ljava/lang/String;)V

    const/16 v0, 0x24

    const/16 v3, 0xa

    invoke-static {p0, v0, v3}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/col/l3/dl;->c(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const/16 v3, 0x10

    invoke-static {p0, v0, v3}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object v0

    const/16 v4, 0x3e

    invoke-static {p0, v4, v3}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object v3

    const/16 v4, 0x4e

    sub-int/2addr v2, v4

    invoke-static {p0, v4, v2}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object p0

    invoke-static {p0, v0, v3}, Lcom/amap/api/col/l3/do;->a([B[B[B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/amap/api/col/l3/dl;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method private static a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;II)",
            "Lcom/autonavi/ae/gmap/style/StyleElement;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-direct {v0, p1}, Lcom/autonavi/ae/gmap/style/StyleItem;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/autonavi/ae/gmap/style/StyleItem;->get(I)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/autonavi/ae/gmap/style/StyleElement;

    invoke-direct {p0}, Lcom/autonavi/ae/gmap/style/StyleElement;-><init>()V

    iput p2, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->styleElementType:I

    invoke-virtual {v0, p2, p0}, Lcom/autonavi/ae/gmap/style/StyleItem;->put(ILcom/autonavi/ae/gmap/style/StyleElement;)V

    :cond_1
    return-object p0
.end method

.method private static a([B[B[B)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {p2, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string p1, "AES/CBC/NoPadding"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/String;

    const-string p2, "utf-8"

    invoke-direct {p1, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "roads"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "subway"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "subwayline"

    :cond_0
    invoke-static {p1}, Lcom/amap/api/col/l3/dq;->a(Ljava/lang/String;)I

    move-result p0

    const-string p1, "visible"

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p0

    iput v2, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    return-void

    :cond_1
    const-string p1, "showIcon"

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "textFillColor"

    if-nez p1, :cond_2

    invoke-static {v1}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p1

    iput v2, p1, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    :cond_2
    const-string p1, "showLabel"

    invoke-virtual {p3, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "textStrokeColor"

    if-nez p1, :cond_3

    invoke-static {v1}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p1

    const/4 v2, 0x0

    iput v2, p1, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    invoke-static {v0}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p1

    iput v2, p1, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    :cond_3
    const-string p1, "color"

    const-string v2, "opacity"

    invoke-static {p2, p3, p1, v2, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "fillColor"

    const-string v2, "fillOpacity"

    invoke-static {p2, p3, p1, v2, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "strokeColor"

    const-string v2, "strokeOpacity"

    invoke-static {p2, p3, p1, v2, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "textFillOpacity"

    invoke-static {p2, p3, v1, p1, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "textStrokeOpacity"

    invoke-static {p2, p3, v0, p1, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string p1, "backgroundColor"

    const-string v0, "backgroundOpacity"

    invoke-static {p2, p3, p1, v0, p0}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p4, :cond_5

    const-string p1, "textureName"

    const/4 p4, 0x0

    :try_start_0
    invoke-virtual {p3, p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p3

    if-nez p3, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p0, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p0

    iput p3, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "subType"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2, p3}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {p0, v2, p1, v3, p3}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_0

    invoke-virtual {p1, p3, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v1, v0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "#"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    float-to-double v6, v1

    cmpl-double p1, v6, v4

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p4, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p2

    iput v2, p2, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    iput v1, p2, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    const/16 p2, 0x27

    const/4 p3, 0x2

    if-ne p4, p2, :cond_2

    invoke-static {p0, p4, p3}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p0

    const/4 p1, 0x0

    iput p1, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    return-void

    :cond_2
    const/16 p2, 0xc

    if-ne p4, p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    invoke-static {p0, p4, p3}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object p0

    iput v2, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    iput v1, p0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private static a(Ljava/util/Map;Lorg/json/JSONObject;[II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "[II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    aget v2, p2, v1

    invoke-static {p0, v2, p3}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v3

    const-string v4, "stylers"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "color"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    iput v5, v3, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    const-string v6, "textureName"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_0

    const/16 v3, 0x26

    if-gt v2, v3, :cond_0

    const/4 v3, 0x4

    invoke-static {p0, v2, v3}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    iput v3, v2, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    goto :goto_1

    :cond_0
    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_1

    const/4 v3, 0x2

    invoke-static {p0, v2, v3}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v2

    iput v5, v2, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Ljava/util/Map;[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;[B)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "featureType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "background"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v3, "stylers"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    iput v2, p0, Lcom/amap/api/col/l3/do;->b:I

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/amap/api/col/l3/dn;->a(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-eqz v4, :cond_1

    const-string v4, "elementType"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/amap/api/col/l3/dm;->a(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-static {p1, v2, v3, v4}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;Lorg/json/JSONObject;[II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_0
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/l3/do;->b:I

    return v0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/amap/api/col/l3/dp;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/l3/do;->a([BZ)Lcom/amap/api/col/l3/dp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a([BZ)Lcom/amap/api/col/l3/dp;
    .locals 7

    const-string v0, "background"

    new-instance v1, Lcom/amap/api/col/l3/dp;

    invoke-direct {v1}, Lcom/amap/api/col/l3/dp;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/col/l3/dp;->a()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/amap/api/col/l3/do;->a(Ljava/util/Map;[B)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/amap/api/col/l3/do;->a([B)Lcom/amap/api/col/l3/dl;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amap/api/col/l3/dl;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/dl;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdkTextures"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/amap/api/col/l3/do;->b:I

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/col/l3/dp;->a()Ljava/util/Map;

    move-result-object v6

    invoke-static {v4, v6, v5, p2}, Lcom/amap/api/col/l3/do;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-virtual {v1}, Lcom/amap/api/col/l3/dp;->b()[Lcom/autonavi/ae/gmap/style/StyleItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v1
.end method
