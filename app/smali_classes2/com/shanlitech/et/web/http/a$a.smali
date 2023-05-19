.class final Lcom/shanlitech/et/web/http/a$a;
.super Ljava/lang/Object;
.source "ReqConverter2.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/web/http/a;
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
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lokhttp3/MediaType;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/web/http/a$a;->c:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/web/http/a$a;->b:Lcom/google/gson/Gson;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/web/http/a$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/http/ReqWrapper;

    invoke-direct {v0}, Lcom/shanlitech/et/web/http/ReqWrapper;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/shanlitech/et/web/http/a$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/shanlitech/et/web/http/ReqWrapper;->code:Ljava/lang/String;

    .line 3
    iput-object p1, v0, Lcom/shanlitech/et/web/http/ReqWrapper;->data:Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/shanlitech/et/web/http/a$a;->c:Lokhttp3/MediaType;

    iget-object v1, p0, Lcom/shanlitech/et/web/http/a$a;->b:Lcom/google/gson/Gson;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/shanlitech/et/web/http/a$a;->a(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method
