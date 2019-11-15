.class public final Lcom/amap/api/mapcore/util/it;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field static b:Lcom/amap/api/mapcore/util/fx;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.amap.api.maps"

    aput-object v1, v0, v3

    const-string v1, "com.amap.api.mapcore"

    aput-object v1, v0, v4

    const-string v1, "com.autonavi.amap.mapcore"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.amap.api.3dmap.admic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.amap.api.trace"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.amap.api.trace.core"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/it;->c:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.amap.api.mapcore2d"

    aput-object v1, v0, v3

    const-string v1, "com.amap.api.maps2d"

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/mapcore/util/it;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/fx;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fn;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.amap.api.maps.MapsInitializer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    :try_start_1
    const-string v1, "getVersion"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMAP_SDK_Android_Map_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/fx$a;

    const-string v3, "3dmap"

    invoke-direct {v2, v3, v0, v1}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/mapcore/util/it;->c:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/fx$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx$a;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v0, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v0, "com.amap.api.maps2d.MapsInitializer"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVersion"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/je;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AMAP_SDK_Android_2DMap_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amap/api/mapcore/util/fx$a;

    const-string v3, "2dmap"

    invoke-direct {v2, v3, v0, v1}, Lcom/amap/api/mapcore/util/fx$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/amap/api/mapcore/util/it;->a:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/fx$a;->a([Ljava/lang/String;)Lcom/amap/api/mapcore/util/fx$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/fx$a;->a()Lcom/amap/api/mapcore/util/fx;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/it;->b:Lcom/amap/api/mapcore/util/fx;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lcom/amap/api/mapcore/util/ij;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ij;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/it;->a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)Z
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v4

    cmpl-double v6, v2, v8

    if-nez v6, :cond_0

    cmpl-double v6, v4, v8

    if-eqz v6, :cond_1

    :cond_0
    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v6, v2, v6

    if-gtz v6, :cond_1

    const-wide v6, 0x4056800000000000L    # 90.0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-wide v6, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_1

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v4, v2

    if-ltz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
