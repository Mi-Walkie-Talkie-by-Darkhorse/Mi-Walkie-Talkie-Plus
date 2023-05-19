.class public final enum Lcom/xiaomi/infra/galaxy/fds/SubResource;
.super Ljava/lang/Enum;
.source "SubResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/SubResource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum ACL:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum METADATA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum PART_NUMBER:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum QUOTA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum STORAGE_ACCESS_TOKEN:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum UPLOADS:Lcom/xiaomi/infra/galaxy/fds/SubResource;

.field public static final enum UPLOAD_ID:Lcom/xiaomi/infra/galaxy/fds/SubResource;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v1, "ACL"

    const/4 v2, 0x0

    const-string v3, "acl"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->ACL:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v3, "QUOTA"

    const/4 v4, 0x1

    const-string v5, "quota"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->QUOTA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v5, "UPLOADS"

    const/4 v6, 0x2

    const-string v7, "uploads"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOADS:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 4
    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v7, "PART_NUMBER"

    const/4 v8, 0x3

    const-string v9, "partNumber"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/SubResource;->PART_NUMBER:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 5
    new-instance v7, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v9, "UPLOAD_ID"

    const/4 v10, 0x4

    const-string v11, "uploadId"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOAD_ID:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 6
    new-instance v9, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v11, "STORAGE_ACCESS_TOKEN"

    const/4 v12, 0x5

    const-string v13, "storageAccessToken"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaomi/infra/galaxy/fds/SubResource;->STORAGE_ACCESS_TOKEN:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 7
    new-instance v11, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const-string v13, "METADATA"

    const/4 v14, 0x6

    const-string v15, "metadata"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaomi/infra/galaxy/fds/SubResource;->METADATA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lcom/xiaomi/infra/galaxy/fds/SubResource;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/SubResource;

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
    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/SubResource;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/SubResource;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/SubResource;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/SubResource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/SubResource;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->name:Ljava/lang/String;

    return-object v0
.end method
