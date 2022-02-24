.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;
.super Lcom/ifengyu/intercom/g/d/l;
.source "MyTrackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Lokhttp3/Response;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lokhttp3/Response;I)Ljava/lang/String;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "beginTime"

    const-string v1, "userId"

    const-string v2, "error"

    .line 10
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 11
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "errno"

    .line 12
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "data"

    .line 13
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 15
    new-instance v5, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-direct {v5}, Lcom/ifengyu/intercom/greendao/bean/b;-><init>()V

    .line 16
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/String;)V

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v5, v1}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/String;)V

    const-string v6, "trackId"

    .line 19
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/String;)V

    const-string v6, "trackName"

    .line 20
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/Integer;)V

    const-string v0, "endTime"

    .line 22
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/Integer;)V

    const-string v0, "city"

    .line 23
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/String;)V

    const-string v0, "district"

    .line 24
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/String;)V

    const-string v0, "totalSeconds"

    .line 25
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/Integer;)V

    const-string v0, "totalDistance"

    .line 26
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/Integer;)V

    const-string v0, "speed"

    .line 27
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Float;)V

    const-string v0, "alt"

    .line 28
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/Integer;)V

    const-string v0, "maxAlt"

    .line 29
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->f(Ljava/lang/Integer;)V

    const-string v0, "minAlt"

    .line 30
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/Integer;)V

    const-string v0, "accruedClimb"

    .line 31
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Integer;)V

    const-string v0, "accruedDescent"

    .line 32
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Integer;)V

    const-string v0, "screenShot"

    .line 33
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/String;)V

    .line 34
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    .line 35
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Boolean;)V

    .line 36
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    const-string v5, "track"

    .line 37
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 38
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 39
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 40
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v6

    .line 41
    new-instance v15, Lcom/ifengyu/intercom/greendao/bean/c;

    const/4 v8, 0x0

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-wide v11, 0x412e848000000000L    # 1000000.0

    mul-double v9, v9, v11

    double-to-int v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    mul-double v13, v13, v11

    double-to-int v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    move-object/from16 p2, v5

    div-long v4, v16, v18

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v7, v15

    move-object v9, v1

    move-object v5, v15

    move v15, v4

    invoke-direct/range {v7 .. v15}, Lcom/ifengyu/intercom/greendao/bean/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 42
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->e()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, p2

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_0
    move-object/from16 v1, p0

    .line 43
    :try_start_1
    iget-object v3, v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v4

    invoke-virtual {v4}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->IsSaved:Lorg/greenrobot/greendao/Property;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v6, v0, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->N()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v5, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->BeginTime:Lorg/greenrobot/greendao/Property;

    aput-object v5, v0, v8

    invoke-virtual {v4, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/util/List;)Ljava/util/List;

    const-string v0, "right"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    return-object v2

    :catch_1
    move-exception v0

    move-object/from16 v1, p0

    .line 44
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    const-string p2, "error"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    return-void

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_1

    .line 48
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 49
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->h(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->i(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$i;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 51
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result p1

    .line 53
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 54
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    .line 56
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

    .line 57
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    .line 58
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object p2, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 61
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v0, p2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V

    .line 63
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const p2, 0x7f110248

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V

    .line 9
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$b;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->j()V

    :goto_0
    return-void
.end method
