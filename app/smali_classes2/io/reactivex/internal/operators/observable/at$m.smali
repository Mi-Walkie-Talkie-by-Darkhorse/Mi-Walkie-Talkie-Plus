.class final Lio/reactivex/internal/operators/observable/at$m;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/c",
        "<TS;",
        "Lio/reactivex/d",
        "<TT;>;TS;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/b",
            "<TS;",
            "Lio/reactivex/d",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/b/b",
            "<TS;",
            "Lio/reactivex/d",
            "<TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/at$m;->a:Lio/reactivex/b/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lio/reactivex/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/reactivex/d",
            "<TT;>;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/at$m;->a:Lio/reactivex/b/b;

    invoke-interface {v0, p1, p2}, Lio/reactivex/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p2, Lio/reactivex/d;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/internal/operators/observable/at$m;->a(Ljava/lang/Object;Lio/reactivex/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
