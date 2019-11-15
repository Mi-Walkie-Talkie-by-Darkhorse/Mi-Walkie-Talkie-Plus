.class final Lio/reactivex/internal/operators/observable/ObservableRefCount$a;
.super Ljava/lang/Object;
.source "ObservableRefCount.java"

# interfaces
.implements Lio/reactivex/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRefCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/b/f",
        "<",
        "Lio/reactivex/disposables/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

.field private final b:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableRefCount;Lio/reactivex/q;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->b:Lio/reactivex/q;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/disposables/b;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/a;->a(Lio/reactivex/disposables/b;)Z

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->b:Lio/reactivex/q;

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v2, v2, Lio/reactivex/internal/operators/observable/ObservableRefCount;->c:Lio/reactivex/disposables/a;

    invoke-virtual {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableRefCount;->a(Lio/reactivex/q;Lio/reactivex/disposables/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a:Lio/reactivex/internal/operators/observable/ObservableRefCount;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableRefCount;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lio/reactivex/disposables/b;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableRefCount$a;->a(Lio/reactivex/disposables/b;)V

    return-void
.end method
