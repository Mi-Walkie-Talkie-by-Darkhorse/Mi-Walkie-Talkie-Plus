.class public Lcom/shanlitech/et/core/c/p;
.super Ljava/lang/Object;
.source "PocRRManager.java"


# static fields
.field private static final a:Lcom/shanlitech/et/core/c/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/core/c/p;

    invoke-direct {v0}, Lcom/shanlitech/et/core/c/p;-><init>()V

    sput-object v0, Lcom/shanlitech/et/core/c/p;->a:Lcom/shanlitech/et/core/c/p;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/shanlitech/et/core/c/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/core/c/p;->a:Lcom/shanlitech/et/core/c/p;

    return-object v0
.end method


# virtual methods
.method public b(II)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/shanlitech/et/ETStatusCode$Request;->values()[Lcom/shanlitech/et/ETStatusCode$Request;

    move-result-object v0

    aget-object p1, v0, p1

    .line 2
    invoke-static {}, Lcom/shanlitech/et/ETStatusCode$RequestResultCode;->values()[Lcom/shanlitech/et/ETStatusCode$RequestResultCode;

    move-result-object v0

    mul-int/lit8 p2, p2, -0x1

    aget-object p2, v0, p2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RR"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    sget-object v1, Lcom/shanlitech/et/core/c/p$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/shanlitech/et/core/c/p$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "sdk.function.lockjoingroup.bytoken"

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcom/shanlitech/et/core/c/k;->a()Lcom/shanlitech/et/core/c/k;

    move-result-object p1

    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/shanlitech/et/core/c/k;->c(J)V

    .line 8
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Lcom/shanlitech/et/notice/event/RequestResultEvent;

    invoke-direct {v0, p1, p2, v3}, Lcom/shanlitech/et/notice/event/RequestResultEvent;-><init>(Lcom/shanlitech/et/ETStatusCode$Request;Lcom/shanlitech/et/ETStatusCode$RequestResultCode;I)V

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->post()V

    :goto_0
    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/shanlitech/et/core/b;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    invoke-static {}, Lcom/shanlitech/et/core/c/k;->a()Lcom/shanlitech/et/core/c/k;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Lcom/shanlitech/et/core/c/k;->b(ZJ)V

    .line 12
    invoke-static {}, Lcom/shanlitech/et/core/b;->f()Lcom/shanlitech/et/core/b;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/shanlitech/et/core/b;->h(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 13
    :cond_4
    sget-object v0, Lcom/shanlitech/et/core/c/p$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 14
    :cond_5
    :goto_1
    new-instance v0, Lcom/shanlitech/et/notice/event/RequestResultEvent;

    invoke-direct {v0, p1, p2, v3}, Lcom/shanlitech/et/notice/event/RequestResultEvent;-><init>(Lcom/shanlitech/et/ETStatusCode$Request;Lcom/shanlitech/et/ETStatusCode$RequestResultCode;I)V

    invoke-virtual {v0}, Lcom/shanlitech/et/notice/event/RequestResultEvent;->post()V

    return-void
.end method
