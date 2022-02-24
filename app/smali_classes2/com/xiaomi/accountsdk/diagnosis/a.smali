.class public Lcom/xiaomi/accountsdk/diagnosis/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;


# static fields
.field private static b:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

.field private static c:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/a;->b:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/d;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/d;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/a;->c:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/diagnosis/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/diagnosis/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/a;->b:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/a;->c:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    :goto_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/accountsdk/diagnosis/e/a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->log(Ljava/lang/String;)V

    return-void
.end method

.method public logGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logGetRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logPostRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logRequestException(Ljava/lang/Exception;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logRequestException(Ljava/lang/Exception;)V

    return-void
.end method

.method public logResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logResponse(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public logResponseCode(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logResponseCode(Ljava/lang/String;I)V

    return-void
.end method

.method public logResponseDecryptedBody(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/diagnosis/a;->a()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;->logResponseDecryptedBody(Ljava/lang/String;)V

    return-void
.end method
