.class public final Lcom/shanlitech/et/core/c/o;
.super Ljava/lang/Object;
.source "PocLocationManager.java"


# static fields
.field private static final c:Ljava/lang/String; = "o"

.field private static final d:Lcom/shanlitech/et/core/c/o;


# instance fields
.field private a:Lcom/shanlitech/et/model/Group;

.field private b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/shanlitech/et/model/SLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/o;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/o;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/o;->d:Lcom/shanlitech/et/core/c/o;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static a()Lcom/shanlitech/et/core/c/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/o;->d:Lcom/shanlitech/et/core/c/o;

    return-object v0
.end method


# virtual methods
.method public b(JZLcom/shanlitech/et/model/SLocation;Z)V
    .locals 7

    if-eqz p4, :cond_0

    .line 1
    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/shanlitech/et/model/SLocation;->setTime(J)V

    .line 2
    :cond_0
    sget-object v0, Lcom/shanlitech/et/core/c/o;->c:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shanlitech/et/core/c/e;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const-string v6, "onNotifyChanged: myuid=[%s] sender=[%s] realtime=[%s] shareOpen=[%s] location=[%s]"

    .line 5
    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    if-eqz p4, :cond_2

    .line 6
    invoke-static {}, Lcom/shanlitech/et/core/c/l;->z()Lcom/shanlitech/et/core/c/l;

    move-result-object p3

    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getGid()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/shanlitech/et/core/c/l;->B(J)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p1, "onNotifyChanged: \u4e0d\u662f\u5f53\u524d\u6240\u5728\u7ec4\u7684\u6d88\u606f\uff0c\u5ffd\u7565"

    .line 7
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object p3, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNotifyChanged: \u6709\u4f4d\u7f6e\u6d88\u606f share.count="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/notice/event/LocationEvent;

    sget-object p3, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_LOCATION:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-direct {p2, p3, p4}, Lcom/shanlitech/et/notice/event/LocationEvent;-><init>(Lcom/shanlitech/et/notice/event/LocationEvent$Type;Lcom/shanlitech/et/model/SLocation;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    const-string p3, "onNotifyChanged: \u6ca1\u4f4d\u7f6e\u6d88\u606f"

    .line 11
    invoke-static {v0, p3}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p3

    new-instance p4, Lcom/shanlitech/et/notice/event/LocationEvent;

    sget-object p5, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_STARTED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-direct {p4, p5, p1, p2}, Lcom/shanlitech/et/notice/event/LocationEvent;-><init>(Lcom/shanlitech/et/notice/event/LocationEvent$Type;J)V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p3, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    new-array p3, v5, [Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v3

    iget-object p4, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p4}, Landroid/util/LongSparseArray;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v4

    const-string p4, "onNotifyChanged: sender[%s] leave locationShare...count=[%s]"

    .line 15
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->c()Lorg/greenrobot/eventbus/c;

    move-result-object p3

    new-instance p4, Lcom/shanlitech/et/notice/event/LocationEvent;

    sget-object p5, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_STOPED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-direct {p4, p5, p1, p2}, Lcom/shanlitech/et/notice/event/LocationEvent;-><init>(Lcom/shanlitech/et/notice/event/LocationEvent$Type;J)V

    invoke-virtual {p3, p4}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)V

    .line 17
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onNotifyChanged: sharelocation.account.size="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    if-eqz p4, :cond_8

    .line 18
    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getGid()J

    move-result-wide p1

    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-lez p3, :cond_7

    .line 19
    :try_start_0
    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getUid()J

    move-result-wide p1

    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object p3

    invoke-virtual {p3}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v0

    cmp-long p3, p1, v0

    if-nez p3, :cond_6

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string p3, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p2, p3}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    const-string p3, "msgType"

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "body"

    .line 24
    invoke-virtual {p2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "msgTime"

    .line 25
    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "sender"

    .line 26
    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getUid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "receiver"

    .line 27
    invoke-virtual {p4}, Lcom/shanlitech/et/model/SLocation;->getGid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "receiverType"

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p5, "&"

    if-eqz p3, :cond_5

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    invoke-virtual {p2, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 33
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-virtual {p1, p5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    :cond_6
    :goto_2
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/shanlitech/et/core/c/e;->c(Lcom/shanlitech/et/model/SLocation;)V

    goto :goto_3

    :cond_7
    const-string p1, "onNotifyChanged: break by <slocation.getGid()> is 0."

    .line 38
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string p1, "onNotifyChanged: break by <single.slocation> is null..."

    .line 39
    invoke-static {v0, p1}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_3
    sget-object p1, Lcom/shanlitech/et/core/c/o;->c:Ljava/lang/String;

    const-string p2, "onNotifyChanged: end."

    invoke-static {p1, p2}, Lcom/shanlitech/et/c/i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shanlitech/et/core/c/o;->a:Lcom/shanlitech/et/model/Group;

    return-void
.end method

.method public varargs d([Lcom/shanlitech/et/model/User;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/o;->a:Lcom/shanlitech/et/model/Group;

    if-eqz v0, :cond_1

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->online()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/shanlitech/et/core/c/o;->b:Landroid/util/LongSparseArray;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/shanlitech/et/model/User;->getUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
