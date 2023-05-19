.class Lcom/umeng/analytics/pro/t$a;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/pro/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/pro/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/umeng/analytics/pro/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/t;-><init>(Lcom/umeng/analytics/pro/t$1;)V

    sput-object v0, Lcom/umeng/analytics/pro/t$a;->a:Lcom/umeng/analytics/pro/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/pro/t;
    .locals 1

    .line 1
    sget-object v0, Lcom/umeng/analytics/pro/t$a;->a:Lcom/umeng/analytics/pro/t;

    return-object v0
.end method
