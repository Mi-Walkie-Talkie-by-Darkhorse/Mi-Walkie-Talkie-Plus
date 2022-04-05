.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
.super Ljava/lang/Enum;


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
    .locals 8

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "READ"

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v3, 0x2

    const-string v4, "WRITE"

    invoke-direct {v0, v4, v2, v3}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v4, 0x4

    const-string v5, "READ_OBJECTS"

    invoke-direct {v0, v5, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v5, 0x3

    const-string v6, "SSO_WRITE"

    const/16 v7, 0x8

    invoke-direct {v0, v6, v5, v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const-string v6, "FULL_CONTROL"

    const/16 v7, 0xff

    invoke-direct {v0, v6, v4, v7}, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->FULL_CONTROL:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    sget-object v7, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    aput-object v7, v6, v1

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    aput-object v1, v6, v2

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->READ_OBJECTS:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    aput-object v1, v6, v3

    sget-object v1, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->SSO_WRITE:Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    aput-object v1, v6, v5

    aput-object v0, v6, v4

    sput-object v6, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/AccessControlList$Permission;->value:I

    return v0
.end method
