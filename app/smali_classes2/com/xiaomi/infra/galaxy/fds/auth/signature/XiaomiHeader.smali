.class public final enum Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;
.super Ljava/lang/Enum;
.source "XiaomiHeader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum ACL:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum ACL_META:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum CONTENT_LENGTH:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum DATE:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum MD5_ATTACHED_STREAM:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

.field public static final enum REQUEST_ID:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v1, "DATE"

    const/4 v2, 0x0

    const-string v3, "x-xiaomi-date"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->DATE:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v3, "REQUEST_ID"

    const/4 v4, 0x1

    const-string v5, "x-xiaomi-request-id"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->REQUEST_ID:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v5, "ACL"

    const/4 v6, 0x2

    const-string v7, "x-xiaomi-acl"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v7, "ACL_META"

    const/4 v8, 0x3

    const-string v9, "x-xiaomi-meta-acl"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL_META:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v9, "CONTENT_LENGTH"

    const/4 v10, 0x4

    const-string v11, "x-xiaomi-meta-content-length"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->CONTENT_LENGTH:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 6
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const-string v11, "MD5_ATTACHED_STREAM"

    const/4 v12, 0x5

    const-string v13, "x-xiaomi-meta-md5-attached-stream"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->MD5_ATTACHED_STREAM:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->name:Ljava/lang/String;

    return-object v0
.end method
