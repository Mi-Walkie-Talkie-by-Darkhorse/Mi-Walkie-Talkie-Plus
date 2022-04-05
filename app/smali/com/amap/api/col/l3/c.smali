.class public final Lcom/amap/api/col/l3/c;
.super Ljava/lang/Object;


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "infocode"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_3

    const-string v3, "pois"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    new-instance v7, Lcom/amap/api/fence/GeoFence;

    invoke-direct {v7}, Lcom/amap/api/fence/GeoFence;-><init>()V

    new-instance v8, Lcom/amap/api/fence/PoiItem;

    invoke-direct {v8}, Lcom/amap/api/fence/PoiItem;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amap/api/fence/PoiItem;->setPoiId(Ljava/lang/String;)V

    const-string v10, "name"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amap/api/fence/PoiItem;->setPoiName(Ljava/lang/String;)V

    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amap/api/fence/PoiItem;->setPoiType(Ljava/lang/String;)V

    const-string v10, "typecode"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amap/api/fence/PoiItem;->setTypeCode(Ljava/lang/String;)V

    const-string v10, "address"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/amap/api/fence/PoiItem;->setAddress(Ljava/lang/String;)V

    const-string v10, "location"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v11, v10, v4

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/amap/api/fence/PoiItem;->setLongitude(D)V

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/amap/api/fence/PoiItem;->setLatitude(D)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/amap/api/location/DPoint;

    invoke-virtual {v8}, Lcom/amap/api/fence/PoiItem;->getLatitude()D

    move-result-wide v13

    move v15, v5

    invoke-virtual {v8}, Lcom/amap/api/fence/PoiItem;->getLongitude()D

    move-result-wide v4

    invoke-direct {v12, v13, v14, v4, v5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v10}, Lcom/amap/api/fence/GeoFence;->setPointList(Ljava/util/List;)V

    invoke-virtual {v7, v12}, Lcom/amap/api/fence/GeoFence;->setCenter(Lcom/amap/api/location/DPoint;)V

    goto :goto_1

    :cond_0
    move v15, v5

    :goto_1
    const-string v4, "tel"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/amap/api/fence/PoiItem;->setTel(Ljava/lang/String;)V

    const-string v4, "pname"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/amap/api/fence/PoiItem;->setProvince(Ljava/lang/String;)V

    const-string v4, "cityname"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/amap/api/fence/PoiItem;->setCity(Ljava/lang/String;)V

    const-string v4, "adname"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/amap/api/fence/PoiItem;->setAdname(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/amap/api/fence/GeoFence;->setPoiItem(Lcom/amap/api/fence/PoiItem;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3/c;->a()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string v4, "customId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setCustomId(Ljava/lang/String;)V

    const-string v4, "pendingIntentAction"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setPendingIntentAction(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setType(I)V

    const-string v4, "fenceRadius"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setRadius(F)V

    const-string v4, "expiration"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/amap/api/fence/GeoFence;->setExpiration(J)V

    const-string v4, "activatesAction"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/amap/api/fence/GeoFence;->setActivatesAction(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v5, v15

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_3
    move v15, v5

    move v5, v15

    goto :goto_2

    :catchall_0
    const/4 v5, 0x5

    :goto_2
    return v5
.end method

.method public static declared-synchronized a()J
    .locals 6

    const-class v0, Lcom/amap/api/col/l3/c;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3/ki;->c()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/col/l3/c;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sput-wide v1, Lcom/amap/api/col/l3/c;->a:J

    goto :goto_0

    :cond_0
    sget-wide v1, Lcom/amap/api/col/l3/c;->a:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/amap/api/col/l3/c;->a:J

    :goto_0
    sget-wide v1, Lcom/amap/api/col/l3/c;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/List;F)Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/location/DPoint;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/amap/api/location/DPoint;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    return-object v1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/location/DPoint;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/location/DPoint;

    const-wide/16 v8, 0x0

    move-wide v11, v8

    const/4 v10, 0x1

    const/4 v13, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    if-ge v10, v14, :cond_7

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/api/location/DPoint;

    invoke-virtual {v14}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v15

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v17

    sub-double v15, v15, v17

    invoke-virtual {v14}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v19

    sub-double v17, v17, v19

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v19

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v21

    sub-double v19, v19, v21

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v21

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v23

    sub-double v21, v21, v23

    mul-double v15, v15, v19

    mul-double v17, v17, v21

    add-double v15, v15, v17

    mul-double v17, v19, v19

    mul-double v23, v21, v21

    add-double v17, v17, v23

    div-double v15, v15, v17

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v17

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v23

    cmpl-double v25, v17, v23

    if-nez v25, :cond_2

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v23

    cmpl-double v25, v17, v23

    if-nez v25, :cond_2

    const/16 v17, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    :goto_1
    cmpg-double v18, v15, v8

    if-ltz v18, :cond_5

    if-eqz v17, :cond_3

    goto :goto_2

    :cond_3
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpl-double v23, v15, v17

    if-lez v23, :cond_4

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v15

    invoke-virtual {v6}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v17

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v17

    mul-double v19, v19, v15

    add-double v17, v17, v19

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v19

    mul-double v15, v15, v21

    add-double v15, v19, v15

    move-wide/from16 v8, v17

    move-wide/from16 v26, v15

    move-object/from16 v16, v5

    move-wide/from16 v4, v26

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v15

    invoke-virtual {v5}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v17

    :goto_3
    move-wide v8, v15

    move-object/from16 v16, v5

    move-wide/from16 v4, v17

    :goto_4
    new-instance v15, Lcom/amap/api/location/DPoint;

    move-wide/from16 v21, v8

    invoke-virtual {v14}, Lcom/amap/api/location/DPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v14}, Lcom/amap/api/location/DPoint;->getLongitude()D

    move-result-wide v0

    invoke-direct {v15, v7, v8, v0, v1}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    new-instance v0, Lcom/amap/api/location/DPoint;

    move-wide/from16 v7, v21

    invoke-direct {v0, v4, v5, v7, v8}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-static {v15, v0}, Lcom/amap/api/col/l3/ki;->a(Lcom/amap/api/location/DPoint;Lcom/amap/api/location/DPoint;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v4, v0, v11

    if-lez v4, :cond_6

    move-wide v11, v0

    move v13, v10

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_7
    move-object/from16 v16, v5

    float-to-double v0, v2

    cmpg-double v4, v11, v0

    if-gez v4, :cond_8

    move-object/from16 v5, v16

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_8
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v1, p1

    const/4 v4, 0x0

    invoke-interface {v1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object/from16 v4, p0

    invoke-direct {v4, v0, v2}, Lcom/amap/api/col/l3/c;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v13, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lcom/amap/api/col/l3/c;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v1

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v3
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3/c;->a(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)I
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;",
            "Landroid/os/Bundle;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "status"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "infocode"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    const-string v6, "customId"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v6, "pendingIntentAction"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "fenceRadius"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    const-string v8, "expiration"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v8, "activatesAction"

    invoke-virtual {v1, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-wide/from16 v32, v11

    move-object v11, v6

    move v6, v7

    move-wide/from16 v7, v32

    goto :goto_0

    :cond_0
    move-object v11, v9

    const/4 v1, 0x0

    :goto_0
    if-ne v3, v10, :cond_8

    const-string v3, "districts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/amap/api/fence/GeoFence;

    invoke-direct {v14}, Lcom/amap/api/fence/GeoFence;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v4, "citycode"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "adcode"

    invoke-virtual {v15, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 p3, v2

    const-string v2, "name"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v5

    const-string v5, "center"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v18, v3

    new-instance v3, Lcom/amap/api/location/DPoint;

    invoke-direct {v3}, Lcom/amap/api/location/DPoint;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, ","

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x1

    aget-object v19, v5, v16

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/amap/api/location/DPoint;->setLatitude(D)V

    const/4 v12, 0x0

    aget-object v5, v5, v12

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Lcom/amap/api/location/DPoint;->setLongitude(D)V

    invoke-virtual {v14, v3}, Lcom/amap/api/fence/GeoFence;->setCenter(Lcom/amap/api/location/DPoint;)V

    goto :goto_2

    :cond_1
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    :goto_2
    invoke-virtual {v14, v9}, Lcom/amap/api/fence/GeoFence;->setCustomId(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Lcom/amap/api/fence/GeoFence;->setPendingIntentAction(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lcom/amap/api/fence/GeoFence;->setType(I)V

    invoke-virtual {v14, v6}, Lcom/amap/api/fence/GeoFence;->setRadius(F)V

    invoke-virtual {v14, v7, v8}, Lcom/amap/api/fence/GeoFence;->setExpiration(J)V

    invoke-virtual {v14, v1}, Lcom/amap/api/fence/GeoFence;->setActivatesAction(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/col/l3/c;->a()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    const-string v5, "polyline"

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v5, :cond_6

    const-string v15, "\\|"

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v15, v5

    move/from16 v19, v1

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v12, 0x0

    const/4 v13, 0x1

    :goto_3
    if-ge v12, v15, :cond_5

    move/from16 v22, v6

    aget-object v6, v5, v12

    move-object/from16 v23, v5

    new-instance v5, Lcom/amap/api/fence/DistrictItem;

    invoke-direct {v5}, Lcom/amap/api/fence/DistrictItem;-><init>()V

    move-wide/from16 v24, v7

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v4}, Lcom/amap/api/fence/DistrictItem;->setCitycode(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/amap/api/fence/DistrictItem;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/amap/api/fence/DistrictItem;->setDistrictName(Ljava/lang/String;)V

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v26, v2

    const/4 v8, 0x0

    :goto_4
    array-length v2, v6

    if-ge v8, v2, :cond_3

    aget-object v2, v6, v8

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v27, v0

    array-length v0, v2

    move-object/from16 v28, v4

    const/4 v4, 0x1

    if-le v0, v4, :cond_2

    aget-object v0, v2, v4

    const/16 v16, 0x0

    aget-object v2, v2, v16

    new-instance v4, Lcom/amap/api/location/DPoint;

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    move-object v0, v14

    move/from16 v31, v15

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-direct {v4, v9, v10, v14, v15}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_2
    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object v0, v14

    move/from16 v31, v15

    const/16 v16, 0x0

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object v14, v0

    move-object/from16 v0, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move/from16 v15, v31

    goto :goto_4

    :cond_3
    move-object/from16 v27, v0

    move-object/from16 v28, v4

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object v0, v14

    move/from16 v31, v15

    const/16 v16, 0x0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_4

    move-object/from16 v2, p0

    :try_start_2
    invoke-direct {v2, v7, v4}, Lcom/amap/api/col/l3/c;->a(Ljava/util/List;F)Ljava/util/List;

    move-result-object v7

    goto :goto_6

    :cond_4
    move-object/from16 v2, p0

    :goto_6
    move-object/from16 v4, v21

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Lcom/amap/api/fence/DistrictItem;->setPolyline(Ljava/util/List;)V

    move-object/from16 v6, v20

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v7}, Lcom/amap/api/col/l3/a;->b(Lcom/amap/api/location/DPoint;Ljava/util/List;)F

    move-result v5

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v3, v7}, Lcom/amap/api/col/l3/a;->a(Lcom/amap/api/location/DPoint;Ljava/util/List;)F

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-int/lit8 v12, v12, 0x1

    move-object v14, v0

    move-object/from16 v21, v4

    move-object/from16 v20, v6

    move/from16 v6, v22

    move-object/from16 v5, v23

    move-wide/from16 v7, v24

    move-object/from16 v2, v26

    move-object/from16 v0, v27

    move-object/from16 v4, v28

    move-object/from16 v9, v29

    move-object/from16 v10, v30

    move/from16 v15, v31

    goto/16 :goto_3

    :cond_5
    move-object/from16 v2, p0

    move/from16 v22, v6

    move-wide/from16 v24, v7

    move-object/from16 v29, v9

    move-object v0, v14

    move-object/from16 v6, v20

    move-object/from16 v4, v21

    const/16 v16, 0x0

    invoke-virtual {v0, v13}, Lcom/amap/api/fence/GeoFence;->setMaxDis2Center(F)V

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setMinDis2Center(F)V

    invoke-virtual {v0, v6}, Lcom/amap/api/fence/GeoFence;->setDistrictItemList(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Lcom/amap/api/fence/GeoFence;->setPointList(Ljava/util/List;)V

    move-object/from16 v1, p2

    if-eqz v1, :cond_7

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :cond_6
    move-object/from16 v2, p0

    move/from16 v19, v1

    move/from16 v22, v6

    move-wide/from16 v24, v7

    move-object/from16 v29, v9

    const/16 v16, 0x0

    move-object/from16 v1, p2

    :cond_7
    :goto_7
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v2, p3

    move-object v0, v1

    move/from16 v5, v17

    move/from16 v1, v19

    move/from16 v6, v22

    move-wide/from16 v7, v24

    move-object/from16 v9, v29

    const/4 v4, 0x0

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v2, p0

    move/from16 v17, v5

    move/from16 v5, v17

    goto :goto_8

    :catchall_0
    move-object/from16 v2, p0

    :catchall_1
    const/4 v5, 0x5

    :goto_8
    return v5
.end method
