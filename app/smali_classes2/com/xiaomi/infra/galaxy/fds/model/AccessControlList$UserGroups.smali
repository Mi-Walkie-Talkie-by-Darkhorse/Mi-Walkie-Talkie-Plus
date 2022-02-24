.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;
.super Ljava/lang/Enum;
.source "AccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserGroups"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

.field public static final enum ALL_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

.field public static final enum AUTHENTICATED_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    const/4 v1, 0x0

    const-string v2, "ALL_USERS"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->ALL_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    .line 2
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    const/4 v2, 0x1

    const-string v3, "AUTHENTICATED_USERS"

    invoke-direct {v0, v3, v2}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->AUTHENTICATED_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    .line 3
    sget-object v4, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->ALL_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    return-object v0
.end method
