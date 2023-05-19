.class public final enum Lcom/shanlitech/et/notice/event/LocationEvent$Type;
.super Ljava/lang/Enum;
.source "LocationEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/LocationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/LocationEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum ERROR:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SHARE_MEMBER_LOCATION:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SHARE_MEMBER_STARTED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SHARE_MEMBER_STOPED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SHARE_STARTED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SHARE_STOPED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

.field public static final enum SINGLE:Lcom/shanlitech/et/notice/event/LocationEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SINGLE:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v1, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v3, "SHARE_MEMBER_STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_STARTED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v3, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v5, "SHARE_MEMBER_STOPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_STOPED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v5, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v7, "SHARE_MEMBER_LOCATION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_MEMBER_LOCATION:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v7, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v9, "SHARE_STARTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_STARTED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v9, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v11, "SHARE_STOPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->SHARE_STOPED:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    new-instance v11, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/shanlitech/et/notice/event/LocationEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->ERROR:Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 2
    sput-object v13, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->$VALUES:[Lcom/shanlitech/et/notice/event/LocationEvent$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/LocationEvent$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/LocationEvent$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/LocationEvent$Type;->$VALUES:[Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/LocationEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/LocationEvent$Type;

    return-object v0
.end method
