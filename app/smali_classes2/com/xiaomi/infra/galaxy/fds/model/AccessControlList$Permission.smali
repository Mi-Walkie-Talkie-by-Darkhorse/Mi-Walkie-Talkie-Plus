.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
.super Ljava/lang/Enum;
.source "AccessControlList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field public static final enum FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field public static final enum READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field public static final enum READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field public static final enum SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

.field public static final enum WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v1, "READ"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v4, "WRITE"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 3
    new-instance v4, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v6, "READ_OBJECTS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v5, v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 4
    new-instance v6, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v8, "SSO_WRITE"

    const/4 v9, 0x3

    const/16 v10, 0x8

    invoke-direct {v6, v8, v9, v10}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    .line 5
    new-instance v8, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v10, "FULL_CONTROL"

    const/16 v11, 0xff

    invoke-direct {v8, v10, v7, v11}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v9

    aput-object v8, v10, v7

    .line 6
    sput-object v10, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->value:I

    return v0
.end method
