.class final Lretrofit2/a;
.super Lretrofit2/d$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/a$d;,
        Lretrofit2/a$a;,
        Lretrofit2/a$c;,
        Lretrofit2/a$b;,
        Lretrofit2/a$e;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lretrofit2/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/l;)Lretrofit2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/l;",
            ")",
            "Lretrofit2/d",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    const-class v0, Lokhttp3/ResponseBody;

    if-ne p1, v0, :cond_1

    const-class v0, Lretrofit2/http/Streaming;

    invoke-static {p2, v0}, Lretrofit2/n;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lretrofit2/a$c;->a:Lretrofit2/a$c;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lretrofit2/a$a;->a:Lretrofit2/a$a;

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    sget-object v0, Lretrofit2/a$e;->a:Lretrofit2/a$e;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/l;)Lretrofit2/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/l;",
            ")",
            "Lretrofit2/d",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    const-class v0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/n;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lretrofit2/a$b;->a:Lretrofit2/a$b;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
