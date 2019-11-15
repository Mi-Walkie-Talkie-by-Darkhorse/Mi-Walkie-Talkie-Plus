.class public final Lrx/e/g;
.super Lrx/d;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/e/g$1;,
        Lrx/e/g$b;,
        Lrx/e/g$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/e/g;

    invoke-direct {v0}, Lrx/e/g;-><init>()V

    sput-object v0, Lrx/e/g;->a:Lrx/e/g;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrx/d;-><init>()V

    return-void
.end method

.method static synthetic a(II)I
    .locals 1

    invoke-static {p0, p1}, Lrx/e/g;->b(II)I

    move-result v0

    return v0
.end method

.method private static b(II)I
    .locals 1

    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    new-instance v0, Lrx/e/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/e/g$a;-><init>(Lrx/e/g$1;)V

    return-object v0
.end method
