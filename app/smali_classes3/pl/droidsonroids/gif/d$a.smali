.class final Lpl/droidsonroids/gif/d$a;
.super Ljava/lang/Object;
.source "GifRenderingExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/droidsonroids/gif/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lpl/droidsonroids/gif/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpl/droidsonroids/gif/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/d;-><init>(Lpl/droidsonroids/gif/d$1;)V

    sput-object v0, Lpl/droidsonroids/gif/d$a;->a:Lpl/droidsonroids/gif/d;

    return-void
.end method

.method static synthetic a()Lpl/droidsonroids/gif/d;
    .locals 1

    sget-object v0, Lpl/droidsonroids/gif/d$a;->a:Lpl/droidsonroids/gif/d;

    return-object v0
.end method
