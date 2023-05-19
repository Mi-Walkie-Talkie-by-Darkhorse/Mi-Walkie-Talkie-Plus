.class public final enum Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
.super Ljava/lang/Enum;
.source "GroupSessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/GroupSessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ERROR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum BUSY:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum IGNORE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum INVITE_DISABLE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum NONE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum NOT_SUPPORT:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

.field public static final enum OFFLINE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->NONE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v3, "NOT_SUPPORT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->NOT_SUPPORT:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    new-instance v3, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v5, "OFFLINE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->OFFLINE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    new-instance v5, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v7, "BUSY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->BUSY:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    new-instance v7, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v9, "IGNORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->IGNORE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    new-instance v9, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const-string v11, "INVITE_DISABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->INVITE_DISABLE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->$VALUES:[Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

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

.method static synthetic access$000(I)Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->build(I)Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    move-result-object p0

    return-object p0
.end method

.method private static build(I)Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->NONE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->INVITE_DISABLE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->IGNORE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->BUSY:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->OFFLINE:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0

    .line 6
    :cond_4
    sget-object p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->NOT_SUPPORT:Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->$VALUES:[Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/GroupSessionEvent$ERROR;

    return-object v0
.end method
