.class public final enum Lcom/shanlitech/et/model/UserConfigure$Type;
.super Ljava/lang/Enum;
.source "UserConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/model/UserConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/model/UserConfigure$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum AUDIO_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum AUTO_ANSWER:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum BROADCAST_SEND_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum DEFAULT_GROUP:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum DEVICE_REPORT:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum INVITED_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum INVITE_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum LOCATION_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum LOCATION_PERIOD:Lcom/shanlitech/et/model/UserConfigure$Type;

.field public static final enum VIDEO_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v1, "AUTO_ANSWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/model/UserConfigure$Type;->AUTO_ANSWER:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v1, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v3, "LOCATION_ENABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/model/UserConfigure$Type;->LOCATION_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v3, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v5, "LOCATION_PERIOD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/model/UserConfigure$Type;->LOCATION_PERIOD:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v5, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v7, "DEFAULT_GROUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/model/UserConfigure$Type;->DEFAULT_GROUP:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v7, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v9, "BROADCAST_SEND_ENABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/model/UserConfigure$Type;->BROADCAST_SEND_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v9, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v11, "AUDIO_ENABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/model/UserConfigure$Type;->AUDIO_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v11, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v13, "INVITE_ENABLE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shanlitech/et/model/UserConfigure$Type;->INVITE_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v13, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v15, "INVITED_ENABLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/shanlitech/et/model/UserConfigure$Type;->INVITED_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v15, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v14, "DEVICE_REPORT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/shanlitech/et/model/UserConfigure$Type;->DEVICE_REPORT:Lcom/shanlitech/et/model/UserConfigure$Type;

    new-instance v14, Lcom/shanlitech/et/model/UserConfigure$Type;

    const-string v12, "VIDEO_ENABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/shanlitech/et/model/UserConfigure$Type;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/shanlitech/et/model/UserConfigure$Type;->VIDEO_ENABLE:Lcom/shanlitech/et/model/UserConfigure$Type;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/shanlitech/et/model/UserConfigure$Type;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 2
    sput-object v12, Lcom/shanlitech/et/model/UserConfigure$Type;->$VALUES:[Lcom/shanlitech/et/model/UserConfigure$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/model/UserConfigure$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/model/UserConfigure$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/model/UserConfigure$Type;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/model/UserConfigure$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/model/UserConfigure$Type;->$VALUES:[Lcom/shanlitech/et/model/UserConfigure$Type;

    invoke-virtual {v0}, [Lcom/shanlitech/et/model/UserConfigure$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/model/UserConfigure$Type;

    return-object v0
.end method
