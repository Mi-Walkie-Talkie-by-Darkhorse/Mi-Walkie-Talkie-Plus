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
    .locals 9

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v1, 0x0

    const-string v2, "DATE"

    const-string v3, "x-xiaomi-date"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->DATE:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 2
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v2, 0x1

    const-string v3, "REQUEST_ID"

    const-string v4, "x-xiaomi-request-id"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->REQUEST_ID:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 3
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v3, 0x2

    const-string v4, "ACL"

    const-string v5, "x-xiaomi-acl"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 4
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v4, 0x3

    const-string v5, "ACL_META"

    const-string v6, "x-xiaomi-meta-acl"

    invoke-direct {v0, v5, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL_META:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v5, 0x4

    const-string v6, "CONTENT_LENGTH"

    const-string v7, "x-xiaomi-meta-content-length"

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->CONTENT_LENGTH:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 6
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v6, 0x5

    const-string v7, "MD5_ATTACHED_STREAM"

    const-string v8, "x-xiaomi-meta-md5-attached-stream"

    invoke-direct {v0, v7, v6, v8}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->MD5_ATTACHED_STREAM:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    .line 7
    sget-object v8, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->DATE:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v8, v7, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->REQUEST_ID:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v1, v7, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v1, v7, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->ACL_META:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v1, v7, v4

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->CONTENT_LENGTH:Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/XiaomiHeader;

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
