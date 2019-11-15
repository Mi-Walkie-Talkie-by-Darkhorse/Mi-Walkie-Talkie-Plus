.class Lretrofit2/h$1;
.super Lretrofit2/h;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/h;->a()Lretrofit2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/h",
        "<",
        "Ljava/lang/Iterable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/h;


# direct methods
.method constructor <init>(Lretrofit2/h;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/h$1;->a:Lretrofit2/h;

    invoke-direct {p0}, Lretrofit2/h;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lretrofit2/j;Ljava/lang/Iterable;)V
    .locals 3
    .param p2    # Ljava/lang/Iterable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/j;",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lretrofit2/h$1;->a:Lretrofit2/h;

    invoke-virtual {v2, p1, v1}, Lretrofit2/h;->a(Lretrofit2/j;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method bridge synthetic a(Lretrofit2/j;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Iterable;

    invoke-virtual {p0, p1, p2}, Lretrofit2/h$1;->a(Lretrofit2/j;Ljava/lang/Iterable;)V

    return-void
.end method
