.class public final enum Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;
.super Ljava/lang/Enum;
.source "CannedAcl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum AUTHENTICATED_READ:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum AUTHENTICATED_READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum AUTHENTICATED_SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum AUTHENTICATED_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum PUBLIC_READ:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum PUBLIC_READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum PUBLIC_SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

.field public static final enum PUBLIC_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;


# instance fields
.field private final group:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

.field private final permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->ALL_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    sget-object v2, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v3, "PUBLIC_READ"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->PUBLIC_READ:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 2
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    sget-object v5, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v6, "PUBLIC_WRITE"

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7, v1, v5}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->PUBLIC_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 3
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    sget-object v8, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v9, "PUBLIC_READ_OBJECTS"

    const/4 v10, 0x2

    invoke-direct {v6, v9, v10, v1, v8}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->PUBLIC_READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 4
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    sget-object v11, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v12, "PUBLIC_SSO_WRITE"

    const/4 v13, 0x3

    invoke-direct {v9, v12, v13, v1, v11}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->PUBLIC_SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 5
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    sget-object v12, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;->AUTHENTICATED_USERS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    const-string v14, "AUTHENTICATED_READ"

    const/4 v15, 0x4

    invoke-direct {v1, v14, v15, v12, v2}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->AUTHENTICATED_READ:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 6
    new-instance v2, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    const-string v14, "AUTHENTICATED_WRITE"

    const/4 v15, 0x5

    invoke-direct {v2, v14, v15, v12, v5}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->AUTHENTICATED_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 7
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    const-string v14, "AUTHENTICATED_READ_OBJECTS"

    const/4 v15, 0x6

    invoke-direct {v5, v14, v15, v12, v8}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->AUTHENTICATED_READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    .line 8
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    const-string v14, "AUTHENTICATED_SSO_WRITE"

    const/4 v15, 0x7

    invoke-direct {v8, v14, v15, v12, v11}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;-><init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->AUTHENTICATED_SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    const/16 v11, 0x8

    new-array v11, v11, [Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    aput-object v0, v11, v4

    aput-object v3, v11, v7

    aput-object v6, v11, v10

    aput-object v9, v11, v13

    const/4 v0, 0x4

    aput-object v1, v11, v0

    const/4 v0, 0x5

    aput-object v2, v11, v0

    const/4 v0, 0x6

    aput-object v5, v11, v0

    aput-object v8, v11, v15

    .line 9
    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->group:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    .line 3
    iput-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-void
.end method

.method public static parseFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;",
            ">;"
        }
    .end annotation

    const-string v0, ","

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->getGrant()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;

    return-object v0
.end method


# virtual methods
.method public getGrant()Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;
    .locals 4

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->group:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$UserGroups;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/acl/CannedAcl;->permission:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    sget-object v3, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;->GROUP:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Grant;-><init>(Ljava/lang/String;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$GrantType;)V

    return-object v0
.end method
