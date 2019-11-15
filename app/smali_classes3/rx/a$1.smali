.class Lrx/a$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->a(Lrx/a$b;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/a$b;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/a$b;)V
    .locals 0

    iput-object p1, p0, Lrx/a$1;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$1;->a:Lrx/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TR;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lrx/a;->c()Lrx/d/b;

    move-result-object v0

    iget-object v1, p0, Lrx/a$1;->a:Lrx/a$b;

    invoke-virtual {v0, v1}, Lrx/d/b;->a(Lrx/a$b;)Lrx/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/a$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/e;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Lrx/e;->onStart()V

    iget-object v1, p0, Lrx/a$1;->b:Lrx/a;

    iget-object v1, v1, Lrx/a;->a:Lrx/a$a;

    invoke-interface {v1, v0}, Lrx/a$a;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/e;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/a$1;->a(Lrx/e;)V

    return-void
.end method
