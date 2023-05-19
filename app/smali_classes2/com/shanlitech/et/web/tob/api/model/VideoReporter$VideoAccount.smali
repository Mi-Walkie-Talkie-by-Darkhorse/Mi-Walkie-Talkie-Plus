.class final Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;
.super Ljava/lang/Object;
.source "VideoReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/web/tob/api/model/VideoReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoAccount"
.end annotation


# static fields
.field private static final accounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public account:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->accounts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->account:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->password:Ljava/lang/String;

    return-void
.end method

.method public static build()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->accounts:Ljava/util/HashMap;

    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000301"

    const-string v3, "kedacom123"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001049"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000302"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001050"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000303"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001051"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000304"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001052"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000305"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001053"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000306"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001054"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000307"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001055"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000308"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001056"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000309"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001057"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000310"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001058"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000311"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001061"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000312"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001062"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000313"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001063"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000314"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001064"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000315"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001065"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000316"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001066"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000317"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001067"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000318"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001068"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000319"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001069"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000000320"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "10000001031321001070"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000001031321000601"

    const-string v3, "88888888"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    const-string v2, "10000001031321000602"

    invoke-direct {v1, v2, v3}, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAccount(Ljava/lang/String;)Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;->accounts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/web/tob/api/model/VideoReporter$VideoAccount;

    return-object p0
.end method
