.class final Lrx/internal/util/e$c;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b/a;"
    }
.end annotation


# instance fields
.field private final a:Lrx/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/util/e$c;->a:Lrx/e;

    iput-object p2, p0, Lrx/internal/util/e$c;->b:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lrx/e;Ljava/lang/Object;Lrx/internal/util/e$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lrx/internal/util/e$c;-><init>(Lrx/e;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lrx/internal/util/e$c;->a:Lrx/e;

    iget-object v1, p0, Lrx/internal/util/e$c;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/e;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lrx/internal/util/e$c;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/e$c;->a:Lrx/e;

    invoke-virtual {v1, v0}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
