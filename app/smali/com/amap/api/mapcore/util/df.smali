.class public Lcom/amap/api/mapcore/util/df;
.super Ljava/lang/Object;
.source "StyleParser.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/df;->b:I

    const/16 v0, 0x23

    iput-char v0, p0, Lcom/amap/api/mapcore/util/df;->c:C

    iput-object p1, p0, Lcom/amap/api/mapcore/util/df;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([B)Lcom/amap/api/mapcore/util/dc;
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/amap/api/mapcore/util/dc;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/dc;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "l"

    const-string v3, "utf-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v4, p1

    array-length v5, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    rem-int v2, v1, v5

    aget-byte v6, p1, v1

    aget-byte v2, v3, v2

    xor-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v2}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->a(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-static {p1, v2, v1}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->b(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {p1, v2, v1}, Lcom/autonavi/amap/mapcore/Convert;->getString([BII)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->c(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {p1, v2, v1}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object v1

    const/16 v2, 0x3e

    const/16 v3, 0x10

    invoke-static {p1, v2, v3}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object v2

    const/16 v3, 0x4e

    add-int/lit8 v4, v4, -0x4e

    invoke-static {p1, v3, v4}, Lcom/autonavi/amap/mapcore/Convert;->getSubBytes([BII)[B

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/amap/api/mapcore/util/df;->a([B[B[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/dc;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_2
    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;II)",
            "Lcom/autonavi/ae/gmap/style/StyleElement;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/ae/gmap/style/StyleItem;

    invoke-direct {v0, p2}, Lcom/autonavi/ae/gmap/style/StyleItem;-><init>(I)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p3}, Lcom/autonavi/ae/gmap/style/StyleItem;->get(I)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/autonavi/ae/gmap/style/StyleElement;

    invoke-direct {v1}, Lcom/autonavi/ae/gmap/style/StyleElement;-><init>()V

    iput p3, v1, Lcom/autonavi/ae/gmap/style/StyleElement;->styleElementType:I

    invoke-virtual {v0, p3, v1}, Lcom/autonavi/ae/gmap/style/StyleItem;->put(ILcom/autonavi/ae/gmap/style/StyleElement;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a([B[B[B)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v2, "AES/CBC/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/mapcore/util/dg;[BZ)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/df;->a([B)Lcom/amap/api/mapcore/util/dc;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dc;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/dc;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdkTextures"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "background"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/amap/api/mapcore/util/df;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/dg;->a()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4, p3}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
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

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string v0, "roads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "subway"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "subwayline"

    :cond_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/dh;->a(Ljava/lang/String;)I

    move-result v5

    const-string v0, "visible"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "visible"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v5, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    iput v3, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "showIcon"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "textFillColor"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v5, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    iput v3, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    :cond_3
    const-string v0, "showLabel"

    invoke-virtual {p4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "textFillColor"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v5, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    iput v2, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    const-string v0, "textStrokeColor"

    invoke-static {v0}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v5, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    iput v2, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    :cond_4
    const-string v3, "color"

    const-string v4, "opacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "fillColor"

    const-string v4, "fillOpacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "strokeColor"

    const-string v4, "strokeOpacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "textFillColor"

    const-string v4, "textFillOpacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "textStrokeColor"

    const-string v4, "textStrokeOpacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "backgroundColor"

    const-string v4, "backgroundOpacity"

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz p5, :cond_1

    const-string v0, "textureName"

    invoke-direct {p0, p3, p4, v0, v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
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

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "subType"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v8

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;Z)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Lorg/json/JSONObject;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    const-string v1, "stylers"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    const-string v3, "textureName"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I

    const/16 v0, 0x1e

    if-lt p3, v0, :cond_2

    const/16 v0, 0x26

    if-gt p3, v0, :cond_2

    const/4 v0, 0x4

    invoke-direct {p0, p1, p3, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    if-ne p3, v0, :cond_0

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, p1, p3, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    iput v2, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, p4, v1}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v1

    iput v0, v1, Lcom/autonavi/ae/gmap/style/StyleElement;->textureId:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/util/Map;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/ae/gmap/style/StyleItem;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p2, p4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    :goto_0
    if-nez v0, :cond_2

    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, p1, p5, v2}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v3

    iput v0, v3, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    iput v1, v3, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F

    const/16 v3, 0x27

    if-ne p5, v3, :cond_3

    const/4 v0, 0x2

    invoke-direct {p0, p1, p5, v0}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0xc

    if-ne p5, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    :try_start_1
    invoke-direct {p0, p1, p5, v2}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;II)Lcom/autonavi/ae/gmap/style/StyleElement;

    move-result-object v2

    iput v0, v2, Lcom/autonavi/ae/gmap/style/StyleElement;->value:I

    iput v1, v2, Lcom/autonavi/ae/gmap/style/StyleElement;->opacity:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Ljava/util/Map;Lorg/json/JSONObject;[II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
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

    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    invoke-direct {p0, p1, p2, v1, p4}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;[B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
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

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "featureType"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "background"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v4, "stylers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/df;->a(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    iput v3, p0, Lcom/amap/api/mapcore/util/df;->b:I

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_2
    :goto_2
    return v0

    :cond_3
    invoke-static {v4}, Lcom/amap/api/mapcore/util/de;->a(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v5, v4

    if-eqz v5, :cond_0

    const-string v5, "elementType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/amap/api/mapcore/util/dd;->a(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;Lorg/json/JSONObject;[II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/df;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;Z)Lcom/amap/api/mapcore/util/dg;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/df;->b(Ljava/lang/String;Z)Lcom/amap/api/mapcore/util/dg;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BZ)Lcom/amap/api/mapcore/util/dg;
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/mapcore/util/df;->b([BZ)Lcom/amap/api/mapcore/util/dg;

    move-result-object v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)Lcom/amap/api/mapcore/util/dg;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/autonavi/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/amap/api/mapcore/util/df;->b([BZ)Lcom/amap/api/mapcore/util/dg;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b([BZ)Lcom/amap/api/mapcore/util/dg;
    .locals 2

    new-instance v1, Lcom/amap/api/mapcore/util/dg;

    invoke-direct {v1}, Lcom/amap/api/mapcore/util/dg;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/df;->a(Ljava/util/Map;[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1, p1, p2}, Lcom/amap/api/mapcore/util/df;->a(Lcom/amap/api/mapcore/util/dg;[BZ)V

    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/dg;->b()[Lcom/autonavi/ae/gmap/style/StyleItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
