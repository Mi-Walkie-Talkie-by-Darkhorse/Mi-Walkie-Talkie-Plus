.class Lretrofit2/l$1;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/l;->a(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Class;

.field final synthetic b:Lretrofit2/l;

.field private final c:Lretrofit2/i;


# direct methods
.method constructor <init>(Lretrofit2/l;Ljava/lang/Class;)V
    .locals 1

    iput-object p1, p0, Lretrofit2/l$1;->b:Lretrofit2/l;

    iput-object p2, p0, Lretrofit2/l$1;->a:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lretrofit2/i;->a()Lretrofit2/i;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/l$1;->c:Lretrofit2/i;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p3    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lretrofit2/l$1;->c:Lretrofit2/i;

    invoke-virtual {v0, p2}, Lretrofit2/i;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lretrofit2/l$1;->c:Lretrofit2/i;

    iget-object v1, p0, Lretrofit2/l$1;->a:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lretrofit2/i;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lretrofit2/l$1;->b:Lretrofit2/l;

    invoke-virtual {v0, p2}, Lretrofit2/l;->a(Ljava/lang/reflect/Method;)Lretrofit2/m;

    move-result-object v0

    new-instance v1, Lretrofit2/g;

    invoke-direct {v1, v0, p3}, Lretrofit2/g;-><init>(Lretrofit2/m;[Ljava/lang/Object;)V

    iget-object v0, v0, Lretrofit2/m;->d:Lretrofit2/c;

    invoke-interface {v0, v1}, Lretrofit2/c;->adapt(Lretrofit2/b;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
