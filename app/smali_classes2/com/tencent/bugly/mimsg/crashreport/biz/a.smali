.class public final Lcom/tencent/bugly/mimsg/crashreport/biz/a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/mimsg/crashreport/biz/a$c;,
        Lcom/tencent/bugly/mimsg/crashreport/biz/a$b;,
        Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->d:Z

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->d:Z

    return-void
.end method

.method private static a(Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    const-string v2, "_id"

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    const-string v2, "_tm"

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_ut"

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "_tp"

    iget v3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_pc"

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_dt"

    invoke-static {p0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcelable;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string v0, "_dt"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    sget-object v4, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/tencent/bugly/mimsg/proguard/z;->a([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    if-eqz v0, :cond_0

    iput-wide v2, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->a:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/mimsg/crashreport/biz/a;Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    iget v0, p1, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    const-string v1, "[UserInfo] There are too many user info in local: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v1

    const-string v2, "t_ui"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/mimsg/proguard/o;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-string v2, "[Database] insert %s success with ID: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "t_ui"

    aput-object v4, v3, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iput-wide v0, p1, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->a:J

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/16 v0, 0x32

    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    const-string v2, " or _id"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->a:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/o;Z)I

    move-result v0

    const-string v1, "[Database] deleted %s data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->b:J

    return-wide v0
.end method

.method private declared-synchronized c()V
    .locals 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->a()Lcom/tencent/bugly/mimsg/proguard/u;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3e9

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/mimsg/proguard/u;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x14

    if-lez v8, :cond_6

    move v3, v6

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_5

    add-int/lit8 v0, v3, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    iget-wide v10, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    iget-wide v12, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    cmp-long v0, v10, v12

    if-lez v0, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v3, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v6

    :goto_3
    if-ge v0, v8, :cond_6

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v6

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    iget-wide v8, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->f:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    iget-wide v8, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->b()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-wide v8, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x927c0

    sub-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_17

    iget v8, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    if-eq v8, v7, :cond_8

    iget v8, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    iget v0, v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    const/4 v8, 0x3

    if-ne v0, v8, :cond_17

    :cond_8
    add-int/lit8 v0, v1, 0x1

    :goto_5
    move v1, v0

    goto :goto_4

    :cond_9
    const/16 v0, 0xf

    if-le v1, v0, :cond_16

    const-string v0, "[UserInfo] Upload user info too many times in 10 min: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v8

    invoke-static {v0, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    :goto_6
    move-object v1, v2

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-static {v5}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Ljava/util/List;)V

    :cond_a
    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    const-string v0, "[UserInfo] There is no user info in local database."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    move v0, v7

    goto :goto_7

    :cond_d
    const-string v0, "[UserInfo] Upload user info(size: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->c:I

    if-ne v0, v7, :cond_e

    move v0, v7

    :goto_8
    invoke-static {v1, v0}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Ljava/util/List;I)Lcom/tencent/bugly/mimsg/proguard/ar;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "[UserInfo] Failed to create UserInfoPackage."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x2

    goto :goto_8

    :cond_f
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Lcom/tencent/bugly/mimsg/proguard/k;)[B

    move-result-object v2

    if-nez v2, :cond_10

    const-string v0, "[UserInfo] Failed to encode data."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    iget-boolean v0, v4, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-eqz v0, :cond_11

    const/16 v0, 0x348

    :goto_9
    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/tencent/bugly/mimsg/proguard/a;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/mimsg/proguard/am;

    move-result-object v2

    if-nez v2, :cond_12

    const-string v0, "[UserInfo] Request package is null."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x280

    goto :goto_9

    :cond_12
    new-instance v5, Lcom/tencent/bugly/mimsg/crashreport/biz/a$1;

    invoke-direct {v5, p0, v1}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$1;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;Ljava/util/List;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v0

    iget-boolean v1, v4, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-eqz v1, :cond_14

    iget-object v3, v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    :goto_a
    iget-boolean v0, v4, Lcom/tencent/bugly/mimsg/proguard/u;->a:Z

    if-eqz v0, :cond_15

    sget-object v4, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    :goto_b
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/u;->a()Lcom/tencent/bugly/mimsg/proguard/u;

    move-result-object v0

    const/16 v1, 0x3e9

    iget v8, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->c:I

    if-ne v8, v7, :cond_13

    move v6, v7

    :cond_13
    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/mimsg/proguard/u;->a(ILcom/tencent/bugly/mimsg/proguard/am;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/t;Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    goto :goto_a

    :cond_15
    sget-object v4, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :cond_16
    move v0, v7

    goto/16 :goto_6

    :cond_17
    move v0, v1

    goto/16 :goto_5
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v3, v7

    :goto_0
    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/o;Z)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    if-nez v8, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v7

    :goto_1
    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_pc = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v8}, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a(Landroid/database/Cursor;)Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v7

    goto :goto_1

    :cond_5
    :try_start_4
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v1, " or _id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_5
    const-string v1, "[Database] unknown id."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/p;->a()Lcom/tencent/bugly/mimsg/proguard/p;

    move-result-object v0

    const-string v1, "t_ui"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/mimsg/proguard/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/mimsg/proguard/o;Z)I

    move-result v0

    const-string v1, "[Database] deleted %s error data %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "t_ui"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_8
    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v6

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v8, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_3
.end method

.method public final a()V
    .locals 6

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/z;->b()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->b:J

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/biz/a$b;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$b;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V

    iget-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(IZJ)V
    .locals 6

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    if-nez v2, :cond_0

    if-eq p1, v0, :cond_0

    if-eq p1, v3, :cond_0

    const-string v0, "UserInfo is disable"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    iget v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->c:I

    :cond_2
    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;

    invoke-direct {v3}, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;-><init>()V

    iput p1, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    iget-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->f:J

    iget-object v4, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    if-ne p1, v0, :cond_3

    :goto_1
    iput v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->o:I

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a()Z

    move-result v0

    iput-boolean v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    iget-object v0, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iget-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q:J

    iput-wide v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->g:J

    iget-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->r:J

    iput-wide v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->h:J

    iget-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->s:J

    iput-wide v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->i:J

    iget-wide v0, v2, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->t:J

    iput-wide v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {v2}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G()I

    move-result v0

    iput v0, v3, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;

    invoke-direct {v1, p0, v3, p2}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$a;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;Z)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/bugly/mimsg/proguard/w;->a()Lcom/tencent/bugly/mimsg/proguard/w;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/mimsg/crashreport/biz/a$2;-><init>(Lcom/tencent/bugly/mimsg/crashreport/biz/a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/w;->a(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
