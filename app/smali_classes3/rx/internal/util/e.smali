.class public final Lrx/internal/util/e;
.super Lrx/a;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/e$c;,
        Lrx/internal/util/e$b;,
        Lrx/internal/util/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Lrx/internal/util/e$1;

    invoke-direct {v0, p1}, Lrx/internal/util/e$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/a;-><init>(Lrx/a$a;)V

    iput-object p1, p0, Lrx/internal/util/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final b(Ljava/lang/Object;)Lrx/internal/util/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/e",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lrx/internal/util/e;

    invoke-direct {v0, p0}, Lrx/internal/util/e;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c(Lrx/d;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p1, Lrx/internal/schedulers/a;

    if-eqz v0, :cond_0

    check-cast p1, Lrx/internal/schedulers/a;

    new-instance v0, Lrx/internal/util/e$a;

    iget-object v1, p0, Lrx/internal/util/e;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/util/e$a;-><init>(Lrx/internal/schedulers/a;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/internal/util/e;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/e$b;

    iget-object v1, p0, Lrx/internal/util/e;->b:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/util/e$b;-><init>(Lrx/d;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/internal/util/e;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method
