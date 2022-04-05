.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

.field public static final enum DELETE:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

.field public static final enum GET:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

.field public static final enum HEAD:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

.field public static final enum POST:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

.field public static final enum PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v1, 0x0

    const-string v2, "GET"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->GET:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v2, 0x1

    const-string v3, "HEAD"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->HEAD:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v3, 0x2

    const-string v4, "PUT"

    invoke-direct {v0, v4, v3}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v4, 0x3

    const-string v5, "POST"

    invoke-direct {v0, v5, v4}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v5, 0x4

    const-string v6, "DELETE"

    invoke-direct {v0, v6, v5}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->DELETE:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    sget-object v7, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->GET:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    aput-object v7, v6, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->HEAD:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
    .locals 1

    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-object v0
.end method
