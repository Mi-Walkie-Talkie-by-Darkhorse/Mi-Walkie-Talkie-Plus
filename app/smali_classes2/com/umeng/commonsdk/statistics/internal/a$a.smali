.class Lcom/umeng/commonsdk/statistics/internal/a$a;
.super Ljava/lang/Object;
.source "HeaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/statistics/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/commonsdk/statistics/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/commonsdk/statistics/internal/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/statistics/internal/a;-><init>(Lcom/umeng/commonsdk/statistics/internal/a$1;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/internal/a$a;->a:Lcom/umeng/commonsdk/statistics/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/commonsdk/statistics/internal/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/commonsdk/statistics/internal/a$a;->a:Lcom/umeng/commonsdk/statistics/internal/a;

    return-object v0
.end method
