.class public Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;
.super Ljava/lang/Object;
.source "RemoteDataPackingJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;,
        Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:J

.field private c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lorg/json/JSONObject;

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    return-void
.end method

.method public constructor <init>(JLcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    return-void
.end method

.method private a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_session"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_session"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_session"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v6, "start"

    invoke-virtual {v1, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v4, "end"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "env"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_pv"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "category"

    const-string v4, "mistat_pv"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "values"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_pv"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, ","

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->f:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "index"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    return-void

    :cond_3
    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2
.end method

.method private c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v1, "mistat_pt"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    const-string v3, "mistat_pt"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    const-string v2, "mistat_pt"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1
.end method

.method private d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "category"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    :goto_0
    const-string v0, "event"

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "value"

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->e:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "mistat_extra"

    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "values"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "key"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "count"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "numeric"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :goto_2
    iget-object v2, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "params"

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->extra:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string v2, "values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    :cond_5
    const-string v2, "value"

    iget-object v3, p1, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    new-instance v6, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v6}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/f;->b()V

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(J)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_7

    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    const-string v6, "Packing, get %d events from local DB"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    move/from16 v16, v6

    move-wide v6, v4

    move-wide v4, v2

    move/from16 v3, v16

    :goto_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Packing: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    cmp-long v11, v6, v12

    if-nez v11, :cond_0

    iget-wide v6, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    :cond_0
    iget-wide v4, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    iget-wide v14, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b:J

    cmp-long v11, v12, v14

    if-lez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    if-eqz v11, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b()V

    iget-wide v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->h:J

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    if-nez v11, :cond_2

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v12, "endTS"

    iget-wide v14, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v13, "content"

    invoke-virtual {v12, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    const-string v11, "mistat_session"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->g:Lorg/json/JSONObject;

    const-string v12, "startTS"

    iget-wide v14, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    invoke-virtual {v11, v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_0

    :cond_3
    const-string v11, "mistat_pv"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->b(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-wide/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v6, v16

    :goto_2
    const-string v3, "packing exception:"

    invoke-static {v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide/from16 v16, v4

    move-object v5, v8

    move-wide/from16 v8, v16

    :goto_3
    new-instance v3, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;Lorg/json/JSONArray;JJI)V

    return-object v3

    :cond_4
    :try_start_2
    const-string v11, "mistat_pt"

    iget-object v12, v2, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->d(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Packing complete, total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records were packed and to be uploaded"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-wide v2, v4

    move-wide v4, v6

    move-object v6, v8

    :goto_4
    move-wide v8, v4

    move-object v5, v6

    move-wide v6, v2

    goto :goto_3

    :cond_7
    :try_start_3
    const-string v6, "No data available to be packed"

    invoke-static {v6}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v6, 0x0

    goto :goto_4

    :catch_1
    move-exception v6

    move-object/from16 v16, v6

    move-wide v6, v2

    move-object/from16 v2, v16

    goto :goto_2
.end method

.method public a()V
    .locals 12

    const-wide/16 v10, 0x0

    const/16 v9, 0x1f4

    const/4 v8, 0x0

    const-wide v0, 0x7fffffffffffffffL

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a(J)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJI)V

    :goto_0
    iget v0, v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    if-lt v0, v9, :cond_2

    const-string v0, "Packing %d events over MAX_PACKING_EVENT %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/controller/l;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a()V

    sget v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v1, ""

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v2

    invoke-static {v7}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->c(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;)J

    move-result-wide v4

    iget v6, v7, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$b;->a:I

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "remote data packing job execute exception:"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->c:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;

    const-string v1, ""

    move-wide v2, v10

    move-wide v4, v10

    move v6, v8

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b$a;->a(Ljava/lang/String;JJI)V

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v0, "Packing, exceeded MAX_UPLOAD_TIMES 50"

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    sput v0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/b;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
