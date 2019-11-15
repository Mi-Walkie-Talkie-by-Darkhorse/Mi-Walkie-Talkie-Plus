.class public final enum Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/video/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

.field public static final enum CAMERA:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

.field public static final enum READ_CONTACTS:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

.field public static final enum RECORD_AUDIO:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

.field public static final enum SYSTEM_ALERT_WINDOW:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v2}, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->CAMERA:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    new-instance v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    const-string v1, "READ_CONTACTS"

    invoke-direct {v0, v1, v3}, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->READ_CONTACTS:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    new-instance v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    const-string v1, "RECORD_AUDIO"

    invoke-direct {v0, v1, v4}, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->RECORD_AUDIO:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    new-instance v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    const-string v1, "SYSTEM_ALERT_WINDOW"

    invoke-direct {v0, v1, v5}, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->SYSTEM_ALERT_WINDOW:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    sget-object v1, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->CAMERA:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->READ_CONTACTS:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->RECORD_AUDIO:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->SYSTEM_ALERT_WINDOW:Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->$VALUES:[Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->$VALUES:[Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/video/PermissionManager$PermissionType;

    return-object v0
.end method
