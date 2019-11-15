.class final Lio/reactivex/internal/operators/observable/aj$a;
.super Lio/reactivex/internal/observers/b;
.source "ObservableFromArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/q",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field volatile e:Z


# direct methods
.method constructor <init>(Lio/reactivex/q;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;[TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/internal/observers/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/aj$a;->a:Lio/reactivex/q;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/aj$a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->d:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->c:I

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/aj$a;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->b:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->c:I

    return-void
.end method

.method d()V
    .locals 5

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/aj$a;->b:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/aj$a;->isDisposed()Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/aj$a;->a:Lio/reactivex/q;

    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "th element is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lio/reactivex/q;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/aj$a;->a:Lio/reactivex/q;

    invoke-interface {v4, v3}, Lio/reactivex/q;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/aj$a;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->a:Lio/reactivex/q;

    invoke-interface {v0}, Lio/reactivex/q;->onComplete()V

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->e:Z

    return-void
.end method

.method public e_()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation

    iget v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->c:I

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/aj$a;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lio/reactivex/internal/operators/observable/aj$a;->c:I

    aget-object v0, v1, v0

    const-string v1, "The array element is null"

    invoke-static {v0, v1}, Lio/reactivex/internal/functions/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/aj$a;->e:Z

    return v0
.end method
