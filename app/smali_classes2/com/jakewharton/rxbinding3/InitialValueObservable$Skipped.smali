.class final Lcom/jakewharton/rxbinding3/InitialValueObservable$Skipped;
.super Lio/reactivex/Observable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding3/InitialValueObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Skipped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/Observable<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/InitialValueObservable$Skipped;",
        "Lio/reactivex/Observable;",
        "(Lcom/jakewharton/rxbinding3/InitialValueObservable;)V",
        "subscribeActual",
        "",
        "observer",
        "Lio/reactivex/Observer;",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding3/InitialValueObservable;


# direct methods
.method public constructor <init>(Lcom/jakewharton/rxbinding3/InitialValueObservable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/InitialValueObservable$Skipped;->this$0:Lcom/jakewharton/rxbinding3/InitialValueObservable;

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .param p1    # Lio/reactivex/Observer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/InitialValueObservable$Skipped;->this$0:Lcom/jakewharton/rxbinding3/InitialValueObservable;

    invoke-virtual {v0, p1}, Lcom/jakewharton/rxbinding3/InitialValueObservable;->subscribeListener(Lio/reactivex/Observer;)V

    return-void
.end method
