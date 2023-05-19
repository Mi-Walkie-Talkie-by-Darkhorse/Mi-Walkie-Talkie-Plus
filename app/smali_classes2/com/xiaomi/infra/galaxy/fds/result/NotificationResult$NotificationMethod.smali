.class public final enum Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;
.super Ljava/lang/Enum;
.source "NotificationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

.field public static final enum DELETE:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

.field public static final enum POST:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

.field public static final enum PUT:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    const-string v1, "PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->PUT:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->POST:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->DELETE:Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/result/NotificationResult$NotificationMethod;

    return-object v0
.end method
