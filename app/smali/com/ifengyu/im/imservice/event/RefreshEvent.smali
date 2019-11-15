.class public final enum Lcom/ifengyu/im/imservice/event/RefreshEvent;
.super Ljava/lang/Enum;
.source "RefreshEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/imservice/event/RefreshEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/imservice/event/RefreshEvent;

.field public static final enum REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

.field public static final enum REFRESH_NEARBY_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

.field public static final enum REFRESH_RECENT_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;

    const-string v1, "REFRESH_LIST"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/im/imservice/event/RefreshEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;

    const-string v1, "REFRESH_RECENT_LIST"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/im/imservice/event/RefreshEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_RECENT_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    new-instance v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;

    const-string v1, "REFRESH_NEARBY_LIST"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/im/imservice/event/RefreshEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_NEARBY_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ifengyu/im/imservice/event/RefreshEvent;

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_RECENT_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/im/imservice/event/RefreshEvent;->REFRESH_NEARBY_LIST:Lcom/ifengyu/im/imservice/event/RefreshEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/RefreshEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/imservice/event/RefreshEvent;
    .locals 1

    const-class v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/imservice/event/RefreshEvent;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/imservice/event/RefreshEvent;->$VALUES:[Lcom/ifengyu/im/imservice/event/RefreshEvent;

    invoke-virtual {v0}, [Lcom/ifengyu/im/imservice/event/RefreshEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/imservice/event/RefreshEvent;

    return-object v0
.end method
