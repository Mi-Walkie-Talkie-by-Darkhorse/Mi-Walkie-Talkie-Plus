.class public final enum Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;
.super Ljava/lang/Enum;
.source "NearbyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/event/NearbyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

.field public static final enum QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

.field public static final enum QUERY_SUCCESS:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const-string v1, "QUERY_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_SUCCESS:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    new-instance v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const-string v1, "QUERY_FAILED"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    sget-object v1, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_SUCCESS:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->QUERY_FAILED:Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->$VALUES:[Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/NearbyEvent$Event;

    return-object v0
.end method
