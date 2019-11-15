.class final Lio/reactivex/internal/operators/observable/ObservableReplay$b;
.super Ljava/lang/Object;
.source "ObservableReplay.java"

# interfaces
.implements Lio/reactivex/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/f",
        "<",
        "Lio/reactivex/disposables/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObserverResourceWrapper",
            "<TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$b;->a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/b;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$b;->a:Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObserverResourceWrapper;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/disposables/b;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$b;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method
