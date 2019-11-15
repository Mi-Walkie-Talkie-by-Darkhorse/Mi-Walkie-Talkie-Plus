.class public Lcom/amap/api/mapcore/util/fj;
.super Ljava/lang/Object;
.source "CoreUtil.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.amap.api.trace"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.amap.api.trace.core"

    aput-object v2, v0, v1

    sput-object v0, Lcom/amap/api/mapcore/util/fj;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v3, v0

    :cond_1
    return v3

    :cond_2
    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    int-to-float v3, v3

    invoke-static {v0, v1}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v1, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/fg;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "infocode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "infocode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch v2, :sswitch_data_0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/fg;

    invoke-direct {v1, v0}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    :try_start_1
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237\u7b7e\u540d\u672a\u901a\u8fc7"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237key\u4e0d\u6b63\u786e\u6216\u8fc7\u671f"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_2
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u4e0d\u5b58\u5728"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bbf\u95ee\u5df2\u8d85\u51fa\u65e5\u8bbf\u95ee\u91cf"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_4
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237\u8bbf\u95ee\u8fc7\u4e8e\u9891\u7e41"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_5
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237IP\u65e0\u6548"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237\u57df\u540d\u65e0\u6548"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_7
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7528\u6237MD5\u5b89\u5168\u7801\u672a\u901a\u8fc7"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bf7\u6c42key\u4e0e\u7ed1\u5b9a\u5e73\u53f0\u4e0d\u7b26"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_9
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "IP\u8bbf\u95ee\u8d85\u9650"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_a
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u670d\u52a1\u4e0d\u652f\u6301https\u8bf7\u6c42"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u6743\u9650\u4e0d\u8db3\uff0c\u670d\u52a1\u8bf7\u6c42\u88ab\u62d2\u7edd"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_c
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u5f00\u53d1\u8005\u5220\u9664\u4e86key\uff0ckey\u88ab\u5220\u9664\u540e\u65e0\u6cd5\u6b63\u5e38\u4f7f\u7528"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_d
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bf7\u6c42\u670d\u52a1\u54cd\u5e94\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u5f15\u64ce\u8fd4\u56de\u6570\u636e\u5f02\u5e38"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_f
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u670d\u52a1\u7aef\u8bf7\u6c42\u94fe\u63a5\u8d85\u65f6"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_10
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bfb\u53d6\u670d\u52a1\u7ed3\u679c\u8d85\u65f6"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_11
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bf7\u6c42\u53c2\u6570\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_12
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u7f3a\u5c11\u5fc5\u586b\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_13
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u8bf7\u6c42\u534f\u8bae\u975e\u6cd5"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_14
    new-instance v0, Lcom/amap/api/mapcore/util/fg;

    const-string v1, "\u5176\u4ed6\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/fg;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2713 -> :sswitch_3
        0x2714 -> :sswitch_4
        0x2715 -> :sswitch_5
        0x2716 -> :sswitch_6
        0x2717 -> :sswitch_0
        0x2718 -> :sswitch_7
        0x2719 -> :sswitch_8
        0x271a -> :sswitch_9
        0x271b -> :sswitch_a
        0x271c -> :sswitch_b
        0x271d -> :sswitch_c
        0x4e20 -> :sswitch_11
        0x4e21 -> :sswitch_12
        0x4e22 -> :sswitch_13
        0x4e23 -> :sswitch_14
        0x7530 -> :sswitch_d
        0x7531 -> :sswitch_e
        0x7532 -> :sswitch_f
        0x7533 -> :sswitch_10
    .end sparse-switch
.end method
