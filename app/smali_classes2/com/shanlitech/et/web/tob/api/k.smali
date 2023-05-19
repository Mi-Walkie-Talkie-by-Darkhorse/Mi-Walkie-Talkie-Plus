.class public Lcom/shanlitech/et/web/tob/api/k;
.super Lcom/shanlitech/et/web/tob/api/b;
.source "StoreServiceAPI.java"


# static fields
.field private static b:Lcom/shanlitech/et/web/tob/api/k;


# instance fields
.field private a:Lcom/shanlitech/et/web/tob/api/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shanlitech/et/web/tob/api/k;

    invoke-direct {v0}, Lcom/shanlitech/et/web/tob/api/k;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/tob/api/k;->b:Lcom/shanlitech/et/web/tob/api/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shanlitech/et/web/tob/api/b;-><init>()V

    return-void
.end method

.method public static f()Lcom/shanlitech/et/web/tob/api/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/k;->b:Lcom/shanlitech/et/web/tob/api/k;

    return-object v0
.end method


# virtual methods
.method protected e(Lretrofit2/Retrofit;)V
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/web/tob/api/j;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/web/tob/api/j;

    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    return-void
.end method

.method public g(Z[JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ids"

    .line 3
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->a(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p3}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->c(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p3}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method public h(IILjava/lang/String;ILjava/util/HashMap;Lcom/shanlitech/et/web/tob/api/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "order"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p3}, Lcom/blankj/utilcode/util/u;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "keyword"

    .line 7
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p5, :cond_1

    .line 8
    invoke-virtual {v0, p5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->f(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p6}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public i(IIILcom/shanlitech/et/web/tob/api/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Object<",
            "Lcom/shanlitech/et/model/push/HistoryMessage;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pageIndex"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "pageSize"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "order"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "msgType"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->d(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {p2, p4}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public j([JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ids"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->b(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {v0, p2}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public k([JLcom/shanlitech/et/web/tob/api/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Lcom/shanlitech/et/web/tob/api/g<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/model/Account;->account()Lcom/shanlitech/et/model/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Account;->getUid()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ids"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/shanlitech/et/web/tob/api/k;->a:Lcom/shanlitech/et/web/tob/api/j;

    invoke-interface {p1, v0}, Lcom/shanlitech/et/web/tob/api/j;->e(Ljava/util/HashMap;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/shanlitech/et/web/tob/api/c;

    invoke-direct {v0, p2}, Lcom/shanlitech/et/web/tob/api/c;-><init>(Lcom/shanlitech/et/web/tob/api/g;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
