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
    .locals 13

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const-string v1, "RESPONSE_CONTENT_TYPE"

    const/4 v2, 0x0

    const-string v3, "response-content-type"

    const-string v4, "Content-Type"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_TYPE:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const-string v3, "RESPONSE_CACHE_CONTROL"

    const/4 v4, 0x1

    const-string v5, "response-cache-control"

    const-string v6, "Cache-Control"

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CACHE_CONTROL:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const-string v5, "RESPONSE_EXPIRES"

    const/4 v6, 0x2

    const-string v7, "response-expires"

    const-string v8, "Expires"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_EXPIRES:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const-string v7, "RESPONSE_CONTENT_ENCODING"

    const/4 v8, 0x3

    const-string v9, "response-content-encoding"

    const-string v10, "Content-Encoding"

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_ENCODING:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const-string v9, "RESPONSE_CONTENT_DISPOSITION"

    const/4 v10, 0x4

    const-string v11, "response-content-disposition"

    const-string v12, "Content-Disposition"

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->RESPONSE_CONTENT_DISPOSITION:Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/RequestParameter;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/RequestParameter;

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
