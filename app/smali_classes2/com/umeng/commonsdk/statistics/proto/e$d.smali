.class Lcom/umeng/commonsdk/statistics/proto/e$d;
.super Ljava/lang/Object;
.source "ImprintValue.java"

# interfaces
.implements Lcom/umeng/analytics/pro/by;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/proto/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/e$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/e$c;
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/e$c;-><init>(Lcom/umeng/commonsdk/statistics/proto/e$1;)V

    return-object v0
.end method

.method public synthetic b()Lcom/umeng/analytics/pro/bx;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/e$d;->a()Lcom/umeng/commonsdk/statistics/proto/e$c;

    move-result-object v0

    return-object v0
.end method
