.class public final enum Lcom/xiaomi/infra/galaxy/fds/RequestParameter;
.super Ljava/lang/Enum;
.source "RequestParameter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/RequestParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

.field public static final enum RESPONSE_CACHE_CONTROL:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

.field public static final enum RESPONSE_CONTENT_DISPOSITION:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

.field public static final enum RESPONSE_CONTENT_ENCODING:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

.field public static final enum RESPONSE_CONTENT_TYPE:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

.field public static final enum RESPONSE_EXPIRES:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;


# instance fields
.field private final header:Ljava/lang/String;

.field private final param:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v1, 0x0

    const-string v2, "RESPONSE_CONTENT_TYPE"

    const-string v3, "response-content-type"

    const-string v4, "Content-Type"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_TYPE:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 2
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v2, 0x1

    const-string v3, "RESPONSE_CACHE_CONTROL"

    const-string v4, "response-cache-control"

    const-string v5, "Cache-Control"

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CACHE_CONTROL:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 3
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v3, 0x2

    const-string v4, "RESPONSE_EXPIRES"

    const-string v5, "response-expires"

    const-string v6, "Expires"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_EXPIRES:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 4
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v4, 0x3

    const-string v5, "RESPONSE_CONTENT_ENCODING"

    const-string v6, "response-content-encoding"

    const-string v7, "Content-Encoding"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_ENCODING:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v5, 0x4

    const-string v6, "RESPONSE_CONTENT_DISPOSITION"

    const-string v7, "response-content-disposition"

    const-string v8, "Content-Disposition"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_DISPOSITION:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 6
    sget-object v7, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_TYPE:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    aput-object v7, v6, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CACHE_CONTROL:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_EXPIRES:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_ENCODING:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->param:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->header:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/RequestParameter;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/RequestParameter;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    return-object v0
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->param:Ljava/lang/String;

    return-object v0
.end method
