.class public final Lio/reactivex/e/a;
.super Ljava/lang/Object;
.source "Schedulers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/e/a$b;,
        Lio/reactivex/e/a$h;,
        Lio/reactivex/e/a$f;,
        Lio/reactivex/e/a$c;,
        Lio/reactivex/e/a$e;,
        Lio/reactivex/e/a$d;,
        Lio/reactivex/e/a$a;,
        Lio/reactivex/e/a$g;
    }
.end annotation


# static fields
.field static final a:Lio/reactivex/r;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field static final b:Lio/reactivex/r;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field static final c:Lio/reactivex/r;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field static final d:Lio/reactivex/r;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field static final e:Lio/reactivex/r;
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/e/a$h;

    invoke-direct {v0}, Lio/reactivex/e/a$h;-><init>()V

    invoke-static {v0}, Lio/reactivex/d/a;->d(Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    sput-object v0, Lio/reactivex/e/a;->a:Lio/reactivex/r;

    new-instance v0, Lio/reactivex/e/a$b;

    invoke-direct {v0}, Lio/reactivex/e/a$b;-><init>()V

    invoke-static {v0}, Lio/reactivex/d/a;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    sput-object v0, Lio/reactivex/e/a;->b:Lio/reactivex/r;

    new-instance v0, Lio/reactivex/e/a$c;

    invoke-direct {v0}, Lio/reactivex/e/a$c;-><init>()V

    invoke-static {v0}, Lio/reactivex/d/a;->b(Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    sput-object v0, Lio/reactivex/e/a;->c:Lio/reactivex/r;

    invoke-static {}, Lio/reactivex/internal/schedulers/i;->c()Lio/reactivex/internal/schedulers/i;

    move-result-object v0

    sput-object v0, Lio/reactivex/e/a;->d:Lio/reactivex/r;

    new-instance v0, Lio/reactivex/e/a$f;

    invoke-direct {v0}, Lio/reactivex/e/a$f;-><init>()V

    invoke-static {v0}, Lio/reactivex/d/a;->c(Ljava/util/concurrent/Callable;)Lio/reactivex/r;

    move-result-object v0

    sput-object v0, Lio/reactivex/e/a;->e:Lio/reactivex/r;

    return-void
.end method

.method public static a()Lio/reactivex/r;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/e/a;->b:Lio/reactivex/r;

    invoke-static {v0}, Lio/reactivex/d/a;->a(Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lio/reactivex/r;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/e/a;->c:Lio/reactivex/r;

    invoke-static {v0}, Lio/reactivex/d/a;->b(Lio/reactivex/r;)Lio/reactivex/r;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lio/reactivex/r;
    .locals 1
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    sget-object v0, Lio/reactivex/e/a;->d:Lio/reactivex/r;

    return-object v0
.end method
