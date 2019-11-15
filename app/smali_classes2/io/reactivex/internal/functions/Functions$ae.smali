.class final Lio/reactivex/internal/functions/Functions$ae;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ae"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/g",
        "<TT;",
        "Lio/reactivex/e/b",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/TimeUnit;

.field final b:Lio/reactivex/r;


# direct methods
.method constructor <init>(Ljava/util/concurrent/TimeUnit;Lio/reactivex/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$ae;->a:Ljava/util/concurrent/TimeUnit;

    iput-object p2, p0, Lio/reactivex/internal/functions/Functions$ae;->b:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/e/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/e/b",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lio/reactivex/e/b;

    iget-object v1, p0, Lio/reactivex/internal/functions/Functions$ae;->b:Lio/reactivex/r;

    iget-object v2, p0, Lio/reactivex/internal/functions/Functions$ae;->a:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/r;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    iget-object v1, p0, Lio/reactivex/internal/functions/Functions$ae;->a:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v2, v3, v1}, Lio/reactivex/e/b;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/reactivex/internal/functions/Functions$ae;->a(Ljava/lang/Object;)Lio/reactivex/e/b;

    move-result-object v0

    return-object v0
.end method
