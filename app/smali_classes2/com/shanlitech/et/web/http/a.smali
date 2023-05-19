.class public Lcom/shanlitech/et/web/http/a;
.super Lretrofit2/Converter$Factory;
.source "ReqConverter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shanlitech/et/web/http/a$b;,
        Lcom/shanlitech/et/web/http/a$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-static {v0}, Lcom/shanlitech/et/c/l;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/web/http/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/web/http/a;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/http/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 1
    array-length p1, p3

    const/4 p4, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    aget-object v1, p3, v0

    .line 2
    instance-of v2, v1, Lcom/shanlitech/et/web/http/ReqCode;

    if-eqz v2, :cond_3

    .line 3
    check-cast v1, Lcom/shanlitech/et/web/http/ReqCode;

    .line 4
    invoke-interface {v1}, Lcom/shanlitech/et/web/http/ReqCode;->value()Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length p3, p2

    :goto_1
    if-ge p4, p3, :cond_2

    aget-object v0, p2, p4

    .line 6
    instance-of v1, v0, Lcom/shanlitech/et/web/http/ReqData;

    if-eqz v1, :cond_0

    .line 7
    new-instance p2, Lcom/shanlitech/et/web/http/a$a;

    iget-object p3, p0, Lcom/shanlitech/et/web/http/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lcom/shanlitech/et/web/http/a$a;-><init>(Lcom/google/gson/Gson;Ljava/lang/String;)V

    return-object p2

    .line 8
    :cond_0
    instance-of v0, v0, Lcom/shanlitech/et/web/http/ReqDataAES;

    if-eqz v0, :cond_1

    .line 9
    new-instance p2, Lcom/shanlitech/et/web/http/a$b;

    iget-object p3, p0, Lcom/shanlitech/et/web/http/a;->a:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lcom/shanlitech/et/web/http/a$b;-><init>(Lcom/google/gson/Gson;Ljava/lang/String;)V

    return-object p2

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "@ReqData is needed in parameter"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method
