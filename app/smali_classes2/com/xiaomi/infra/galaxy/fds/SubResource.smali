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
    .locals 10

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v1, 0x0

    const-string v2, "ACL"

    const-string v3, "acl"

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->ACL:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 2
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v2, 0x1

    const-string v3, "QUOTA"

    const-string v4, "quota"

    invoke-direct {v0, v3, v2, v4}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->QUOTA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 3
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v3, 0x2

    const-string v4, "UPLOADS"

    const-string v5, "uploads"

    invoke-direct {v0, v4, v3, v5}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOADS:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 4
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v4, 0x3

    const-string v5, "PART_NUMBER"

    const-string v6, "partNumber"

    invoke-direct {v0, v5, v4, v6}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->PART_NUMBER:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 5
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v5, 0x4

    const-string v6, "UPLOAD_ID"

    const-string v7, "uploadId"

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOAD_ID:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 6
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v6, 0x5

    const-string v7, "STORAGE_ACCESS_TOKEN"

    const-string v8, "storageAccessToken"

    invoke-direct {v0, v7, v6, v8}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->STORAGE_ACCESS_TOKEN:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 7
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v7, 0x6

    const-string v8, "METADATA"

    const-string v9, "metadata"

    invoke-direct {v0, v8, v7, v9}, Lcom/xiaomi/infra/galaxy/fds/SubResource;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/SubResource;->METADATA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/xiaomi/infra/galaxy/fds/SubResource;

    .line 8
    sget-object v9, Lcom/xiaomi/infra/galaxy/fds/SubResource;->ACL:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v9, v8, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->QUOTA:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v1, v8, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOADS:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v1, v8, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->PART_NUMBER:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v1, v8, v4

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->UPLOAD_ID:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v1, v8, v5

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/SubResource;->STORAGE_ACCESS_TOKEN:Lcom/xiaomi/infra/galaxy/fds/SubResource;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/SubResource;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/SubResource;

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
