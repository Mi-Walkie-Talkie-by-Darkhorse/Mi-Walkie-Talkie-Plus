.class public Lrx/internal/operators/c;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$b",
        "<TT;",
        "Lrx/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/d;


# direct methods
.method public constructor <init>(Lrx/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/c;->a:Lrx/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/e;)Lrx/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/e",
            "<-",
            "Lrx/a",
            "<TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/operators/c;->a:Lrx/d;

    invoke-virtual {v0}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->add(Lrx/f;)V

    new-instance v1, Lrx/internal/operators/c$1;

    invoke-direct {v1, p0, p1, p1, v0}, Lrx/internal/operators/c$1;-><init>(Lrx/internal/operators/c;Lrx/e;Lrx/e;Lrx/d$a;)V

    return-object v1
.end method
