.class Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;
.super Lcom/ifengyu/intercom/a/b/j;
.source "MyTrackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "errno"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "data"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/ifengyu/intercom/greendao/bean/b;

    invoke-direct {v3}, Lcom/ifengyu/intercom/greendao/bean/b;-><init>()V

    const-string v4, "userId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "beginTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/String;)V

    const-string v5, "trackId"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/String;)V

    const-string v5, "trackName"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/String;)V

    const-string v5, "beginTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Integer;)V

    const-string v5, "endTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/Integer;)V

    const-string v5, "city"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/String;)V

    const-string v5, "district"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/String;)V

    const-string v5, "totalSeconds"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->d(Ljava/lang/Integer;)V

    const-string v5, "totalDistance"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/Integer;)V

    const-string v5, "speed"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Float;)V

    const-string v5, "alt"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->f(Ljava/lang/Integer;)V

    const-string v5, "maxAlt"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->g(Ljava/lang/Integer;)V

    const-string v5, "minAlt"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->h(Ljava/lang/Integer;)V

    const-string v5, "accruedClimb"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->i(Ljava/lang/Integer;)V

    const-string v5, "accruedDescent"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/Integer;)V

    const-string v5, "screenShot"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->j(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->a(Ljava/lang/Boolean;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/intercom/greendao/bean/b;->b(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insert(Ljava/lang/Object;)J

    const-string v3, "track"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_0

    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    new-instance v2, Lcom/ifengyu/intercom/greendao/bean/c;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v9, v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct/range {v2 .. v10}, Lcom/ifengyu/intercom/greendao/bean/c;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ifengyu/intercom/greendao/dao/TrackPointDao;->insert(Ljava/lang/Object;)J

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->queryBuilder()Lorg/greenrobot/greendao/c/g;

    move-result-object v3

    sget-object v4, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->A:Lorg/greenrobot/greendao/f;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/greenrobot/greendao/c/i;

    const/4 v6, 0x0

    sget-object v7, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->b:Lorg/greenrobot/greendao/f;

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->K()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/greenrobot/greendao/f;->a(Ljava/lang/Object;)Lorg/greenrobot/greendao/c/i;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/greenrobot/greendao/c/g;->a(Lorg/greenrobot/greendao/c/i;[Lorg/greenrobot/greendao/c/i;)Lorg/greenrobot/greendao/c/g;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/greenrobot/greendao/f;

    const/4 v5, 0x0

    sget-object v6, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao$Properties;->h:Lorg/greenrobot/greendao/f;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/c/g;->b([Lorg/greenrobot/greendao/f;)Lorg/greenrobot/greendao/c/g;

    move-result-object v3

    invoke-virtual {v3}, Lorg/greenrobot/greendao/c/g;->c()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/util/List;)Ljava/util/List;

    const-string v2, "right"

    :goto_1
    return-object v2

    :cond_1
    const-string v2, "error"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    const-string v2, "error"

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->k()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->e(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->f(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->h(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->h(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->b(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;I)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->k()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->g(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v1, v1, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    iget-object v2, v2, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->a(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->k()V

    goto/16 :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->c(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->c()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->k()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->d(Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;)Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/LoadMoreListView;->b()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->b:Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity;->k()V

    goto :goto_0
.end method

.method public synthetic b(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/MyTrackActivity$2;->a(Lokhttp3/Response;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
