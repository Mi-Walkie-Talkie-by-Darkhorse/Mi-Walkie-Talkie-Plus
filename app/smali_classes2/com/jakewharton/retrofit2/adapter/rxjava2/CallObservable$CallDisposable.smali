.class final Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;
.super Ljava/lang/Object;
.source "CallObservable.java"

# interfaces
.implements Lio/reactivex/disposables/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallDisposable"
.end annotation


# instance fields
.field private final call:Lretrofit2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/b",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/b",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;->call:Lretrofit2/b;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;->call:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->b()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object v0, p0, Lcom/jakewharton/retrofit2/adapter/rxjava2/CallObservable$CallDisposable;->call:Lretrofit2/b;

    invoke-interface {v0}, Lretrofit2/b;->c()Z

    move-result v0

    return v0
.end method
