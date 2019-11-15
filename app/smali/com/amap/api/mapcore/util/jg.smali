.class public final Lcom/amap/api/mapcore/util/jg;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Ljava/lang/String;

.field static b:Landroid/net/wifi/WifiManager;

.field private static c:I

.field private static d:[Ljava/lang/String;

.field private static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/text/SimpleDateFormat;

.field private static h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    sput v2, Lcom/amap/api/mapcore/util/jg;->c:I

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/jg;->e:Ljava/util/Hashtable;

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->g:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/jg;->h:[Ljava/lang/String;

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->a:Ljava/lang/String;

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static a(F)F
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    float-to-double v0, p0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static a([D)F
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-array v8, v2, [F

    aget-wide v0, p0, v9

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    goto :goto_0
.end method

.method public static a(I)I
    .locals 1

    mul-int/lit8 v0, p0, 0x2

    add-int/lit8 v0, v0, -0x71

    return v0
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getServ"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->c()I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    const-string v1, "android.provider.Settings$System"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/jg;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v1, "android.provider.Settings$Global"

    invoke-static {p0, v1}, Lcom/amap/api/mapcore/util/jg;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " :"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/amap/api/mapcore/util/fy;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(I[B)[B
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-object p1
.end method

.method public static a(J)[B
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x8

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static a([B)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fy;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "gz"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v3, v2

    const-string v1, "0"

    aput-object v1, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    move v1, v2

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    aget-char v6, v5, v1

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-gt v1, v5, :cond_8

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    :cond_4
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-nez v0, :cond_5

    const-string v0, "0"

    aput-object v0, v3, v2

    :cond_5
    aget-object v0, v3, v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    aget-object v0, v3, v4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sput-object v3, Lcom/amap/api/mapcore/util/jg;->d:[Ljava/lang/String;

    move-object v0, v3

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Utils"

    const-string v5, "getMccMnc"

    invoke-static {v0, v1, v5}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_6
    aget-object v0, v3, v2

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    aget-object v0, v3, v4

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amap/api/mapcore/util/jg;->d:[Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amap/api/mapcore/util/jg;->d:[Ljava/lang/String;

    goto :goto_3

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move v1, v4

    goto/16 :goto_0
.end method

.method public static b(D)D
    .locals 4

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, p0, v2

    double-to-long v0, v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static b()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "success"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u91cd\u8981\u53c2\u6570\u4e3a\u7a7a"

    goto :goto_0

    :pswitch_3
    const-string v0, "WIFI\u4fe1\u606f\u4e0d\u8db3"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u8bf7\u6c42\u53c2\u6570\u83b7\u53d6\u51fa\u73b0\u5f02\u5e38"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u89e3\u6790\u6570\u636e\u5f02\u5e38"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u5b9a\u4f4d\u7ed3\u679c\u9519\u8bef"

    goto :goto_0

    :pswitch_8
    const-string v0, "KEY\u9519\u8bef"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u5176\u4ed6\u9519\u8bef"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u521d\u59cb\u5316\u5f02\u5e38"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u7f3a\u5c11\u5b9a\u4f4d\u6743\u9650"

    goto :goto_0

    :pswitch_d
    const-string v0, "\u9519\u8bef\u7684\u57fa\u7ad9\u4fe1\u606f\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u63d2\u5165SIM\u5361"

    goto :goto_0

    :pswitch_e
    const-string v0, "\u7f51\u7edc\u5b9a\u4f4d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u8bbe\u5907\u662f\u5426\u63d2\u5165sim\u5361\uff0c\u662f\u5426\u5f00\u542f\u79fb\u52a8\u7f51\u7edc\u6216\u5f00\u542f\u4e86wifi\u6a21\u5757"

    goto :goto_0

    :pswitch_f
    const-string v0, "GPS \u5b9a\u4f4d\u5931\u8d25\uff0c\u7531\u4e8e\u8bbe\u5907\u5f53\u524d GPS \u72b6\u6001\u5dee,\u5efa\u8bae\u6301\u8bbe\u5907\u5230\u76f8\u5bf9\u5f00\u9614\u7684\u9732\u5929\u573a\u6240\u518d\u6b21\u5c1d\u8bd5"

    goto :goto_0

    :pswitch_10
    const-string v0, "\u5f53\u524d\u8fd4\u56de\u4f4d\u7f6e\u4e3a\u6a21\u62df\u8f6f\u4ef6\u8fd4\u56de\uff0c\u8bf7\u5173\u95ed\u6a21\u62df\u8f6f\u4ef6\uff0c\u6216\u8005\u5728option\u4e2d\u8bbe\u7f6e\u5141\u8bb8\u6a21\u62df"

    goto :goto_0

    :pswitch_11
    const-string v0, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u98de\u884c\u6a21\u5f0f\u4e0b\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u5173\u95ed\u98de\u884c\u6a21\u5f0f\u6216\u8005\u6253\u5f00WIFI\u5f00\u5173"

    goto :goto_0

    :pswitch_12
    const-string v0, "\u5b9a\u4f4d\u5931\u8d25\uff0c\u6ca1\u6709\u68c0\u67e5\u5230SIM\u5361\uff0c\u5e76\u4e14\u5173\u95ed\u4e86WIFI\u5f00\u5173\uff0c\u8bf7\u6253\u5f00WIFI\u5f00\u5173\u6216\u8005\u63d2\u5165SIM\u5361"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/amap/api/mapcore/util/jd;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/amap/api/mapcore/util/jd;->g:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/amap/api/mapcore/util/jd;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    sput-object v1, Lcom/amap/api/mapcore/util/jd;->h:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-static {p0}, Lcom/amap/api/mapcore/util/fo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    sget-object v0, Lcom/amap/api/mapcore/util/jd;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/amap/api/mapcore/util/jd;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/jd;->g:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    const-string v3, "getAppName part"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v3, "Utils"

    const-string v4, "getAppName"

    invoke-static {v1, v3, v4}, Lcom/amap/api/mapcore/util/jd;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const-string v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "GPRS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "EDGE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string v3, "UMTS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "CDMA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x5

    const-string v3, "EVDO_0"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x6

    const-string v3, "EVDO_A"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const-string v3, "1xRTT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const-string v3, "HSDPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0x9

    const-string v3, "HSUPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xa

    const-string v3, "HSPA"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xb

    const-string v3, "IDEN"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xc

    const-string v3, "EVDO_B"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xd

    const-string v3, "LTE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xe

    const-string v3, "EHRPD"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const/16 v2, 0xf

    const-string v3, "HSPAP"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_1
    sget-object v1, Lcom/amap/api/mapcore/util/jg;->f:Landroid/util/SparseArray;

    const-string v2, "UNKWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "AIRPLANE_MODE_ON"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v0, v4, v1

    new-array v0, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v0, v2

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "getInt"

    invoke-static {p1, v3, v4, v0}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public static b(I[B)[B
    .locals 2

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    array-length v0, p1

    if-ge v0, v1, :cond_1

    :cond_0
    new-array p1, v1, [B

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x8

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->a(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 3

    sget v0, Lcom/amap/api/mapcore/util/jg;->c:I

    if-lez v0, :cond_0

    sget v0, Lcom/amap/api/mapcore/util/jg;->c:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "android.os.Build$VERSION"

    :try_start_0
    const-string v2, "SDK_INT"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/je;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v2, "SDK"

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/jg;->b:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_2

    const-string v0, "wifi"

    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/jg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    sput-object v0, Lcom/amap/api/mapcore/util/jg;->b:Landroid/net/wifi/WifiManager;

    :cond_2
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/jg;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/jg;->c()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_0

    :try_start_1
    sget-object v1, Lcom/amap/api/mapcore/util/jg;->b:Landroid/net/wifi/WifiManager;

    const-string v2, "isScanAlwaysAvailable"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/jg;->b(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static f()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x8000

    return v0
.end method
