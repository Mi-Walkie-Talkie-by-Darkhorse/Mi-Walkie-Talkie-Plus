.class public abstract Lcom/xiaomi/push/eu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/eo;
.implements Lcom/xiaomi/push/ex;
.implements Lcom/xiaomi/push/ey;


# instance fields
.field public a:J

.field public a:Landroid/content/Context;

.field public a:Landroid/content/SharedPreferences;

.field public a:Lcom/xiaomi/push/er;

.field public a:Lcom/xiaomi/push/es;

.field public a:Ljava/lang/String;

.field public volatile a:Z

.field public b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/eu;->a:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/xiaomi/push/eu;->a:J

    iput-object p1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/push/eu;->b:Z

    iget-object p1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    const-string v1, "hb_record"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method private a()I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/push/eq;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return v1
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/ia;->bt:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/push/p;->a:Lcom/xiaomi/push/p;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/push/service/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iget v2, v0, Lcom/xiaomi/push/es;->a:I

    sget v3, Lcom/xiaomi/push/ep;->a:I

    if-ne v2, v3, :cond_1

    iget-wide v2, v0, Lcom/xiaomi/push/es;->a:J

    iget-wide v4, p0, Lcom/xiaomi/push/eu;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    iget-boolean v0, v0, Lcom/xiaomi/push/es;->a:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iget-object v0, v0, Lcom/xiaomi/push/es;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private b()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/xiaomi/push/er;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    iget v2, v0, Lcom/xiaomi/push/er;->a:I

    sget v3, Lcom/xiaomi/push/ep;->a:I

    if-ne v2, v3, :cond_1

    iget-wide v2, v0, Lcom/xiaomi/push/er;->a:J

    iget-wide v4, p0, Lcom/xiaomi/push/eu;->a:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private c()J
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/xiaomi/push/eq;->j()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private c()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    const-string v2, "M-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/ia;->bj:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    iget-wide v2, v2, Lcom/xiaomi/push/er;->b:J

    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    if-lez v4, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->a(Lcom/xiaomi/push/er;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iget-object v1, v1, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/push/ew;->b(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    const-string v2, "pingpong"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->f()V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/push/er;->b:J

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/push/er;->c:I

    iput v1, v0, Lcom/xiaomi/push/er;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/xiaomi/push/er;->c:J

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/push/es;->b:J

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/xiaomi/push/es;->c:J

    const/4 v1, 0x0

    iput v1, v0, Lcom/xiaomi/push/es;->b:I

    return-void
.end method

.method private h()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iget-wide v2, v2, Lcom/xiaomi/push/es;->b:J

    const-wide/32 v4, 0xf731400

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    if-lez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->a(Lcom/xiaomi/push/es;)V

    return-void

    :cond_0
    iget-object v1, v1, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/xiaomi/push/ew;->a(Landroid/content/Context;Ljava/util/List;)V

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    const-string v2, "wakeup"

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->g()V

    return-void
.end method


# virtual methods
.method public abstract a()J
.end method

.method public a()V
    .locals 10

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->a:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/i;->b(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_3

    const-string v0, "screen_on"

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/xiaomi/push/service/receivers/BatteryReceiver;->a:Z

    if-eqz v0, :cond_4

    const-string v1, "Charging"

    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/xiaomi/push/eu;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    sget v5, Lcom/xiaomi/push/ep;->a:I

    iget-wide v6, p0, Lcom/xiaomi/push/eu;->a:J

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    move-object v9, v0

    invoke-virtual/range {v3 .. v9}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;IJZLjava/lang/String;)Lcom/xiaomi/push/es;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    const/4 v2, 0x1

    if-nez v1, :cond_7

    new-instance v1, Lcom/xiaomi/push/es;

    invoke-direct {v1}, Lcom/xiaomi/push/es;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iget-object v3, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    iput-object v3, v1, Lcom/xiaomi/push/es;->a:Ljava/lang/String;

    sget v3, Lcom/xiaomi/push/ep;->a:I

    iput v3, v1, Lcom/xiaomi/push/es;->a:I

    iget-wide v3, p0, Lcom/xiaomi/push/eu;->a:J

    iput-wide v3, v1, Lcom/xiaomi/push/es;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/xiaomi/push/es;->b:J

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/xiaomi/push/es;->c:J

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/xiaomi/push/es;->a:Z

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/es;

    iput v2, v1, Lcom/xiaomi/push/es;->b:I

    iput-object v0, v1, Lcom/xiaomi/push/es;->b:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-wide v3, v1, Lcom/xiaomi/push/es;->c:J

    iget-wide v5, v1, Lcom/xiaomi/push/es;->a:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/xiaomi/push/es;->c:J

    iget v0, v1, Lcom/xiaomi/push/es;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/xiaomi/push/es;->b:I

    :goto_1
    invoke-direct {p0}, Lcom/xiaomi/push/eu;->h()V

    return-void
.end method

.method public a(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lcom/xiaomi/push/eq;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(ZJ)V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/xiaomi/push/eu;->a:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ev;->a(Landroid/content/Context;)Lcom/xiaomi/push/ev;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    sget v2, Lcom/xiaomi/push/ep;->a:I

    iget-wide v3, p0, Lcom/xiaomi/push/eu;->a:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaomi/push/ev;->a(Ljava/lang/String;IJ)Lcom/xiaomi/push/er;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    if-nez v0, :cond_5

    new-instance v0, Lcom/xiaomi/push/er;

    invoke-direct {v0}, Lcom/xiaomi/push/er;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    iget-object v1, p0, Lcom/xiaomi/push/eu;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/push/er;->a:Ljava/lang/String;

    sget v1, Lcom/xiaomi/push/ep;->a:I

    iput v1, v0, Lcom/xiaomi/push/er;->a:I

    iget-wide v1, p0, Lcom/xiaomi/push/eu;->a:J

    iput-wide v1, v0, Lcom/xiaomi/push/er;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/push/er;->b:J

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Lcom/xiaomi/push/er;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/xiaomi/push/er;->c:J

    iput p1, v0, Lcom/xiaomi/push/er;->b:I

    xor-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/xiaomi/push/er;->c:I

    iput-wide p2, v0, Lcom/xiaomi/push/er;->d:J

    goto :goto_0

    :cond_5
    iget-wide p2, v0, Lcom/xiaomi/push/er;->c:J

    iget-wide v1, p0, Lcom/xiaomi/push/eu;->a:J

    long-to-int v2, v1

    int-to-long v1, v2

    add-long/2addr p2, v1

    iput-wide p2, v0, Lcom/xiaomi/push/er;->c:J

    if-eqz p1, :cond_6

    iget p1, v0, Lcom/xiaomi/push/er;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/xiaomi/push/er;->b:I

    goto :goto_0

    :cond_6
    iget p1, v0, Lcom/xiaomi/push/er;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/xiaomi/push/er;->c:I

    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/push/eu;->e()V

    return-void
.end method

.method public b()J
    .locals 5

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/eu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->bg:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/push/eu;->c()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/push/eu;->a()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaomi/push/eu;->a:J

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x927c0

    return-wide v0
.end method
