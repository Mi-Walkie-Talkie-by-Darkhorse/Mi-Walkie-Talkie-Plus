.class public final enum Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;
.super Ljava/lang/Enum;
.source "SignAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

.field public static final enum HmacMD5:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

.field public static final enum HmacSHA1:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

.field public static final enum HmacSHA256:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    const-string v1, "HmacMD5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->HmacMD5:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    const-string v3, "HmacSHA1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->HmacSHA1:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    const-string v5, "HmacSHA256"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->HmacSHA256:Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/auth/signature/SignAlgorithm;

    return-object v0
.end method
