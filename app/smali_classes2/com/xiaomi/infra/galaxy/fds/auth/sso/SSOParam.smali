.class public final enum Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;
.super Ljava/lang/Enum;
.source "SSOParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

.field public static final enum APP_ID:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

.field public static final enum SERVICE_TOKEN:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

.field public static final enum SID:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    const-string v1, "SERVICE_TOKEN"

    const/4 v2, 0x0

    const-string v3, "serviceToken"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->SERVICE_TOKEN:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    const-string v3, "SID"

    const/4 v4, 0x1

    const-string v5, "sid"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->SID:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    const-string v5, "APP_ID"

    const/4 v6, 0x2

    const-string v7, "appId"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->APP_ID:Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

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
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/auth/sso/SSOParam;->name:Ljava/lang/String;

    return-object v0
.end method
