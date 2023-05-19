.class public final enum Lcom/shanlitech/et/notice/event/GroupEvent$EventType;
.super Ljava/lang/Enum;
.source "GroupEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/GroupEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shanlitech/et/notice/event/GroupEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

.field public static final enum ADD:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

.field public static final enum CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

.field public static final enum LEAVE:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    const-string v1, "CURRENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->CURRENT:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    new-instance v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    const-string v3, "ADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->ADD:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    new-instance v3, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    const-string v5, "LEAVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->LEAVE:Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->$VALUES:[Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shanlitech/et/notice/event/GroupEvent$EventType;
    .locals 1

    .line 1
    const-class v0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/shanlitech/et/notice/event/GroupEvent$EventType;
    .locals 1

    .line 1
    sget-object v0, Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->$VALUES:[Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    invoke-virtual {v0}, [Lcom/shanlitech/et/notice/event/GroupEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shanlitech/et/notice/event/GroupEvent$EventType;

    return-object v0
.end method
