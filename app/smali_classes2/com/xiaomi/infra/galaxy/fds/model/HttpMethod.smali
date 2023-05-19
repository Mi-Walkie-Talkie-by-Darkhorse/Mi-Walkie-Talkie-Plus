.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


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
    .locals 11

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->GET:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->HEAD:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const-string v7, "POST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->DELETE:Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/HttpMethod;

    return-object v0
.end method
