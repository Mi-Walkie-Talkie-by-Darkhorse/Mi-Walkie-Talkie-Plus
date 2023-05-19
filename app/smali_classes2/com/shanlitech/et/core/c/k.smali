.class public Lcom/shanlitech/et/core/c/k;
.super Ljava/lang/Object;
.source "PocFunctionManager.java"


# static fields
.field private static d:Lcom/shanlitech/et/core/c/k;


# instance fields
.field private a:I

.field private b:J

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.function.lockjoingroup.joinerrornumber"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shanlitech/et/core/c/k;->a:I

    .line 3
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.function.lockjoingroup.oneaftertime"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/shanlitech/et/core/b;->c(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/core/c/k;->b:J

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sdk.function.lockjoingroup.canclick"

    invoke-virtual {v0, v1, v2, v3}, Lcom/shanlitech/et/core/b;->c(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/core/c/k;->c:J

    return-void
.end method

.method public static a()Lcom/shanlitech/et/core/c/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/k;->d:Lcom/shanlitech/et/core/c/k;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shanlitech/et/core/c/k;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shanlitech/et/core/c/k;->d:Lcom/shanlitech/et/core/c/k;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shanlitech/et/core/c/k;

    invoke-direct {v1}, Lcom/shanlitech/et/core/c/k;-><init>()V

    sput-object v1, Lcom/shanlitech/et/core/c/k;->d:Lcom/shanlitech/et/core/c/k;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shanlitech/et/core/c/k;->d:Lcom/shanlitech/et/core/c/k;

    return-object v0
.end method


# virtual methods
.method public b(ZJ)V
    .locals 4

    xor-int/lit8 v0, p1, 0x1

    .line 1
    iput v0, p0, Lcom/shanlitech/et/core/c/k;->a:I

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    move-wide p2, v0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xea60

    add-long/2addr p2, v2

    .line 2
    :goto_0
    iput-wide p2, p0, Lcom/shanlitech/et/core/c/k;->b:J

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/k;->c:J

    .line 4
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    iget p2, p0, Lcom/shanlitech/et/core/c/k;->a:I

    const-string p3, "sdk.function.lockjoingroup.joinerrornumber"

    invoke-virtual {p1, p3, p2}, Lcom/shanlitech/et/core/b;->i(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    iget-wide p2, p0, Lcom/shanlitech/et/core/c/k;->b:J

    const-string v0, "sdk.function.lockjoingroup.oneaftertime"

    invoke-virtual {p1, v0, p2, p3}, Lcom/shanlitech/et/core/b;->j(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 6
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    iget-wide p2, p0, Lcom/shanlitech/et/core/c/k;->c:J

    const-string v0, "sdk.function.lockjoingroup.canclick"

    invoke-virtual {p1, v0, p2, p3}, Lcom/shanlitech/et/core/b;->j(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public c(J)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/shanlitech/et/core/c/k;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/shanlitech/et/core/c/k;->a:I

    .line 2
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    iget v2, p0, Lcom/shanlitech/et/core/c/k;->a:I

    const-string v3, "sdk.function.lockjoingroup.joinerrornumber"

    invoke-virtual {v0, v3, v2}, Lcom/shanlitech/et/core/b;->i(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3
    iget v0, p0, Lcom/shanlitech/et/core/c/k;->a:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lcom/shanlitech/et/core/c/k;->b(ZJ)V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const/4 v5, 0x5

    if-ge v0, v5, :cond_1

    .line 5
    iget-wide v5, p0, Lcom/shanlitech/et/core/c/k;->b:J

    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_4

    .line 6
    invoke-virtual {p0, v2, p1, p2}, Lcom/shanlitech/et/core/c/k;->b(ZJ)V

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_3

    .line 7
    iget-wide v5, p0, Lcom/shanlitech/et/core/c/k;->b:J

    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_2

    .line 8
    invoke-virtual {p0, v2, p1, p2}, Lcom/shanlitech/et/core/c/k;->b(ZJ)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide p1

    const-wide/32 v2, 0x493e0

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/shanlitech/et/core/c/k;->c:J

    .line 10
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    iget-wide v2, p0, Lcom/shanlitech/et/core/c/k;->c:J

    const-string p2, "sdk.function.lockjoingroup.canclick"

    invoke-virtual {p1, p2, v2, v3}, Lcom/shanlitech/et/core/b;->j(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    if-le v0, v5, :cond_4

    .line 11
    invoke-virtual {p0, v2, p1, p2}, Lcom/shanlitech/et/core/c/k;->b(ZJ)V

    .line 12
    :cond_4
    :goto_0
    new-instance p1, Lcom/shanlitech/et/notice/event/RequestResultEvent;

    sget-object p2, Lcom/shanlitech/et/ETStatusCode$Request;->f:Lcom/shanlitech/et/ETStatusCode$Request;

    sget-object v0, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->g:Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    invoke-direct {p1, p2, v0, v1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;-><init>(Lcom/shanlitech/et/ETStatusCode$Request;Lcom/shanlitech/et/ETStatusCode$RequestResultCode;I)V

    invoke-virtual {p1}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->post()V

    return-void
.end method
