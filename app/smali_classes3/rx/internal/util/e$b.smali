.class final Lrx/internal/util/e$b;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/d;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/util/e$b;->a:Lrx/d;

    iput-object p2, p0, Lrx/internal/util/e$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/util/e$b;->a:Lrx/d;

    invoke-virtual {v0}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->add(Lrx/f;)V

    new-instance v1, Lrx/internal/util/e$c;

    iget-object v2, p0, Lrx/internal/util/e$b;->b:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/util/e$c;-><init>(Lrx/e;Ljava/lang/Object;Lrx/internal/util/e$1;)V

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lrx/b/a;)Lrx/f;

    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/util/e$b;->a(Lrx/e;)V

    return-void
.end method
