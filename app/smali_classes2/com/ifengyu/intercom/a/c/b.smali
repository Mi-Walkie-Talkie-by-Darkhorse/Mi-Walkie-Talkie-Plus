.class public Lcom/ifengyu/intercom/a/c/b;
.super Lcom/ifengyu/intercom/a/c/c;
.source "GetRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/ifengyu/intercom/a/c/c;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method


# virtual methods
.method protected a(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/a/c/b;->f:Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lokhttp3/RequestBody;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
