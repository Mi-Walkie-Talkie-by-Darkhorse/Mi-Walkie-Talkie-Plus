.class public final Lcom/shanlitech/et/core/c/r;
.super Ljava/lang/Object;
.source "PocSessionManager.java"


# static fields
.field private static final l:Ljava/lang/String; = "r"

.field private static final m:Lcom/shanlitech/et/core/c/r;

.field private static n:I


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/content/Context;

.field private c:J

.field private d:Lcom/shanlitech/et/c/c;

.field private e:Z

.field private f:Z

.field private g:Lcom/shanlitech/et/c/j;

.field private volatile h:Ljava/lang/Runnable;

.field private i:I

.field private j:I

.field private k:Lcom/shanlitech/et/c/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/r;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/r;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/r;->m:Lcom/shanlitech/et/core/c/r;

    const/16 v0, 0x28

    .line 2
    sput v0, Lcom/shanlitech/et/core/c/r;->n:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/r;->a:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/r;->c:J

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shanlitech/et/core/c/r;->h:Ljava/lang/Runnable;

    .line 7
    sget v0, Lcom/shanlitech/et/core/c/r;->n:I

    iput v0, p0, Lcom/shanlitech/et/core/c/r;->i:I

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/shanlitech/et/core/c/r;->j:I

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/shanlitech/et/core/c/r;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/shanlitech/et/core/c/r;->i:I

    return p0
.end method

.method static synthetic c(Lcom/shanlitech/et/core/c/r;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/shanlitech/et/core/c/r;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private d()Lcom/shanlitech/et/core/c/r;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/r;->o()Lcom/shanlitech/et/core/c/r;

    .line 2
    iget v0, p0, Lcom/shanlitech/et/core/c/r;->i:I

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u542f\u5fc3\u8df3\uff1auseAlarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " useCpuLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/shanlitech/et/core/c/r;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->g:Lcom/shanlitech/et/c/j;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/shanlitech/et/c/j;->a()Lcom/shanlitech/et/c/j;

    .line 6
    :cond_1
    iget-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->d:Lcom/shanlitech/et/c/c;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/shanlitech/et/c/c;->f()V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/shanlitech/et/core/c/r$a;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/core/c/r$a;-><init>(Lcom/shanlitech/et/core/c/r;)V

    iput-object v0, p0, Lcom/shanlitech/et/core/c/r;->h:Ljava/lang/Runnable;

    .line 10
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/shanlitech/et/core/c/r;->h:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lcom/shanlitech/et/core/c/r;->i:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static e()Lcom/shanlitech/et/core/c/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/r;->m:Lcom/shanlitech/et/core/c/r;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "audio_server"

    const-string v2, "redirector.cmpoctob2.cn"

    invoke-virtual {v0, v1, v2}, Lcom/shanlitech/et/core/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":9099"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic i(Landroid/content/Context;)V
    .locals 0

    const-string p1, "alarmSchedule"

    .line 1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/r;->m(Ljava/lang/String;)V

    return-void
.end method

.method private o()Lcom/shanlitech/et/core/c/r;
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5173\u95ed\u5fc3\u8df3\uff1auseAlarm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " useCpuLock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->g:Lcom/shanlitech/et/c/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shanlitech/et/c/j;->d()Lcom/shanlitech/et/c/j;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->d:Lcom/shanlitech/et/c/c;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/shanlitech/et/c/c;->i()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->h:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/shanlitech/et/core/c/r;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/shanlitech/et/core/c/r;->h:Ljava/lang/Runnable;

    :cond_3
    :goto_0
    return-object p0
.end method


# virtual methods
.method public g(Landroid/content/Context;)Lcom/shanlitech/et/core/c/r;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/core/c/r;->b:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Lcom/shanlitech/et/c/c;->d(Landroid/content/Context;)Lcom/shanlitech/et/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/core/c/r;->d:Lcom/shanlitech/et/c/c;

    .line 3
    new-instance v0, Lcom/shanlitech/et/core/c/d;

    invoke-direct {v0, p0}, Lcom/shanlitech/et/core/c/d;-><init>(Lcom/shanlitech/et/core/c/r;)V

    invoke-virtual {p1, v0}, Lcom/shanlitech/et/c/c;->g(Lcom/shanlitech/et/c/c$b;)Lcom/shanlitech/et/c/c;

    .line 4
    iget-boolean p1, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shanlitech/et/core/c/r;->b:Landroid/content/Context;

    const-string v0, "CoreService"

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/shanlitech/et/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/core/c/r;->g:Lcom/shanlitech/et/c/j;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/core/c/r;->b:Landroid/content/Context;

    const-string v0, "pingLock"

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/shanlitech/et/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/core/c/r;->k:Lcom/shanlitech/et/c/j;

    return-object p0
.end method

.method public h()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    const-string v1, "network"

    const-string v2, "idle_to_suspend"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/shanlitech/et/core/c/h;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic j(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shanlitech/et/core/c/r;->i(Landroid/content/Context;)V

    return-void
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;ILcom/shanlitech/et/web/LoginType;)I
    .locals 3

    const-string v0, "account"

    const-string v1, "is_pwd_md5"

    const-string v2, "0"

    .line 1
    invoke-static {v0, v1, v2}, Lcom/shanlitech/et/CoreEngine;->writeConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/r;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "network"

    const-string v2, "dns"

    invoke-static {v1, v2, v0}, Lcom/shanlitech/et/CoreEngine;->writeConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p4}, Lcom/shanlitech/et/web/LoginType;->b()I

    move-result p4

    invoke-static {p1, p2, p3, p4}, Lcom/shanlitech/et/CoreEngine;->login(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    .line 4
    sget-object p2, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "loginPoc.result = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/shanlitech/et/CoreEngine;->readConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public l()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/shanlitech/et/CoreEngine;->logout()I

    move-result v0

    .line 2
    sget-object v1, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logoutPoc.result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shanlitech/et/c/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget v1, Lcom/shanlitech/et/ETStatusCode;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/shanlitech/et/core/c/r;->k:Lcom/shanlitech/et/c/j;

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object p1

    const-string v0, "pingLock"

    invoke-static {p1, v0}, Lcom/shanlitech/et/c/j;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/shanlitech/et/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/shanlitech/et/core/c/r;->k:Lcom/shanlitech/et/c/j;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/core/c/r;->k:Lcom/shanlitech/et/c/j;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v0, v1}, Lcom/shanlitech/et/c/j;->b(J)Lcom/shanlitech/et/c/j;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/shanlitech/et/CoreEngine;->sendPing(I)I

    .line 5
    iget-wide v0, p0, Lcom/shanlitech/et/core/c/r;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 6
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5fc3\u8df3\u4e86\uff0c\u8ddd\u79bb\u4e0a\u6b21="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/shanlitech/et/core/c/r;->c:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    const-string v1, "\u9996\u6b21\u5fc3\u8df3"

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/core/c/r;->c:J

    .line 9
    invoke-static {}, Lcom/shanlitech/et/core/c/e;->C()Lcom/shanlitech/et/core/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/core/c/e;->G()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget v0, p0, Lcom/shanlitech/et/core/c/r;->j:I

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_2

    .line 11
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/web/b/c/a;->refresh()V

    .line 12
    iput p1, p0, Lcom/shanlitech/et/core/c/r;->j:I

    .line 13
    :cond_2
    iget p1, p0, Lcom/shanlitech/et/core/c/r;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/shanlitech/et/core/c/r;->j:I

    :cond_3
    return-void
.end method

.method public n(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/r;->u()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/shanlitech/et/core/c/r;->s(I)Lcom/shanlitech/et/core/c/r;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/r;->t()V

    :goto_0
    return-void
.end method

.method public p(Z)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/c/h;->j()Lcom/shanlitech/et/core/c/h;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/shanlitech/et/core/c/r;->u()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "network"

    const-string v2, "idle_to_suspend"

    invoke-virtual {v0, v1, v2, p1}, Lcom/shanlitech/et/core/c/h;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shanlitech/et/core/c/r;->f:Z

    return-void
.end method

.method public s(I)Lcom/shanlitech/et/core/c/r;
    .locals 7

    const/16 v0, 0x3c

    const/4 v1, 0x5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    const/4 p1, 0x5

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    const/16 p1, 0x3c

    .line 1
    :cond_2
    :goto_0
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    const-string v1, "sld2b"

    invoke-virtual {v0, v1, p1}, Lcom/shanlitech/et/core/b;->i(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2
    sget-object v0, Lcom/shanlitech/et/core/c/r;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5fc3\u8df3\u9891\u7387\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shanlitech/et/c/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput p1, p0, Lcom/shanlitech/et/core/c/r;->i:I

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/shanlitech/et/core/c/r;->c:J

    .line 5
    iget-boolean v0, p0, Lcom/shanlitech/et/core/c/r;->e:Z

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shanlitech/et/core/c/r;->b:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/shanlitech/et/core/c/r;->d:Lcom/shanlitech/et/c/c;

    int-to-long v2, p1

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v6}, Lcom/shanlitech/et/c/c;->h(JJLjava/util/concurrent/TimeUnit;)Lcom/shanlitech/et/c/c;

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/r;->d()Lcom/shanlitech/et/core/c/r;

    return-object p0
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/core/c/r;->o()Lcom/shanlitech/et/core/c/r;

    return-void
.end method

.method public u()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    sget v1, Lcom/shanlitech/et/core/c/r;->n:I

    const-string v2, "sld2b"

    invoke-virtual {v0, v2, v1}, Lcom/shanlitech/et/core/b;->b(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method
